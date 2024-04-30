/* operadores matemáticos
 + suma
 - resta
 / división
 * multiplicación
 
 */
int diametro;
int mX, mY;
void setup() {
  size(600, 500);
  diametro = width;
  mX = 160;
  mY = 300;
}
void draw() {
  background(0);

  fill(255);
  ellipse(mX, mY, diametro, diametro);

  diametro = diametro - 1;
}
void mousePressed() {
  diametro = width;
  mX = mouseX;
  mY = mouseY;
}
