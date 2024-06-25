float px;

void setup() {
  size(500, 500);

  px = 0;
}
void draw() {
  background(255);

  auto(mouseX, 150, 100, 60, color(255, 0, 0));

  auto(px, 300, 60, 30, color(0, 0, 255));
  if (px>width) {
    px= -60;
  }
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
  push();
  translate(px, py);
  rotate(radians(frameCount*5));
  fill(200);
  ellipse(0, 0, tam, tam);
  fill(50);
  rectMode(CENTER);
  rect(0, 0, tam/2, tam/2);
  pop();
}
