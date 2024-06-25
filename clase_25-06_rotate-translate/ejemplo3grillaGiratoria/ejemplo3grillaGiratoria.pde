int cantidad, taman;

void setup() {
  size(400, 400);

  cantidad=5;
}
void draw() {
  background(0);

  taman=width/cantidad;

  for (int i=0; i<cantidad; i++) {
    for (int j=0; j<cantidad; j++) {
      rotation(ubic(i,taman), ubic(j,taman), taman);
    }
  }
}
int ubic(int indice, int tam){
  return indice*tam+tam/2;
}
void rotation(int px, int py, int tam) {
  push();
  translate(px, py);
  rotate(radians(frameCount));
  rectMode(CENTER);
  rect(0, 0, tam, tam);
  pop();
}
void mousePressed(){
  cantidad++;
}
void keyPressed(){
  cantidad=5;
}
