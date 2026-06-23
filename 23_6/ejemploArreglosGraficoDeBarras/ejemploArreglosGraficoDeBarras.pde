int valor [];
int contador;
int cantValores;
int tamY;
float valoresRandom;
void setup() {
  size(900, 500);
  textSize(60);
  contador=0;
  cantValores=10;
  tamY= height/cantValores;
  valor= new int [cantValores];

  for (int i=1; i<valor.length; i++) {
   valor[i]=i*int(random(100)); 
  }
}


void draw() {
  background(255);
  fill(0);
for(int i=0; i<cantValores; i++){
rect(0,tamY*i+tamY/4, valor[i],tamY/2);

}
}
void mouseClicked() {
}
