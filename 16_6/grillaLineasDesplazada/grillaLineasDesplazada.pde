int tamCelda = 20;
int columnas = 35;
int filas = 35;
void setup() {
  size(400, 400);
  strokeWeight(2);
}

void draw() {
  background(255);
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {


      if (i % 2 == 0) {
        line(i * tamCelda - j * 12, j * tamCelda-10, i * tamCelda - j * 12, j * tamCelda+10);
      } else {
        line(i * tamCelda - j * 12-10, j * tamCelda, i * tamCelda - j * 12+10, j * tamCelda);
      }
    }
  }
}
