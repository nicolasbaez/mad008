float w=512/4;
float wMin=w/2;
float k=0;
void setup() {
  size(512, 256);
  noStroke();
  fill(0);
}
void draw() {
  background(255);
  for (int i=0; i<=width; i+=w) {
    for (int j=0; j<=height; j+=w) {
      float v1=random(map(sin(radians(k)), -1, 1, 2, wMin));
      float v2=random(map(sin(radians(k)), -1, 1, 2, wMin));
      float v3=random(map(sin(radians(k)), -1, 1, 2, wMin));
      float v4=random(map(sin(radians(k)), -1, 1, 2, wMin));
      beginShape();
      vertex(i+v1, j+v1);
      vertex(i+w-v2, j+v2);
      vertex(i+w-v3, j+w-v3);
      vertex(i+v4, j+w-v4);
      endShape();
    }
  }
  k++;
  if (k<=360*4) {
    saveFrame("gif/mad008-######.png");
  }
}
