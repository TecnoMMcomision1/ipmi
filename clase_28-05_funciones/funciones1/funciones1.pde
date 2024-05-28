int px, py, tam;
boolean algo;
float dx;

void setup() {
  size(500, 500);
  valoresIniciales();
}
void draw() {
  background(255);
  ellipse(px, py, tam, tam);
  if (py>200) {
    tam++;
    algo = true;
  }
  py +=2;
  println(algo);
}
void mousePressed() {
  valoresIniciales();
}

void valoresIniciales() {
  algo = false;
  px = 200;
  py = 50;
  tam = 25;
  dx = 1;
}
