PFont fuente;
int posY; // ubicacion en Y del texto

float tamText; // tamaño texto

float valorAlpha; // variable de opacidad
void setup() {
  size(500, 500);
  fuente = loadFont("arial.vlw"); // cargamos la fuente
  textFont(fuente, 30);
  textAlign(CENTER); // alineamos al centro
  posY = 500; // valor inicial (borde inferior de la pantalla)
}
void draw() {
  background(0);
/* usamos map() para asignar proporcionalmente un tamaño de texto de acuerdo
a la ubicación dada por posY */
  tamText = map(posY, 500, 100, 30, 60); 
  valorAlpha = map(posY, 500, 100, 20, 255); // lo mismo que antes, pero para la opacidad
  fill(255, 0, 0, valorAlpha); // opacidad va de 0 a 255
  textSize(tamText);

  text("PULP FICTION", width/2, posY);
  if (posY>100) { // solo se mueve hasta que llega a 100
    posY--;
  }
}
