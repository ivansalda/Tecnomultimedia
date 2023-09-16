let moviX = 50, moviY = 275;
let agachado = false;
let aire = false;
let c = 1, t = 4;

//-----------------------------------------------------------------

function dino () {

  moviY += vel
    if (moviY<piso) {
    vel+=0.30;
    aire = true
  } else {
    moviY = piso
      vel = 0;
    aire = false
  }
  if (keyIsPressed && key == 's' ) {
    agachado = true;
    rect (moviX, 300, 75, 25);
  } else {
    image (fotos [c], moviX, moviY);
    agachado = false;
  }
  if (frameCount %30 == 0) {
    if (c == 1) {
      c = 2;
    } else if (c== 2) {
      c = 1;
    }
  }
}
//-------------------------------------------------------------------------

function tero (i) {
  image (fotos[t], terosX [i], ty );
  terosX [i] -=2;
  if (frameCount %25 == 0) {
    if (t == 4) {
      t = 5;
    } else if (t== 5) {
      t = 4;
    }
  }
}

//---------------------------

function cactus (i) {
  image (fotos[3], cactusX [i], cy);
  cactusX [i] -=2;
}
