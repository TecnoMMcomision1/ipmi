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

//Boton Derecha
int tamBotonD;

float posXBotonD;
float posYBotonD;

float distBotonD;
boolean botonDActivado;
//Boton izquierda
int tamXBotonI;
int tamYBotonI;

float posXBotonI;
float posYBotonI;

boolean botonIActivado;

void setup() {
  size(400, 400);

  posXAuto=width/2;
  posYAuto=width/3;

  tamXAuto=150;
  tamYAuto=75;
  tamRueda=40;

  velAuto=0;
  velNube=2;

  posXNube=100;
  posYNube=100;
  anchoNube=100;
  altoNube=50;

  posXRuta=0;
  posYRuta= height/2;

  tamYRuta=height/2;
  tamXRuta=width*2;

  //Boton derecha

  posXBotonD=width - width/3;
  posYBotonD = height - height/5;
  tamBotonD= 60;

  //Boton izquierDA

  tamXBotonI= 100;
  tamYBotonI=60;
  posXBotonI= width/3 - tamXBotonI/2;
  posYBotonI = height - height/5 - tamYBotonI/2;
}

void draw() {

  background(0, 200, 247);

  distBotonD= dist(mouseX, mouseY, posXBotonD, posYBotonD);
  // Botones
  if (distBotonD<tamBotonD/2) {
    fill(0, 255, 0);
  } else {
    fill(0, 0, 255);
  }
  circle(posXBotonD, posYBotonD, tamBotonD);


  if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI && mouseY < posYBotonI + tamYBotonI) {
    fill(0, 255, 0);
  }
else{
  fill(0, 0, 255);
}

  rect(posXBotonI, posYBotonI, tamXBotonI, tamYBotonI);

  if (botonDActivado==true) {
    velAuto=2;
  }

  if (botonIActivado==true) {
    velAuto=-2;
  }


  //CARROCERIA

  fill(255, 0, 0);
  if (posXAuto-tamRueda>=width && botonIActivado==false) {
    posXAuto=-tamXAuto;
  }
  if (posXAuto<=0-(tamXAuto+tamRueda) && botonDActivado==false) {
    posXAuto= width+tamXAuto;
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

  circle(posXRuedaD, posYRuedaD, tamRueda);

  //Nubes

  fill(255);

  if (posXNube<=0-anchoNube/2) {
    posXNube=width+anchoNube/2;
  }
  posXNube=posXNube+velNube;
  ellipse(posXNube, posYNube, anchoNube, altoNube);
}

void mousePressed () {
  if (distBotonD<tamBotonD/2) {
    botonDActivado=true;
    botonIActivado=false;
  }

  if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI && mouseY < posYBotonI + tamYBotonI) {

    botonDActivado=false;
    botonIActivado=true;
  }
}
