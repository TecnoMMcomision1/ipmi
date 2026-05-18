float diam; // variable para el diámetro
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  /*el valor de diam estará determinado por la ubicación del mouseX*/
  
  // map(variable_control, valorInicial_varControl, valFinal_varControl, valorMin, valorMax)
  
  diam = map(mouseX, 0, width, 50, 250);
  ellipse(mouseX, 250, diam, diam);
  println(diam);
}
