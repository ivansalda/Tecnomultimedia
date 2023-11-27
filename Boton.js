class Boton {
  constructor () {
    //this.opasidad = 50;
    // this.colision;
  }

  dibujar (xp, yp, tx) {
    push ();
    textSize (37);
    fill(0);
    push ();
    strokeWeight (3);
    stroke(255, 207, 13);
    rect (xp, yp, 175, 75);
    pop ();

    fill (255, 207, 13);
    text (tx, xp+10, yp+55);
    pop();
  }
  colisiones () {
    if (mouseX <= 575 && mouseX >= 400 && mouseY <=  575 && mouseY >= 500) {
    }
  }
}
