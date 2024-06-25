int cantidad, taman;

void setup() {
  size(400, 400);

  cantidad=21;
}
void draw() {
  background(0);

  taman=width/cantidad;

  for (int i=0; i<cantidad; i++) {
    for (int j=0; j<cantidad; j++) {
      float distan = dist(ubic(i, taman), ubic(j, taman), width/2, height/2);
      float velo = map(distan, 0, dist(0, 0, width/2, height/2), 0.2, 1.5);

      if (i==cantidad/2 || j==cantidad/2) {
        
        fill(250, 250, 0);
      } else {
        fill(255);
      }
      rotation(ubic(i, taman), ubic(j, taman), taman, velo); // agregamos velocidad de giro
    }
  }
}
int ubic(int indice, int tam) {
  return indice*tam+tam/2;
}
void rotation(int px, int py, int tam, float velocidad) {
  push();
  translate(px, py);
  rotate(radians(frameCount*velocidad));
  rectMode(CENTER);
  stroke(100, 156);
  rect(0, 0, tam, tam);
  pop();
}
void mousePressed() {
  cantidad++;
}
void keyPressed() {
  cantidad=5;
}
