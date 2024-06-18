int cant = 10;
int tam;

void setup() {
  size(500, 500);
  tam = width/cant;
}
void draw() {
  background(255);

  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if ((i+j)%2==0) {
        fill(255, 0, 0);
        rect(i*tam, j*tam, tam, tam);
      } else {
        fill(100);
        ellipse(i*tam+tam/2, j*tam+tam/2, tam, tam);
      }
    }
  }
}
