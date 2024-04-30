int posicionY; // declaración variable entera
float unNumeroFlotante;

void setup() {
  size(400, 400);
  posicionY = 155; // asignación
}
void draw() {
  background(0);
  rect(50, posicionY, 50, 50);
  posicionY = posicionY +1;
}
