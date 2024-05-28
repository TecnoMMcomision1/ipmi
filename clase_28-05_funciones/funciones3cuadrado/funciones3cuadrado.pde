int posX, posY;

void setup() {
  size(500, 500);

  posX=300;
  posY=450;
}
void draw() {
  background(255);

  strokeWeight(7);
  stroke(0);
  rectangulo();

  strokeWeight(1);
  stroke(180, 0, 0);
  rectangulo();

  //rect() sin rect()
  cuadrado(150, 200, 80, 120);
  cuadrado(400, 400, 50, 50);
  cuadrado(posX, posY, 100, 100);
  cuadrado(mouseX, mouseY, 200, 200);
}
void rectangulo() {
  //fill(0);  //no anda :c

  line(100, 100, 180, 100);
  line(180, 100, 180, 220);
  line(180, 220, 100, 220);
  line(100, 220, 100, 100);
}
void cuadrado(/*parametros: tipo nombre*/ int px, int py, int ancho, int alto) {
  //dos funciones no se pueden llamar igual

  line(px, py, px+ancho, py);
  line(px+ancho, py, px+ancho, py+alto);
  line(px+ancho, py+alto, px, py+alto);
  line(px, py+alto, px, py);
}

void mousePressed() {
  posX+=10;
  posY-=15;
}
