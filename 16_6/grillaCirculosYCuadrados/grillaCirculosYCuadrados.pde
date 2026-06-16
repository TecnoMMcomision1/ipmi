int tamCelda;
int col;
int fila;
int angulo;
int preMouseX;
void setup() {
  size(400, 400);

  col=10;
  fila=10;
  tamCelda=width/col;
  rectMode(CENTER);
}


void draw() {
  background(255);

  grilla(tamCelda, col, fila);
  println(preMouseX,mouseX);
}

void grilla(int tamCelda, int cantColumnas, int cantFilas) {
  for (int i = 0; i<cantColumnas; i++) {
    for (int j = 0; j<cantFilas; j++) {
      fill(0);
      if (esPar(i, j) == true) {
        fill(0);
      } else {
        fill(255);
      }
      push();
      // rect(tamCelda*i+tamCelda/2, tamCelda*j+tamCelda/2, tamCelda, tamCelda);
      if (esPar(i, j)) {
        circulosConcentricos(tamCelda*i+tamCelda/2, tamCelda*j+tamCelda/2);
      } else {
        cuadradosConcentricos(tamCelda*i+tamCelda/2, tamCelda*j+tamCelda/2,radians(angulo));

      }
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

void cuadradosConcentricos(int posX, int posY, float angulo) {
  for (int i=5; i>0; i--) {
    if (i%2==0) {
      fill(255);
    } else {
      fill(0);
    }
    int tamRect=i*5;
    push();
    translate(posX, posY);
    rotate(angulo);
    rect(0, 0, tamRect, tamRect);

    pop();
  }
}
void circulosConcentricos (int posX, int posY) {

  for (int i=5; i>0; i--) {
    if (i%2==0) {
      fill(255);
    } else {
      fill(0);
    }
    int tamCir=i*5;
    push();
    translate(posX, posY);
    rotate(i*9);
    circle(0, 0, tamCir);

    pop();
  }
}
void mousePressed(){
preMouseX=mouseX;

}
void mouseDragged(){
  if(mouseX>preMouseX){
angulo++;} else{
angulo--;}

}
