// Apellido, nombre
// hhhadyoytatojsdkjasjdgkjaskdj link al video
int tam;
boolean coso;

void setup() {
  size(500, 500);

  tam = width/6;
}
void draw() {
  background(0);

  for (int i=0; i<6; i++) {
    for (int j=0; j<6; j++) {
      //if ((i+j)%2==0) {
      if (i%2==0) {
        coso=false;
      } else {
        coso=true;
      }
      cuadrado(i*tam, j*tam, tam, tam, coso);
    }
  }
}
void cuadrado(int ubicX, int ubicY, int alto, int ancho, boolean alter) {
  for (int l=ubicY; l<ubicY+alto; l++) {
    float valor;
    if (alter==true) {
      valor = map(l, ubicY, ubicY+alto, 0, 255);
    } else {
      valor = map(l, ubicY, ubicY+alto, 255, 0);
    }
    stroke(0, 255, 0, valor);
    line(ubicX, l, ubicX+ancho, l);
  }
}
