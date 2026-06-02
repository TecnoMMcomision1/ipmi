//ejemplo ciclo for
int tamCelda;
int columnas;
int filas;
int posY;
void setup() {
  size(400, 400);
  columnas=10;
  filas=10;
  tamCelda=width/10;
  posY=0;
}


void draw() {
  background(255);

  for (int i=0; i<=columnas; i++) {
    for (int j=0; j<=filas; j++) {
      fill(0);
      text(i+","+j, tamCelda*i, tamCelda*j);
      if (i%2==0 && j%2==0 || i%2!=0 && j%2 !=0) {
        fill(0);
      } else {
        fill(255);
      }

      rect(tamCelda*i, tamCelda*j, tamCelda, tamCelda);
    }
  }
}
