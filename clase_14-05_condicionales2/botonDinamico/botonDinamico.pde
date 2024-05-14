int x, y, ancho, alto;
color relleno;
void setup() {
  size(500, 500);
  x = 100;
  y = 80;
  ancho = 120;
  alto = 50;
  relleno = color(0, 0, 255);
}
void draw() {
  background(255);
  fill(relleno);
  rect(x, y, ancho, alto);
  x++;
  if (x > width) {
    x = -ancho;
  }
}
void mousePressed() {
  if (mouseX>= x && mouseX< x+ancho && mouseY>y && mouseY< y+alto) {
    relleno = color(255, 0, 0);
  }
}
void keyPressed() {
  if (key=='v' || key=='V') {
    relleno = color(0, 255, 0);
  }
}
