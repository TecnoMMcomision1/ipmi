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
}


void draw() {
  background(255);
  for (int i=0; i<fila; i++) {
    for (int j=0; j<col; j++) {
      boolean direccion;
      if (esPar(i, j)==true) {
        direccion=true;
      } else {
        direccion=false;
      }
      if (tamCelda*j>height/2) {
        rectDegrade(tamCelda*i, tamCelda*j, direccion);
      }
    }
  }
  circulosConcentricos(width/2, height/4);
}



boolean esPar(int valor1, int valor2) {
  if ((valor1+valor2)%2==0) {

    return true;
  } else {
    return false;
  }
}


void circulosConcentricos (int posX, int posY) {

  for (int i=50; i>0; i--) {
    if (i>0) {
      noStroke();
      fill(0, 255/i*2);
    }
    int tamCir=i*5;

    ellipse(posX, posY, tamCir, tamCir/2);
  }
}

void rectDegrade(int posX, int posY, boolean direccion) {

  push();
  float mapeoColor;
  stroke(0);
  strokeWeight(2);
  fill(255);
  for (int i=20; i>0; i--) {

    if (direccion==true) {

      mapeoColor= map(i, 0, 20, 255, 0);
    } else {
      mapeoColor= map(i, 0, 20, 90, 255);
    }

    noStroke();

    fill(mapeoColor);
    rect(posX+i, posY, 10, 50);
  }
  pop();
}
