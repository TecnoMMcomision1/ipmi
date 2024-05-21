PFont fuente;
String intro;
void setup() {
  size(640, 480);
  fuente = loadFont("arial.vlw");
  textFont(fuente, 30);
  intro ="Muchos años después, frente al pelotón de fusilamiento, el Coronel Aureliano Buendía recordó aquella tarde lejana en la que su padre lo llevó a conocer el hielo.";
}
void draw() {
  background(0);
  textAlign(CENTER, CENTER); // CENTER, TOP, BASELINE
  stroke(255);
  line(0, height/2, width, height/2);
  text("Titulo corto", width/2, 50);
  text("Esto es una frase \n en dos líneas", width/2, 100); // \n hace un salto de línea
  textAlign(LEFT);
  text(intro, 100, 200, 440, 300);
}
