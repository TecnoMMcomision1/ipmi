PImage sprite[];
int cantImagenes;
int contador;
int velocidad;
float posX, posY;
boolean invertir;
void setup() {
  size(400, 400);
  cantImagenes=12;
  sprite= new PImage[cantImagenes];
  contador=0;
  for (int i=0; i<sprite.length; i++) {
    sprite[i]=loadImage(i+".gif");
  }
  posX=0;
  posY=0;
  velocidad=5;
  invertir=false;
}


void draw() {
  background(255);
  push();
  if (invertir==true) {
    translate(posX+100, posY);
    scale(-1, 1);
  } else {
    translate(posX, posY);
    scale(1, 1);
  }

  image(sprite[contador], 0, 0, 100, 100);
  pop();

  if (posX>width+100) {
    posX=-100;
  }

  if (posX<-100) {
    posX=width+100;
  }
}

void keyPressed() {
  if (contador<cantImagenes-1) {
    contador++;
  }
  if (contador>=cantImagenes-1) {
    contador=0;
  }
  if (key=='a'||key=='A') {
    posX-=velocidad;
    invertir=true;
  }

  if (key=='d'||key=='D') {
    posX+=velocidad;
    invertir=false;
  }
  if (key=='w'||key=='W') {
    posY-=velocidad;
  }
  if (key=='s'||key=='S') {
    posY+=velocidad;
  }
}
