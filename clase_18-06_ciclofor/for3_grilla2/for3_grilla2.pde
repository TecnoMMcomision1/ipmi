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
      rect(i*tam, j*tam, tam, tam);
    }
  }
}
