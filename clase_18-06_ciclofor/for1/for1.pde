int tama;

void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  line(20, 0, 20, 200);
  line(40, 0, 40, 200);
  line(60, 0, 60, 200);
  line(80, 0, 80, 200);
  line(100, 0, 100, 200);

  for (int l=20; l<=100; l+=20) {
    line(l, 250, l, height);
  }
}
