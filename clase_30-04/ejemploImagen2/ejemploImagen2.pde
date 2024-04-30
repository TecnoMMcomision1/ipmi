PImage arbolito;
void setup() {
  size(400, 400);
  arbolito = loadImage("tree.jpg");
}
void draw() {
  image(arbolito, 0, 0, 400, 400);
}
