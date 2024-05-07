
void setup() {
  size(500, 500);
  background(0);
}
void draw() {
  stroke(0, 255, 0);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
