String palabras [];
int contador;
int cantPalabras;
void setup() {
  size(400, 400);
  textSize(60);
  contador=0;
  cantPalabras=100;
  palabras= new String [cantPalabras];

  for (int i=0; i<palabras.length; i++) {
    palabras[i]="palabra"+i;
  }
}


void draw() {
  background(255);
  fill(0);
  if (contador<100) {
    contador++;
  }
  if (contador>=99) {
    contador=0;
  }
  text(palabras[contador], 100, 100);
}
void mouseClicked() {
}
