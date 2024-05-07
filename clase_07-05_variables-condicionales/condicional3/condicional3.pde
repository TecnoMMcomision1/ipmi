float  ubicX, ubicY;
int cuenta;
void setup() {
  size(500, 500);
  background(0);
}
void draw() {
  ubicX = random(width);
  ubicY = random(100, 400);
  stroke(0, 255, 0);
  noFill();
  if (cuenta<100) {
    ellipse(ubicX, ubicY, 50, 50);
    cuenta = cuenta+1;
  }

  println(cuenta);
  fill(0, 0, 255);
  rect(400, 0, 100, 50);
}
void mousePressed() {
  if (mouseX >=400 && mouseX<=width && mouseY>=0 && mouseY<= 50 ) {
    background(0);
    cuenta = 0;
  }
}
