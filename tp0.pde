PImage tucan ;


void setup(){
size (800, 400);
tucan = loadImage ("tecnotp0.jpg");


};
void draw (){
background (52,155,69);
noStroke ();
//FONDO
fill (24,198,2,30);
circle (450,290,100); 
circle (550, 100,200);
circle (700,150,200);
fill (149,242,95,60);
circle (400,200,250);
circle (600,250,150);
circle (700,300,200);
fill (206,250,66,30);
circle (500,350,150);
circle (650,100,200);
circle (700,250,150);
circle (500,150,150);
fill (255,232,21,30);
circle (600,300,150);
circle (450,100,150);
fill (224,255,0,90);
circle (750,280,100);
circle (500,170,100);
circle (550, 375,150);
fill (50,106,13,40);
circle (760,40,100);
//TUCAN Cuerpo
fill (1,2,13);
ellipse (650,275,125,270);
stroke (0);
strokeWeight (75);
line (600,115,650,200);
fill (255);
stroke (255);
strokeWeight (60);
line (590,115,630,180);
// PICO Y CARA
noStroke ();
fill (255,165,18);
circle (590,100,35);
fill (255,165,18);
triangle (580,85,575,145,440,155);
rect (440,90,140,55,30,20,30,0);
//println (mouseX,mouseY); //USE ESTA FUNCION PARA SACAR MEDIDAS RELATIVAS 
triangle (445,97,482,131,432,169);
fill (0);
circle (453,130,30);
triangle (439,124,470,133,430,170);
strokeWeight (6);
stroke (0);
line (579,118,570,146);
line (566,92,577,118);
stroke (255,111,0);
strokeWeight (3);
line (432,168,460,140);
line (460,140,574,122);
//OJOS 
noStroke ();
fill (35,49,124,255);
circle (590,100,25);
fill (20,30,85);
circle (590,100,15);
fill (0);
circle (590,100,5);
fill (255);
circle (595,97,2);

// DEDOS
stroke (5,150,162);
strokeWeight (8);
line (623,369,636,371);
// TRONCO
noStroke ();
fill (103,93,0);
triangle (550,395,560,340,700,405);
fill (82,75,6);
triangle (550,398,560,340,600,395);
//DEDOS 
stroke (5,150,162);
strokeWeight (8);
line (637,371,643,388);
line (637,371,645,383);
line (671,382,679,398);
// IMAGEN DE REFERENCIA 
  image (tucan, 0,0); 
};
