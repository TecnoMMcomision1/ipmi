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
      if (sobreCuad(ubic(i, taman), ubic(j, taman), taman)) {
        fill(255, 255, 0);
        stroke(0);
        strokeWeight(5);
      } else {
        float distan = dist(mouseX, mouseY, ubic(i, taman), ubic(j, taman));
        float distMax = dist(0, 0, width, height);
        float tono = map(distan, 0, distMax, 220, 20);
        fill(255, 255, 255, tono);
        noStroke();
      }
      rotation(ubic(i, taman), ubic(j, taman), taman);
    }
  }
}
int ubic(int indice, int tam) {
  return indice*tam+tam/2;
}
void rotation(int px, int py, int tam) {
  push();
  translate(px, py);
  rotate(radians(frameCount));  //hay que pasarle la velocidad (después)
  rectMode(CENTER);
  rect(0, 0, tam, tam);
  pop();
}
void mousePressed() {
  cantidad++;
}
void keyPressed() {
  cantidad=5;
}
boolean sobreCuad(int px, int py, int tam) {
  if (mouseX>px-tam/2 && mouseX<px+tam/2 && mouseY>py-tam/2 && mouseY<py+tam/2) {
    return true;
  } else {
    return false;
  }
}
