String estado;
int segundos;
void setup() {
  size(640, 480);
  estado ="titulo";
  textSize(40);
}
void draw() {
  background(255);
  fill(100);
  text(segundos, 400, 50);
  if (estado.equals("titulo")) {
    fill(0, 0, 255);
    text("Titulo de la película", 100, 200);
  } else if (estado.equals("segunda")) {
    fill(0, 255, 255);
    text("Director", 100, 200);
  } else if (estado.equals("tercera")) {
    fill(255, 0, 0);
    text("Protagonistas", 100, 200);
  } else if (estado.equals("fin")) {
    text("FIN", width/2, height/2);
  }
  if (frameCount%60 == 0) {
    segundos++;
  }
  if (segundos<4) {
    estado = "titulo";
  } else if (segundos>=4 && segundos<= 7) {
    estado = "segunda";
  } else if (segundos > 7 && segundos <10) {
    estado = "tercera";
  } else {
    estado = "fin";
  }
}
void mousePressed() {
  estado = "inicio";
  segundos = 0;
}
