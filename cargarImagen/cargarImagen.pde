/* Ruta para cargar imágenes:
Menú Sketch >>>> Add file...>>>> (buscan la imagen en su explorador de archivos)
 usen .jpg o .png  */

PImage fondo; // Declaro una variable de tipo imagen
void setup() {
  size(800, 400); // tamaño de ventana 800 px de ancho x 400 de altura
  fondo = loadImage("valleLuna.jpg"); // "cargo" al programa el archivo
  // importante!! esta línea de código va en el setup() !!!!!!
}


void draw() {
  background(255); // es un fondo de la ventana
  image(fondo, 0, 0, 400, 400); // función para mostrar imágenes en la pantalla
  
  
  fill(220);
  noStroke();
  ellipse(733, 126, 60, 60);
  println(mouseX); // imprime en consola el valor del mouse en X
  println(mouseY); // imprime en consola el valor del mouse en Y
}
