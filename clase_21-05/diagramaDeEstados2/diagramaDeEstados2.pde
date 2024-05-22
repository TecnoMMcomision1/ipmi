int pantalla;
int segundos;
boolean activo;
void setup() {
  size(640, 480);
  pantalla =1;
  textSize(40);
  activo = false;
}
void draw() {
  background(255);
  fill(100);
  text(segundos, 400, 50);
  if (pantalla==1) {
  fill(0, 0, 255);
  text("Titulo de la película", 100, 200);
  } else if (pantalla==2) {
    fill(0, 255, 255);
    text("Director", 100, 200);
  } else if (pantalla==3) {
    fill(255, 0, 0);
    text("Protagonistas", 100, 200);
  } else if (pantalla==4) {
    text("FIN", width/2, height/2);
  }
  if (activo == true) {
    if (frameCount%60 == 0) {
      segundos++;
    }
  }
  if (segundos<=4) {
    pantalla = 1;
  } else if (segundos>4 && segundos<= 7) {
    pantalla = 2;
  } else if (segundos > 7 && segundos <10) {
    pantalla = 3;
  } else {
    pantalla = 4;
  }
}
void mousePressed() {
  pantalla = 1;
  segundos = 0;
}
void keyPressed() {
  if (keyCode==ENTER) {
    activo = true;
  }
}
