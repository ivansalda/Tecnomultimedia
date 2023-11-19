//link al video: https://youtu.be/Cio8-raPyvA
let objJuego;
let pantallas;
let tamX = 600, tamY= 600;
let notaM;
//----------------------------------------Declaraciones-----------------------------------
function preload () {
  notaM = loadImage ('data/Notamusical.png');
  pantallas= [];
  for (let i=0; i<= 3; i ++) {
    pantallas [i] = loadImage ('data/Pantalla'+i+'.jpeg');
  }
}
function setup() {
  let canvas = createCanvas( tamX, tamY );
  canvas.position(windowWidth/2-width/2, windowHeight/2-height/2);
  objJuego = new Juego(pantallas);
}


function draw() {
  background (120);
  objJuego.paginas ();
}

function mouseClicked (){
objJuego.mouseApretado () 

}
