
void setup() { // el setup prepara el programa 
  size(400, 400); 
}

void draw() { // el draw reproduce el programa 60 veces x segundo
  noStroke();
  //fill( r, g, b);
  fill(255, 0, 0);
  quad(50, 40, 345, 20, 256, 300, 100, 234); // figura de lados que pueden no ser paralelos
  rect(0, 0, 100, 100);
  rect(300, 0, 100, 100);
  rect(0, 300, 100, 100);
  rect(300, 300, 100, 100);
  strokeWeight(3); // grosor del borde
  stroke(0); // color del borde
  line(0, 200, 400, 200);
  line(200, 400, 200, 0); // linea vertical media
  line(100, 100, 300, 300);
  line(100, 300, 300, 100);
  noStroke();
  fill(255, 255, 0); // relleno de color amarillo
  ellipse(200, 200, 140, 140);
  fill(255); // relleno blanco
  ellipse(200, 200, 40, 140);
  fill(0, 0, 255);
  triangle(200, 200, 150, 300, 250, 300);
}
