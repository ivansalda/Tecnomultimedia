let piso =275, vel = 0;

//-------------------------------------------------------------
function salto () {
  if ( moviY >= piso ) {
    vel = -8;
  }
}
function colisiones () {
  for (let i=0; i<3; i++) {
    if (terosX [i] < moviX+10 && ! agachado && terosX[i] > moviX-10) {
      estado = 5;
    }
  }
  for (let i=0; i<3; i++) {
    if (cactusX [i]< moviX +10 && ! aire && cactusX [i]> moviX -10)
      estado = 5;
  }
}
function reinicio () {
  estado = 2;
  moviX= 50;
  ubiFX= 0;
  terosX [0] = 1200;
  terosX [1] = 1400;
  terosX [2]= 1900;
  cactusX [0] = 600;
  cactusX [1] = 1000;
  cactusX [2] = 1700;
}
function boton (xi, yi,xd,xy,l){
 return (mouseX > xi && mouseY > yi && mouseX < xd && mouseY < xy && estado == l);

}
