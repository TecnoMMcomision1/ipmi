int diam = 50;
float px, py, dx, dy;
boolean seMueve; // false o true
float distan;
void setup() {
  size(500, 500);
  px = random(diam/2, width-diam/2);
  py = random(diam/2, height-diam/2);
  dx = random(-2, 2);
  dy = random(-2, 2);
  float num = random(2);
  if (num<1) {
    seMueve = false;
  } else {
    seMueve = true;
  }
}
void draw() {
  background(0);
  if (px >= width-diam/2 || px < diam/2) {
    dx = dx*-1;
  }
  if (py >= height-diam/2 || py < diam/2) {
    //dy = dy*-1;
    dy *= -1;
  }
  distan = dist(mouseX, mouseY, px, py);
  //stroke(255, 255, 0);
  //line(mouseX, mouseY, px, py);
  textSize(30);
  text(distan, 200, 100);
  ellipse(px, py, diam, diam);
  if (seMueve == true) {
    px += dx; //px = px + dx; otra forma de escribir
    py += dy;  //py = py + dy;
  }
}
void mousePressed() {

  //seMueve = true;
  if (distan<diam/2) {
    seMueve = !seMueve;
  } else {
    px = random(diam/2, width-diam/2);
    py = random(diam/2, height-diam/2);
    dx = random(-2, 2);
    dy = random(-2, 2);
  }
}
