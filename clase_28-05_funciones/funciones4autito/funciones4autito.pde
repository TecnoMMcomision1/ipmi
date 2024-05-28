float px;

void setup() {
  size(500, 500);

  px = 0;
}
void draw() {
  background(255);

  auto(mouseX, 150, 100, 60, color(255, 0, 0));

  auto(px, 300, 60, 30, color(0, 0, 255));
  px++;
}

void auto(float px, float py, float ancho, float alto, color chapa) {
  fill(chapa);
  rect(px, py, ancho, alto);
  fill(100);
  triangle(px, py, px+ancho, py, px, py-alto/2);

  rueda(px, py+alto, alto);
  rueda(px+ancho, py+alto, alto);
}

void rueda(float px, float py, float tam) {
  fill(200);
  ellipse(px, py, tam, tam);
  fill(50);
  ellipse(px, py, tam/2, tam/2);
}
