
void setup() {
  size(600, 500);
  background(0);
}
void draw() {
  stroke(0, 255, 0);
  noFill();
  if (mouseX <= 200 || mouseX>400) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  } else {
    ellipse(mouseX, mouseY, 40, 40);
  }
}
