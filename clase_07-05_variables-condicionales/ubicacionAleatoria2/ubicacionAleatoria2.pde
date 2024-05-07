float  px, py;
void setup() {
  size(500, 500);
  background(0);
}
void draw() {
  px = random(width);
  py = random(height);
  stroke(0, 255, 0);
  line(px-20, py, px+20, py);
  line(px, py-20, px, py+20);
}
