float posXRect, posYRect, posXText, posYText;
int tamXRect, tamYRect, tamText, opacidad, contador, marcaDeTiempo;
float opacidadMapeada;
void setup() {
  size(640, 480);
  posXRect=0;
  posYRect=0;
  tamXRect=0;
  tamYRect=height;
  posXText=-200;
  tamText=16;
  opacidad=255;
  posYText=height+200;
  contador=0;
  opacidadMapeada=0;
  textAlign(CENTER,CENTER);
}

void draw() {
  contador=frameCount-marcaDeTiempo;
  background(0);
  textSize(tamText);
  if (contador<400) {
    if (contador<300) {
      posXText=map(contador, 0, 300, -200, width/2);
    } else if (contador>310 && contador<320) {
      tamText++;
    } else if (contador>320 && contador<400) {
      opacidadMapeada=map(contador, 320, 400, 50, 0);

      fill(255, opacidadMapeada);
    }
    text("Hola como estan\nalumnos de la comi 1", posXText, 100);
  }
  if (contador>420) {
    fill(255);
    if (contador<500) {
      posYText=map(contador, 400, 500, height+200, height/2);
    }
    if (contador>540 && contador<600) {
      posXText=map(contador, 540, 600, width/2, width+250);
    }
    text("Este es un ejemplo de control de tiempo", posXText, posYText);
  }
  if (contador>600) {
    text("Presiona el mouse para reiniciar", width/2, posYText);
  }
}
void mousePressed() {
  reiniciar();
}

void reiniciar() {
  posXRect=0;
  posYRect=0;
  tamXRect=0;
  tamYRect=height;
  posXText=-200;
  tamText=16;
  opacidad=255;
  posYText=height+200;
  contador=0;
  marcaDeTiempo=frameCount;
}
