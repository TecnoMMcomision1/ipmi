int cant = 10;
int ubic;

void setup() {
  size(500, 500);
  ubic = width/cant;
  rectMode(CENTER);
}
void draw() {
  background(255);

  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float tam = map(mouseX, 0, width, 20, ubic);
      if ((i+j)%2==0) {
        fill(255, 0, 0);
        rect(i*ubic+ubic/2, j*ubic+ubic/2, tam, tam);
      } else {
        fill(100);
        ellipse(i*ubic+ubic/2, j*ubic+ubic/2, tam, tam);
      }
    }
  }
}
