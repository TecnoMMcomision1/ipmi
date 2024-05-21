PFont fuente;
String intro;
int py;
void setup() {
  size(640, 480);
  py = height;
  fuente = loadFont("arial.vlw");
  textFont(fuente, 33 );
  intro ="Muchos años después, frente al pelotón de fusilamiento, el Coronel Aureliano Buendía recordó aquella tarde lejana en la que su padre lo llevó a conocer el hielo.";
}
void draw() {
  background(0);
  textAlign(CENTER, CENTER); // CENTER, TOP, BASELINE
  stroke(255);
  line(0, 100, width, 100);

  textAlign(CENTER);
  text(intro, 100, py, 440, 400);
  if (py>100) {
    py --;
  }
}
