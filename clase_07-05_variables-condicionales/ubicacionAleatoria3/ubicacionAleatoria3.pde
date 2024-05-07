float  ubicX, ubicY;
void setup() {
  size(500, 500);
  background(0);
}
void draw() {
  ubicX = random(width);
  ubicY = random(100, 400);
  stroke(0, 255, 0);
  noFill();
  ellipse(ubicX, ubicY, 50, 50);
}
