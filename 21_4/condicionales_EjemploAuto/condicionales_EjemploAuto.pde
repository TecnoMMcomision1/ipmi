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

//Paisaje
float posXNube;
float posYNube;

int altoNube;
int anchoNube;

int velNube;

//Camino

int posXRuta;
int posYRuta;

int velRuta;

int tamXRuta;
int tamYRuta;

void setup() {
  size(400, 400);
  posXAuto=width/2;
  posYAuto=width/2;
  tamXAuto=150;
  tamYAuto=75;
  tamRueda=40;
  velAuto=2;
  velNube=-velAuto;
  posXNube=100;
  posYNube=100;
  anchoNube=100;
  altoNube=50;
  
  posXRuta=0;
  posYRuta= height/2;
  
  tamYRuta=height/2;
  tamXRuta=width*2;
}

void draw() {
  background(0, 200, 247);
  //CARROCERIA
  fill(255,0,0);
  if(posXAuto>=width){
    posXAuto=-tamXAuto;
  }
  posXAuto=posXAuto+velAuto;
  rect(posXAuto, posYAuto, tamXAuto, tamYAuto);
  //Rueda Izquierda
  fill(0);
  posXRueda=posXAuto;
  posYRueda=posYAuto+tamYAuto;
  circle(posXRueda, posYRueda, tamRueda);
  //Rueda Derecha
  posXRuedaD=posXAuto+tamXAuto;
  posYRuedaD=posYAuto+tamYAuto;
  circle(posXRuedaD,posYRuedaD,tamRueda);
  //Nubes 
  fill(255);
  if(posXNube<=0-anchoNube/2){
  posXNube=width+anchoNube/2;}
  posXNube=posXNube+velNube;
  ellipse(posXNube,posYNube,anchoNube,altoNube);
  
  
}
