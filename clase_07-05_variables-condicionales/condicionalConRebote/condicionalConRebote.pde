int tam;
int valor;
void setup() {
  size(500, 500);
  background(0);
  valor =1;
}
void draw() {
  background(0);

  float tono = tam*255/width;
  if (tam>width || tam<0) {
    valor = valor*-1;
  }
  tam+= valor;
  fill(0, tono, 0);
  ellipse(width/2, height/2, tam, tam);
 
}
