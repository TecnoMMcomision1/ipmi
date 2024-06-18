

void setup() {
  size(500, 500);
}
void draw() {
  background(255);


  for (int l=0; l<=width; l++) {
    float borde = map(l, 0, width, 0, 255);
    stroke(borde);
    line(l, 0, l, height/2);
  }
  for (int l=0; l<=mouseX; l++) {
    float borde = map(l, 0, width, 255, 0);
    stroke(borde);
    line(l, 250, l, height);
  }
}
