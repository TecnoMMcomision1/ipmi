//Ejemplo funcion con parametros
//Posicion Carroceria
float posXAuto;
float posYAuto;
//Posicion rueda izquierda

float posXRueda;
float posYRueda;
//Posicion rueda derecha

float posXRuedaD;
float posYRuedaD;
//Tam de la carroceria
int tamXAuto;
int tamYAuto;

//Tam de la rueda
int tamRueda;
int velAuto;
color colorAuto;
void setup() {
  size(400, 400);
  posXAuto=width/2;
  posYAuto=width/2;
  tamXAuto=150;
  tamYAuto=75;
  tamRueda=40;
  velAuto=2;
  colorAuto=color(255,0,0);
}

void draw() {
  background(255);
  dibujarAuto(posXAuto, posYAuto, tamXAuto, tamYAuto,colorAuto);
}

void dibujarAuto(float posX, float posY, int tamX, int tamY, color colorAuto) {
  push();
  fill(colorAuto);
  rect(posX, posY, tamX, tamY);
  dibujarRueda(posX, posY+tamY, tamRueda);
  dibujarRueda(posX+tamX, posY+tamY, tamRueda);
  pop();
}

void dibujarRueda(float posX, float posY, int tamRueda) {

  fill(0);
  circle(posX, posY, tamRueda);
}
