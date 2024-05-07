float  px, py;
float verde;
void setup() {
  size(500, 500);
  background(0);
  strokeWeight(2);
}
void draw() {
  px = random(width);
  py = random(height);
  verde = px*255/500; // promedio dos escalas
  //fill(random(255), random(255), random(255));
  float rojo = random(255);
  fill(rojo, 0, 0);
  ellipse(px, py, 40, 40);
}
