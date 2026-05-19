/*Ejemplo 19-5
 */



//Boton izquierda
int tamXBotonI;
int tamYBotonI;

float posXBotonI;
float posYBotonI;

boolean botonIActivado; //
PImage miImagen;
float posXImagen, posYImagen, tamXImagen, tamYImagen;
float opacidad;

PFont miFuente;
float posXTexto;
float posYTexto;
float tamTexto;
int estado;
int contador;
float tamXRect, tamYRect;
float posXRect, posYRect;
void setup() {
  size(400, 400);
  miImagen=loadImage("elPadrino.jpg");
  miFuente= loadFont("Arial-Black-48.vlw");
  tamTexto=20;
  posXTexto=width/2;
  posYTexto=height/2;
  textFont(miFuente);
  //Boton izquierdo
  estado=1;
  tamXBotonI= 100;
  tamYBotonI=60;
  posXBotonI= width/2 - tamXBotonI/2;
  posYBotonI = height - height/5 - tamYBotonI/2;
  contador=0;
  posXRect=0;
  posYRect=0;
  tamXRect=0;
  tamYRect=height;
  opacidad=0;
  textAlign(CENTER,CENTER);
}

void draw() {
  background(120);

  if (estado==1) {

    if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI && mouseY < posYBotonI + tamYBotonI) { //Aca delimito el area del boton, la accion va a suceder mientras este clickeando dentro de el rectangulo, como la imagen funciona como un rectangulo, este tipo de botones es muy util para personalizar
      fill(0, 255, 0);
    } else {
      fill(0, 0, 255);
    }
    if (botonIActivado) {
      contador++;
      if (contador>0 && contador<50) {
        opacidad=map(contador, 0, 50, 0, 255);
      }
      if (contador>50) {
        contador=0;
        estado=2;
      }
    }
    tint(255, opacidad);
    image(miImagen, 0, 0, width, height);
    if (botonIActivado==false) {
      rect(posXBotonI, posYBotonI, tamXBotonI, tamYBotonI); //dibujo mi boton rectangular
    }
  }

  if (estado==2) {
    botonIActivado=false;
    contador++;

    fill(255);
    textSize(tamTexto);
    if (contador<50) {
      posXTexto=width/2;
    } else if (contador>50 && contador<100) {
      posXTexto=map(contador, 50, 100, width/2, width+200);
    }
    if (contador>100 && contador<200) {
      fill(255, 0, 0);
      tamXRect=map(contador, 100, 200, 0, width);
      rect(posXRect, posYRect, tamXRect, tamYRect);
    }
    if (contador>200) {
      estado=3;
      contador=0;
    }
    text("Estado 2\nhola", posXTexto, posYTexto);
  }
  if (estado==3) {
    posXTexto=width/2;
    fill(255);
    text("Estado 3", posXTexto, posYTexto);
    fill(255, 0, 0);
    rect(posXBotonI, posYBotonI, tamXBotonI, tamYBotonI); //dibujo mi boton rectangular
    if (botonIActivado==true) {
      reiniciar();
    }
  }
}

void mousePressed() {

  if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI && mouseY < posYBotonI + tamYBotonI) {

    botonIActivado=true; // idem que con el movimiento pero aparece el texto
  }
}
