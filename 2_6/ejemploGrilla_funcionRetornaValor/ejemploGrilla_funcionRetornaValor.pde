int columnas;
int filas;
int tamCelda;


void setup() {
  size(800, 800);
  columnas=10;
  filas=10;
  tamCelda=width/columnas;
  ellipseMode(CORNER);
  textSize(48);
}

void draw() {
  background(0);
  for (int i = 0; i<=columnas; i++) {
    for (int j = 0; j<=filas; j++) {
      fill(0);
      text(i+","+j, tamCelda*i, tamCelda*j);
      if (esPar(i,j) == true) {
        fill(0);
      } else {
        fill(255);
      }
      rect(tamCelda*i, tamCelda*j, tamCelda, tamCelda);
    }
  }
}

boolean esPar(int valor1, int valor2) {
  if ((valor1+valor2)%2==0) {

    return true;
  } else {
    return false;
  }
}
