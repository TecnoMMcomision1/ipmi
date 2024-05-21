PFont fuente;
void setup() {
  size(640, 480);
  fuente = loadFont("arial.vlw");
  textFont(fuente, 30);
}
void draw() {
  background(0);
  textAlign(CENTER, CENTER); // CENTER, TOP, BASELINE
  stroke(255);
  line(0, height/2, width, height/2);
  text("Mi primera frase", width/2, height/2);
  text("Esto es una frase \n en dos líneas", width/2, 300); // \n hace un salto de línea
}
