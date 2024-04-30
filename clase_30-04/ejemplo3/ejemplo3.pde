/* operadores matemáticos
 
 + suma
 - resta
 / división
 * multiplicación
 
 */
int diametro;
String mensaje; // tipo de dato de texto
void setup() {
  size(600, 500);
  diametro = 140;
  textSize(25);
  mensaje = "wow, que clase la de hoy!!!!";
}
void draw() {
  background(0);
  // ellipseMode(CORNER);
  fill(255);
  ellipse(width/2, height/2, diametro, diametro);
  rectMode(CENTER);
  rect(width/2, height/2, diametro/2, diametro/2);
  diametro = diametro + 5;
  fill(229, 140, 20);
  text(diametro, width/2, 100);

  text(mensaje, width/2, 180);
}
void mousePressed() {
  diametro = 0;
  mensaje ="epa, qué pasó?";
}
