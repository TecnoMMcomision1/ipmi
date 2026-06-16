int tamCelda;
int col;
int fila;
void setup() {
  size(400, 400);
  col=10;
  fila=10;
  tamCelda=width/col;
}


void draw() {
  background(255);
  grilla(tamCelda, fila, col);
  ellipseDegrade();
}

void grilla(int tamCelda, int filas, int columnas) {
  int desplazamientoX=tamCelda/2;
  int desplazamientoY=tamCelda/2;

  for (int i=0; i<filas; i++) {
    for (int j=0; j<columnas; j++) {
      fill(0);
      if (j%2==0) {
        desplazamientoX=tamCelda/6;
      } else {
        desplazamientoX=0;
      }
      if (i%2==0) {
        desplazamientoY=tamCelda/2;
      } else {
        desplazamientoY=0;
      }
      ellipse(i*tamCelda+tamCelda/2+desplazamientoX, j*tamCelda+tamCelda/2-desplazamientoY, tamCelda, tamCelda/2);
    }
  }
}
void ellipseDegrade() {

  for (int i=100; i>0; i--) {
    if (i>0) {
      fill(0, 255/i*3);
    }
    noStroke();
    ellipse(width/2, height/2, i*8, i*4);
  }
}
