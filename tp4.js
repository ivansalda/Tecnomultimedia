// link a video : https://www.youtube.com/watch?v=ASIfmI4vSWM
let terosX, terosY;
let fotos = [];
let estado = 0;
let ubiFX=0;
let tamX = 800, tamY= 400;
let ty =235, cy = 275;
//------------------------------------------------------ PRELOAD
function preload () {
  for (let i = 0; i <=6; i++) {
    fotos[i]=loadImage('data/foto'+i+'.png');
  }
}
//------------------------------------------------- SETUP
function setup() {
  let canvas = createCanvas( tamX, tamY );
  canvas.position(windowWidth/2-width/2, windowHeight/2-height/2);
  cactusX =new Array (3);
  cactusX [0] = 600
    cactusX [1] = 1000
    cactusX [2] = 1700
    terosX = new Array (3);
  terosX [0] = 1200
    terosX [1] = 1400
    terosX [2]= 1900
    textAlign (CENTER, CENTER);
}
//-------------------------------------------------- DRAW
function draw() {
  switch (estado) {
  case 0: //menu
    image (fotos[6], 0, 0);
    textSize (20);
    text ("Creditos", 75, 375);
    text ("Jugar", 710, 375);

    break;
    //------------------------------------------- instrucciones
  case 1:
    background (185);
    image (fotos[0], 0, 0);
    push( );
    rectMode (CENTER);
    fill (2);
    stroke (255);
    strokeWeight (3);
    rect (400, 200, 300, 300);
    textSize (30);
    fill (0);
    text ("Instrucciones", width/2, height/3);
    textSize (20);
    text ("utiliza la w para saltar y", width/2, 200);
    text ("la s para mantenerte bajo", width/2, 220);
    text ("Iniciar", width/2, 300);
    pop ();
    dino ();
    break;

    //---------------------------------------------- juego
  case 2:
    background (185);
    image (fotos[0], ubiFX, 0);
    dino ();// DINO
    for (let i = 0; i <=2; i++) {
      tero (i);
    }
    for (let i =0; i <=2; i++) {
      cactus (i);
    }
    moviX += 0.2;
    if (ubiFX >= -1550) {
      ubiFX -=  2;
    } else {
      moviX ++;
    }
    if (moviX >= 550) {
      moviX -= 1.2;
      estado = 4
    }
    colisiones ();




    break;

    //------------------------------------------------ creditos
  case 3:
    background (185);
    image (fotos[0], -500, 0);
    push( );
    rectMode (CENTER);
    fill (2);
    stroke (255);
    strokeWeight (5);
    rect (400, 200, 300, 300);
    text ("Creditos", width/2, height/4);
    textSize (15);
    text ("Dibujo: Iván Saldaña", width/2, 170)
      text ("Basado en el dinosaurio de Google", width/2, 220);
    textSize (20);
    text ("Jugar", width/2, 270);
    text ("Menu", width/2, 310);
    pop ();
    break;

    //---------------------------------------------------- GANASTE
  case 4:
    background (185);
    image (fotos[0], -1550, 0);
    dino ();
    push( );
    rectMode (CENTER);
    fill (2);
    stroke (255, 255, 0);
    strokeWeight (1);
    rect (400, 200, 300, 300);
    fill (205, 255, 0);
    textSize (30);
    text ("Ganaste", width/2, height/4);
    text ("Felicitaciones!! UWU", width/2, height/3);
    textSize (20);
    text ("Reiniciar", width/2, 250);
    text ("Creditos", width/2, 300);
    pop ();
    break;


    //-------------------------------------------------------------------------PERDISTE
  case 5:
    background (185);
    image (fotos[0], 0, 0);
    push( );
    rectMode (CENTER);
    fill (2);
    stroke (255);
    strokeWeight (3);
    rect (400, 200, 300, 300);
    textSize(30);
    text("Perdiste", width/2, height/4);
    textSize (20);
    text ("Quieres intentarlo de nuevo?", width/2, height/3);
    text ("reintentar", width/2, 250);
    text ("Creditos", width/2, 300);
    pop ();
    break;
  }
}
function mousePressed () {
  if (boton (350, 280, 460, 350, 1)) { // boton para ya entrar al juego
    estado = 2;
  } else if (boton (300, 240, 460, 275, 5)) { //boton Reinicio perdiste
    reinicio ();
  } else if (boton (300, 280, 460, 350, 5)) { //boton perdiste credito
    estado = 3;
  } else if (boton (250, 240, 460, 290, 4)) { // Boton ganaste reinicio
    reinicio ();
  } else if (boton (300, 300, 460, 350, 4)) { //Boton ganaste creditos
    estado = 3;
  } else if (boton (300, 260, 460, 290, 3)) { //creditos jugar denuevo
    reinicio ();
    estado = 2;
  } else if (boton (300, 300, 460, 350, 3)) { //creditos a menu
    reinicio ();
    estado = 0;
  } else if (boton (75, 370, 150, 390, 0)) { // de menu a creditos
    estado = 3
  } else if (boton (650, 370, 780, 390, 0)) {
    estado = 1
  }
}

function keyPressed () {
  if (key == 'w'|| key == 'W') {
    salto ();
  }
}
