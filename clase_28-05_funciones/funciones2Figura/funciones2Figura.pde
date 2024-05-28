

void setup() {
  size(500, 500);
}
void draw() {
  background(255);

  figura();
  rectan();
}
void figura() {
  fill(200, 0, 25);
  rectMode(CENTER);
  rect(250, 250, 200, 200);
  fill(100);
  ellipse(250, 250, 100, 100);
  fill(255);
  ellipse(250, 250, 50, 50);
}
void rectan() {
  fill(0);
  rect(200, 200, 100, 100);
}
