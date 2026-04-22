
float posX;
float posY;
float tam;
int vel;

void setup() {
  size(400, 400);
  posX=width/2;
  posY=height/2;
  tam=60;
  vel=2;
}

void draw() {
  background(0);
  fill(255, 0, 0);
  if (posX>=width || posX<=0) {
    vel*=-1;
    tam+=5;
  }

  if (posX>=width)     {
    vel-=1;
  } else if (posX<=0) {
    vel+=1;
  }
  posX=posX+vel;
  posY=posY+vel;
  circle(posX, posY, tam);
}
