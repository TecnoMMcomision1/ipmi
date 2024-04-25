
// Apellido, Nombre
// Comisión 
PImage arbol;
void setup() {
  size(800, 400);
  arbol = loadImage("tree.jpg");
}

void draw() {
  image(arbol, 0, 0, 400, 400 );
  fill(0, 0, 200);
  rect(400, 320, 400, 180);
}
