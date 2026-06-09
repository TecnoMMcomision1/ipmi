int columnas;
int filas;
int tamCelda;
float mouseXMap;
int diamDegrade;
void setup() {
  size(800, 800);
  columnas=10;
  filas=10;
  tamCelda=width/columnas;
  ellipseMode(CORNER);
  textSize(48);
  diamDegrade=400;
}

void draw() {
  background(255,0,0);
  for (int i = 0; i<=columnas; i++) {
    for (int j = 0; j<=filas; j++) {
      float distMouseX= dist(width/2,height/2,i*tamCelda+tamCelda/2, j*tamCelda+tamCelda/2);
      mouseXMap=map(distMouseX, 0, diamDegrade, 0, 255);

      fill(0);
      text(i+","+j, tamCelda*i, tamCelda*j);
      if (esPar(i, j) == true) {
        fill(0);
      } else {
        fill(255,mouseXMap);
      }
      rect(i*tamCelda, j*tamCelda, tamCelda, tamCelda);
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
