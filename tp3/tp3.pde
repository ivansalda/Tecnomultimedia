//Resolución de 600x600(hecho)
//Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor (hecho)
//Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor
//Condicionales (if - else)(hecho).//Ciclos FOR(hecho)//Manejo de arreglos(hecho)//Eventos (mouse y/o teclado): modificación de variables.//Algunas funciones matemáticas: dist(), map(), random();



int estado=0;
int t=14, p=14;
String [] Texto = new String [t]; 
PImage[] Pantalla = new PImage [p];
PImage prueba;

void setup() {
  size (600, 600);
  texto();
  for (int i=0; i < p; i++) {
    Pantalla[i] = loadImage ("Pantalla" +i+ ".jpeg");
  }
  prueba = loadImage ("Pantalla0.jpeg");
}
void draw() {
  switch (estado) { 
  case 0:  //intro

    image (Pantalla[0], 0, 0, width, height);
    fill (0);
    CajaDeTexto (1);
    MiBoton(1);
    MiBoton(3);
    textSize (50);
    ColorDeLetras ();
    text (Texto[0], 175, 100);
    text ("Inico", 430, 555);
    break;
  case 1: //aldea hecho
    image (Pantalla[1], 0, 0, width, height);
    CajaDeTexto(2);
    MiBoton (1); 
    ColorDeLetras ();
    text (Texto[1], 300, 20, width/2, 300);
    Seguir(1);
    break;
  case 2: //bosque hecho
    image (Pantalla[2], 0, 0, width, height);
    CajaDeTexto(3);
    MiBoton(1);
    ColorDeLetras ();
    text (Texto[2], 150, 20, width/2, 300);
    Seguir(1);
    break;
  case 3: //trono hecho
    image (Pantalla[3], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(2);
    ColorDeLetras ();
    text (Texto[3], 300, 20, width/2, 300);
    MiBoton(2);
    Seguir(2);
    break;
  case 4: //ruiseñor automata Hecho (conectar con la 7)
    image (Pantalla[4], 0, 0, width, height);
    textSize (18);
    fill (0);
    text (Texto[4], 0, 100, width/2.5, 300);
    MiBoton(1);
    Seguir(1);
    break;
  case 5: //enfermedad del emperador 
    image (Pantalla[5], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(4);
    ColorDeLetras ();
    text (Texto[5], 300, 350, width/2, 300);
    MiBoton(2);
    Seguir(2);
    break;
  case 6: //canto salvador (Final 1)
    image (Pantalla[6], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(5);
    ColorDeLetras ();
    textSize (18);
    text (Texto[6], 0, 420, width/2, 300);
    MiBoton(1);
    textSize (50);
    ColorDeLetras ();
    text ("Inico", 430, 555);
    break;
  case 7: //la busqueda del regalo
    image (Pantalla[7], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(8);
    ColorDeLetras ();
    text (Texto[7], 300, 50, width/2, 300);
    MiBoton(1);
    Seguir(1);
    break;
  case 8: //la preocupacion
    image (Pantalla[8], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(8);
    ColorDeLetras ();
    text (Texto[8], 300, 50, width/2, 300);
    MiBoton(1);
    Seguir(1);
    break;
  case 9: //el regalo (Final 2)
    image (Pantalla[9], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(9);
    ColorDeLetras ();
    text (Texto[9], 300, 400, width/2, 300);
    MiBoton(2);
    Seguir(2);
    break;
  case 10: //la parca y el ruiseñor
    image (Pantalla[10], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(6);
    ColorDeLetras ();
    text (Texto[10], 0, 350, width/2, 300);
    MiBoton(1);
    Seguir(1);
    break;
  case 11: //canto condenante
    image (Pantalla[11], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(4);
    ColorDeLetras ();
    text (Texto[11], 300, 360, width/2, 300);
    MiBoton(2);
    Seguir(2);
    break;
  case 12: //el final (final 3)
    image (Pantalla[12], 0, 0, width, height);
    textSize (18);
    CajaDeTexto(7);
    textSize (18);
    ColorDeLetras ();
    text (Texto[12], 150, 20, width/2, 300);   
    MiBoton(1);
    textSize (50);
    ColorDeLetras ();
    text ("Inico", 430, 555);
    break;
  case 13: //Creditos
    image (Pantalla[13], 0, 0, width, height);
    textSize (18);
    fill (0);
    text (Texto[13], 0, 300, width/3, 300);
    MiBoton(2);
    ColorDeLetras ();
    text ("Inico", 60, 555);
    break;

  default:
    break;
  }
}


void mousePressed () {

  if ( estado == 0 && (mouseX > 400 && mouseY > 450 && mouseX < 575 && mouseY < 525)) {
    estado = 1;
  } else if (estado== 1) {
    estado = 2;
  } else if (estado == 2) {
    estado = 3;
  } else if (estado == 3) {
    estado=4;
  } else if (estado == 4) {
    estado=5;
  } else if (estado == 5) {
    estado=6;
  } else if (estado == 6) {
    estado=7;
  } else if (estado ==7) {
    estado=8;
  } else if (estado == 8) {
    estado=9;
  } else if (estado == 9) {
    estado=10;
  } else if (estado == 10) {
    estado=11;
  } else if (estado == 11) {
    estado=12;
  } else if (estado == 12) {
    estado=13
      ;
  };
};
