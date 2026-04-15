PImage cuadro; //Variable de imagen

void setup() {
  size(800, 400);

  cuadro=loadImage("CuadroPicasso.png"); // cargo la imagen
}

void draw() {
  background(120);

  image(cuadro, 0, 0, 400, 400);

  strokeWeight(5);
  line(445, 137, 446, 394);

  strokeWeight(0);
  fill(#FFD812);

  rect(574, 0, 30, 300);

  fill(#FFF92C);

  rect(707, 4, 93, 310);
  fill(#89447C);
  rect(542, 90, 658, 310);
  fill(13, 103, 216);
  quad(431, 102, 643, 144, 716, 387, 523, 390);

  fill(250, 95, 18);

  quad(523, 118, 576, 289, 649, 271, 605, 130);
  fill(#FFD812);
  quad(507, 340, 574, 300, 591, 398, 525, 397);

  fill(#1475DB, 195);
  quad(527, 158, 575, 201, 611, 218, 550, 259);
  rect(411, 154, 30, 300);


  //triangulos


  strokeWeight(6);
  fill(#BC1B1B);
  triangle(539, 268, 590, 226, 585, 297);

  fill(#CE4100);
  triangle(546, 166, 520, 270, 574, 270);
  strokeWeight(0);
  fill(240, 116, 15);
  triangle(648, 144, 714, 367, 756, 167);
  fill(5, 178, 64);
  triangle(447, 146, 447, 398, 522, 395);
  fill(250, 95, 18);
  strokeWeight(6);
  triangle(546, 166, 527, 263, 568, 263);
  fill(#1475DB);

  triangle(707, 3, 758, 1, 710, 90);
  strokeWeight(6);
  fill(#BC1B1B);

  triangle(662, 280, 630, 370, 701, 343);
  triangle(536, 274, 532, 333, 577, 297);

  strokeWeight(3);

  triangle(527, 303, 568, 291, 569, 306);

  strokeWeight(0);

  fill(#CE4100);

  triangle(484, 258, 447, 151, 451, 266);
  fill(250, 95, 18);

  triangle(475, 258, 447, 151, 451, 266);
  fill(#FAC44E);
  triangle(430, 99, 650, 87, 458, 181);
  fill(#4EFABC);
  stroke(#0E5038);
  strokeWeight(8);
  triangle(798, 158, 700, 398, 798, 398);
  stroke(0);
  strokeWeight(4);
  fill(#FF8C0F);
  triangle(441, 6, 592, 100, 459, 122);
  fill(#0F45FF);

  triangle(478, 125, 506, 39, 591, 102);
  fill(#166A2A);
  triangle(572, 5, 522, 114, 592, 102);
  fill(0);
  triangle(663, 398, 591, 397, 569, 365);
  fill(255);
  triangle(643, 398, 591, 397, 569, 365);
  fill(0);
  triangle(578, 309, 550, 385, 610, 363);
  fill(255);
  triangle(575, 311, 575, 358, 596, 357);
  triangle(570, 361, 568, 376, 610, 362);

  //ellipses
  fill(249, 63, 15);
  circle(675, 113, 50);
  strokeWeight(5);
  fill(47, 15, 240);
  circle(664, 105, 50);
  fill(16, 13, 190);
  ellipse(500, 167, 65, 40);
  ellipse(600, 167, 65, 40);
  fill(0);
  circle(498, 166, 20);
  circle(598, 170, 20);
  fill(0);
  strokeWeight(0);
  circle(663, 107, 20);
  circle(659, 123, 10);
  fill(0);
  circle(513, 284, 30);
  fill(20, 0, 255);
  circle(510, 280, 20);
  fill(#D86C18);
  circle(544, 399, 50);

  fill(#FFD93E);
  quad(494, 83, 582, 60, 572, 99, 505, 113);
}

void mousePressed() {
  println(mouseX, mouseY);
}
