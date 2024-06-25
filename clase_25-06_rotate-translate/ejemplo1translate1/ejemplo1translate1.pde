void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  push();
  translate(width/2, height/2);
  rotate(radians(frameCount));
  rectMode(CENTER);
  rect(0, 0, 100, 100);
  ellipse(0, 125, 100, 100);
  pop();
}
