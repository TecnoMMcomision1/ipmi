color relleno;
int tam;

void setup() {
  size(500, 500);

  relleno = color(0, 255, 0);
  tam=100;
}
void draw() {
  background(255);

  ellipse(width/2, height/2, tam, tam);

  fill(relleno);
  rect(50, 50, 100, 50);

  rect(250, 70, 70, 70);

  if (zonaBoton(50, 50, 100, 50)) {
    relleno = color(0, 0, 250);
  } else {
    relleno = color(250, 0, 0);
  }
}
void mousePressed() {
  if (zonaBoton(50, 50, 100, 50)) {
    relleno = color(250, 0, 250);
  }
  if (elOtroZonaBoton(250, 70, 70, 70)) {
    tam+=10;
  }
}
boolean zonaBoton(int px, int py, int ancho, int alto) {    //ya no es void. DEVUELVE/RETORNA VALOR
  if (mouseX > px && mouseX < px+ancho && mouseY > py && mouseY < py+alto) {
    return true;
  } else {
    return false;
  }
}
boolean elOtroZonaBoton(int px, int py, int ancho, int alto) {
  boolean presionado = mouseX > px && mouseX < px+ancho && mouseY > py && mouseY < py+alto;
  return presionado;
}
