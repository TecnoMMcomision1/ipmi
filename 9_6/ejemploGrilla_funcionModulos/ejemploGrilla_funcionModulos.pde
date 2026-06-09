int columnas;
int filas;
int tamCelda;
float angulo;

void setup() {
  size(800, 800);
  columnas=10;
  filas=10;
  tamCelda=width/columnas;
  ellipseMode(CORNER);
  textSize(48);
  rectMode(CENTER);
  angulo=0;
}

void draw() {
  background(255,0,0);
  grilla(tamCelda, columnas, filas);
}

void grilla(int tamCelda, int cantColumnas, int cantFilas) {
  for (int i = 0; i<=cantColumnas; i++) {
    for (int j = 0; j<=cantFilas; j++) {
      fill(0);
      //text(i+","+j, tamCelda*i, tamCelda*j);
      if (esPar(i, j) == true) {
        fill(0);
      } else {
        fill(255);
      }
      push();
      cuadradosConcentricos(tamCelda*i+tamCelda/2, tamCelda*j+tamCelda/2);

      pop();
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
void cuadradosConcentricos(int posX, int posY) {
  for (int i=5; i>0; i--) {
    if (i%2==0) {
      fill(255);
    } else {
      fill(0);
    }
    int tamRect=i*15;
    push();
    translate(posX,posY);
    rotate(i*9);
    rect(0, 0, tamRect, tamRect);

    pop();
  }
}
