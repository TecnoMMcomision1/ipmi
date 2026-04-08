//DECLARACION DE LAS VARIABLES

float diametro;
int posXRect;
int posXCirc;
int posYRect, posYCirc, tamRect, tamYrect;

void setup() {
  size(800, 400);
  //ASIGNACION DE LAS VARIABLES
  diametro=50;
  posXCirc=0;
  posYCirc=100;
  posXRect=width/2;
  posYRect= height/2;
  tamRect=200;
  
}

void draw() {
  background(0);
  fill(255, 0, 0);
  rect(posXRect, posYRect, tamRect, tamRect);
  fill(255); //Esta funcion pinta de blanco el circulo
  circle(posXCirc, posYCirc, diametro);
}
