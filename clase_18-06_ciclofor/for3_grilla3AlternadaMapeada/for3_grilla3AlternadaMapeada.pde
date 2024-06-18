int cant = 10;
int ubic;

void setup() {
  size(500, 500);
  ubic = width/cant;
  rectMode(CENTER);
}
void draw() {
  background(255);
  ubic = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float distan = dist(mouseX, mouseY, i*ubic+ubic/2, j*ubic+ubic/2);
      float diagonal = dist(0, 0, width, height);
      float tam = map(distan, 0, diagonal, 20, ubic);
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
void mousePressed() {
  cant++;
}
void keyPressed() {
  cant = 10;
}
