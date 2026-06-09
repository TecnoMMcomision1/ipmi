int columnas;
int filas;
int tamCelda;
float mouseXMap;

void setup() {
  size(800, 800);
  columnas=10;
  filas=10;
  tamCelda=width/columnas;
  ellipseMode(CORNER);
  rectMode(CENTER);
  textSize(48);
}

void draw() {
  background(0);
  for (int i = 0; i<columnas; i++) {
    for (int j = 0; j<filas; j++) {


      fill(0);
      text(i+","+j, tamCelda*i, tamCelda*j);
      if (esPar(i, j) == true) {
        fill(0);
      } else {
        fill(255);
      }
      float distMouseX= dist(mouseX, mouseY, i*tamCelda+tamCelda/2, j*tamCelda+tamCelda/2);
      mouseXMap=map(distMouseX, 0, width, 5,1);
      rect(i*tamCelda+tamCelda/2, j*tamCelda+tamCelda/2, tamCelda*mouseXMap, tamCelda);
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
