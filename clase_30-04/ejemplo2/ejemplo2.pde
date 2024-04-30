int posX; // declaración variable entera
float unNumeroFlotante;
int ancho;
int tono;
void setup() {
  size(400, 400);
}
void draw() {
  background(135);
  ancho = mouseX;
  tono = mouseY;
  fill(tono, 0, tono);
  
  rect(posX, 200, ancho, 50);
}
