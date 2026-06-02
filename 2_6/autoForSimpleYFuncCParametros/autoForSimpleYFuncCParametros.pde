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

int cantidadDeAutos;
void setup() {
  size(800, 400);

  posXAuto=0;
  posYAuto=height/2;
  tamYAuto=75;
  tamRueda=40;
  velAuto=2;
  cantidadDeAutos=5;
  tamXAuto=width/cantidadDeAutos;
}

void draw() {
  background(255);
  for (int i=0; i<cantidadDeAutos; i++ ) {
    dibujarAuto(posXAuto + tamXAuto * i, posYAuto, tamXAuto, tamYAuto, velAuto);
  }
}

void dibujarAuto(float posX, float posY, int ancho, int alto, int vel) {
  fill(255, 0, 0);
  rect(posX, posY, ancho, alto);
  dibujarRueda(posX, posY+alto);
  dibujarRueda(posX+ancho, posY+alto);
}

void dibujarRueda(float posX, float posY) {
  fill(0);
  circle(posX, posY, 40);
}
