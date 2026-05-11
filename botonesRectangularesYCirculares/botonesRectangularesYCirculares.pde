/*Hola estimadxs Alumnxs, a continuacion van a encontrar el codigo para hacer dos tipos de botones, circulares y rectangulares
 recomiendo la utilizacion de botones rectangulares ya que son mas personalizables, incluso pueden poner imagenes y usarlas como
 botones ya que se comportan como rectangulos.
 */


int tamBotonD;

float posXBotonD;
float posYBotonD;

float distBotonD;
boolean botonDActivado; // Variable de tipo booleana, toma solos dos valores, true o false, me sirve para que el boton haga una accion
//y esta se mantenga aun cuando se haya soltado el mouse, el valor predeterminado es false

//Boton izquierda
int tamXBotonI;
int tamYBotonI;

float posXBotonI;
float posYBotonI;

boolean botonIActivado; //

PFont miFuente;

float posXTexto;

void setup() {
  size(400, 400);
  miFuente= loadFont("Impact-48.vlw");
  textFont(miFuente);
  //Boton derecho

  posXBotonD=width - width/3;
  posYBotonD = height - height/5;
  tamBotonD= 60;

  //Boton izquierdo

  tamXBotonI= 100;
  tamYBotonI=60;
  posXBotonI= width/3 - tamXBotonI/2;
  posYBotonI = height - height/5 - tamYBotonI/2;
}

void draw() {
  background(120);

  distBotonD= dist(mouseX, mouseY, posXBotonD, posYBotonD); //Funcion dist(): me permite medir la distancia entre dos puntos, me sirve para hacer botones circulares.
  // Botones
  if (distBotonD<tamBotonD/2) {
    fill(0, 255, 0);
  } else {
    fill(0, 0, 255);
  }
  circle(posXBotonD, posYBotonD, tamBotonD); //Dibujo mi boton circular


  if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI && mouseY < posYBotonI + tamYBotonI) { //Aca delimito el area del boton, la accion va a suceder mientras este clickeando dentro de el rectangulo, como la imagen funciona como un rectangulo, este tipo de botones es muy util para personalizar
    fill(0, 255, 0);
  } else {
    fill(0, 0, 255);
  }

  rect(posXBotonI, posYBotonI, tamXBotonI, tamYBotonI); //dibujo mi boton rectangular

  fill(0, 255, 0);

  if (botonIActivado==true) {

    text("Hola comi 1", posXTexto, height/2);
  }

  if (botonDActivado==true && botonIActivado==true) {
    posXTexto++;
  }
}

void mousePressed() {
  if (distBotonD<tamBotonD/2) {
    botonDActivado=true; //Cuando presiono el boton pasa a true, lo que hace que el texto se mueva, aun sin mantenerlo apretado
  }

  if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI && mouseY < posYBotonI + tamYBotonI) {

    botonIActivado=true; // idem que con el movimiento pero aparece el texto
  }
}
