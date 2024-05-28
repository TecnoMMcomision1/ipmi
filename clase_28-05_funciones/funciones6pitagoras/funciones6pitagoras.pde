
void setup() {
  size(500, 500);
}
void draw() {
  background(255);

  line(mouseX, mouseY, 0, 0);
  fill(255, 0, 0);
  textSize(30);
  text("nuestra funcion: "+pitagoras(mouseX, mouseY, 0, 0), 100, 50);
  text("dist: "+dist(mouseX, mouseY, 0, 0), 100, 150);
}

float pitagoras(float px1, float py1, float px2, float py2) {
  float a = px2-px1;
  float b = py2-py1;

  float calculo = sqrt(sq(a)+sq(b));
  return calculo;
}
