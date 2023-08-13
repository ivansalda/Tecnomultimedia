//Resolución de 600x600(hecho)
//Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor (hecho)
//Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor
//Condicionales (if - else)(hecho).//Ciclos FOR(hecho)//Manejo de arreglos(hecho)//Eventos (mouse y/o teclado): modificación de variables.//Algunas funciones matemáticas: dist(), map(), random();


int estado=0;
int t=14, p=14;
String [] Texto = new String [t]; 
PImage[] Pantalla = new PImage [p];


void setup() {
  size (600, 600);
  texto(); //hice este acceso directo para no tener tanto codigo sabana
  for (int i=0; i < p; i++) {
    Pantalla[i] = loadImage ("Pantalla" +i+ ".jpeg");
  }
}
void draw() {
  switch (estado) { 
  case 0:  //intro
    image (Pantalla[0], 0, 0, width, height); 
    textSize (50);
    fill (255, 207, 13);
    Titulo ();
    MiBoton(400, 500, "Inicio");
    fill (255, 207, 13);
    text (Texto[0], 175, 100);
    fill(0);
    strokeWeight (3);
    stroke(255, 207, 13);
    rect (50, 500, 215, 75);
    fill (255, 207, 13);
    text("Creditos", 60, 555);
    ColorDeLetras (); 
    break;
  case 1: //aldea hecho
    image (Pantalla[1], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(300, 20, 300, 220);
    MiBoton (400, 500, "Seguir"); 
    ColorDeLetras ();
    text (Texto[1], 300, 20, width/2, 300);
    break;
  case 2: //bosque hecho
    image (Pantalla[2], 0, 0, width, height);
    CajaDeTexto(150, 20, 300, 200);
    MiBoton(400, 500, "Seguir");
    ColorDeLetras ();
    text (Texto[2], 150, 20, width/2, 300);
    break;
  case 3: //trono hecho
    image (Pantalla[3], 0, 0, width, height);
    CajaDeTexto(300, 20, 300, 220);
    ColorDeLetras ();
    text (Texto[3], 300, 20, width/2, 300);
    MiBoton(400, 500, "Seguir");
    //Seguir(2);
    break;
  case 4: //ruiseñor automata Hecho 
    image (Pantalla[4], 0, 0, width, height);
    textSize (18);
    fill (0);
    text (Texto[4], 0, 100, width/2.5, 300);
    MiBoton(400, 500, "Echar");
    MiBoton (50, 500, "Cuidar");
    break;
  case 5: //enfermedad del emperador 
    image (Pantalla[5], 0, 0, width, height);
    CajaDeTexto(300, 250, width/2, 250);
    ColorDeLetras();
    text (Texto[5], 300, 250, width/2, 300);
    MiBoton(50, 500, "Cantar");
    MiBoton (400, 500, "Reir");

    break;
  case 6: //canto salvador (Final 1)
    image (Pantalla[6], 0, 0, width, height);
    CajaDeTexto(0, 400, width/2, 300);
    ColorDeLetras();
    textSize (18);
    text (Texto[6], 0, 420, width/2, 300);
    MiBoton(400, 500, "Inicio");
    break;
  case 7: //la busqueda del regalo
    image (Pantalla[7], 0, 0, width, height);
    CajaDeTexto(300, 20, 300, 180);
    ColorDeLetras();
    text (Texto[7], 300, 50, width/2, 300);
    MiBoton(400, 500, "Seguir");
    break;
  case 8: //la preocupacion
    image (Pantalla[8], 0, 0, width, height);
    CajaDeTexto(300, 20, 300, 180);
    ColorDeLetras ();
    text (Texto[8], 300, 50, width/2, 300);
    MiBoton(400, 500, "Seguir");
    break;
  case 9: //el regalo (Final 2)
    image (Pantalla[9], 0, 0, width, height);

    CajaDeTexto(300, 390, width/2, 230);
    ColorDeLetras ();
    text (Texto[9], 300, 400, width/2, 300);
    MiBoton(50, 500, "Inicio");
    //Seguir(2);
    break;
  case 10: //la parca y el ruiseñor
    image (Pantalla[10], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(0, 350, width/2, 300);
    ColorDeLetras ();
    text (Texto[10], 0, 350, width/2, 300);
    MiBoton(400, 500, "Seguir");
    //Seguir(1);
    break;
  case 11: //canto condenante
 float tinta = map (dist (mouseX, mouseY, 50, 500), 0, width, 190,60 );
    fill (tinta, 0,0,80);
    image (Pantalla[11], 0, 0, width, height);
   rect (0,0,600,600);
    textSize (18);
    CajaDeTexto(300, 350, width/2, 300);
    ColorDeLetras ();
    text (Texto[11], 300, 360, width/2, 300);
    MiBoton(50, 500, "Seguir");

    break;
  case 12: //el final (final 3)
    image (Pantalla[12], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(150, 20, 300, 150);
    textSize (18);
    ColorDeLetras ();
    text (Texto[12], 150, 20, width/2, 300);   
    MiBoton(400, 500, "Inicio");


    break;
  case 13: //Creditos

    image (Pantalla[13], 0, 0, width, height);
    textSize (18);
    fill (0);
    text (Texto[13], 0, 300, width/3, 300);
    MiBoton(400, 500, "Inicio");
    break;

  default:
    break;
  }
}


void mousePressed () {

  if (ubicacion (400, 575, 0)) { 
    estado = 1;
  } else if (ubicacion(50, 225, 0)) { 
    estado = 13;
  } else if (ubicacion (400, 575, 1)) { //boton2
    estado = 2;
  } else if (ubicacion (400, 575, 2)) {
    estado =3;
  } else if (ubicacion (400, 575, 3)) {
    estado=4;
  } else if (ubicacion(50, 225, 4)) {
    estado=7;
  } else if (ubicacion (400, 575, 4)) {
    estado=5;
  } else if (ubicacion(50, 225, 5)) {
    estado=6;
  } else if (ubicacion (400, 575, 5)) {
    estado = 10;
  } else if (ubicacion(400, 575, 6)) {
    estado=0;
  } else if (ubicacion (400, 575, 7)) {
    estado=8;
  } else if (ubicacion (400, 575, 8)) {
    estado=9;
  } else if (ubicacion (50, 225, 9)) {
    estado=0;
  } else if (ubicacion(50, 225, 5)) {
    estado=10;
  } else if (ubicacion (400, 575, 10)) {
    estado=11;
  } else if (ubicacion(50, 225, 11)) {
    estado=12;
  } else if (ubicacion(400, 575, 12)) {
    estado =0;
  } else if (ubicacion(400, 575, 13)) {
    estado =0;
  }
};
