class Aventura {
  constructor (imagen, notas) {
    this.pantallas = imagen;
    this.hoja= 0;
    this.click= false;
    this.botonio = new Boton ();
    this.textos = notas;
  }

  mouseApretado () {
    this.click = true;
  }

  dibujar () {
    switch (this.hoja) {

    case 0: //INTRO
      image (this.pantallas[0], 0, 0, width, height);
      this.botonio.dibujar (400, 500, "Inicio");
      this.botonio.dibujar (50, 500, "Creditos");
      this.tecto (300, 100, 300, 50, 12, 300, 85, 40);
      if (this.click) {
        this.hoja = 1;
      }
      break;
      //---------------------------------------------------------------
    case 1: // ALDEA
      image (this.pantallas[1], 0, 0, width, height);
      //text (this.textos[1], 200, 200);
      this.tecto (450, 150, 300, 220, 0, 450, 50, 20);

      if (this.click) {
        this.hoja = 2;
      }
      break;
      //---------------------------------------------------------------
    case 2: //BOSQUE
      image (this.pantallas[2], 0, 0, width, height);
      this.tecto (270, 150, 300, 220, 1, 270, 75, 20);
      if (this.click) {
        this.hoja = 3;
      }
      break;
      //---------------------------------------------------------------
    case 3: //TRONO
      image (this.pantallas[3], 0, 0, width, height);
      this.tecto (270, 150, 300, 220, 2, 270, 65, 20);
      if (this.click) {
        this.hoja = 4;
      }
      break;
      //---------------------------------------------------------------
    case 4: //RUISEÑOR AUTOMATA
      image (this.pantallas[4], 0, 0, width, height);
      this.tecto (200, 450, 300, 220, 3, 200, 365, 20);
      if (this.click) {
        this.hoja = 5;
      }
      break;
      //---------------------------------------------------------------
    case 5: //ENFERMADAD
      image (this.pantallas[5], 0, 0, width, height);
      this.tecto (400, 450, 300, 220, 4, 400, 350, 19);
      if (this.click) {
        this.hoja = 6;
      }
      break;
      //---------------------------------------------------------------
    case 6: //CANTO SALVADOR
      image (this.pantallas[6], 0, 0, width, height);
      this.tecto (400, 300, 300, 220, 5, 400, 225, 19);
      if (this.click) {
        this.hoja = 7;
      }
      break;
      //---------------------------------------------------------------
    case 7: //LA BUSQUEDA DEL REGALO
      image (this.pantallas[7], 0, 0, width, height);
      if (this.click) {
        this.hoja = 8;
      }
      break;
      //---------------------------------------------------------------
    case 8: //LA PREOCUPACION
      image (this.pantallas[8], 0, 0, width, height);
      if (this.click) {
        this.hoja = 9;
      }
      break;
      //---------------------------------------------------------------
    case 9: //EL REGALO (FINAL 2)
      image (this.pantallas[9], 0, 0, width, height);
      if (this.click) {
        this.hoja = 10;
      }
      break;
      //---------------------------------------------------------------
    case 10: //LA PARCA Y EL RUISEÑOR
      image (this.pantallas[10], 0, 0, width, height);
      if (this.click) {
        this.hoja = 11;
      }
      break;
    case 11: //CANTO CONDENANTE
      image (this.pantallas[11], 0, 0, width, height);
      if (this.click) {
        this.hoja = 12;
      }
      break;
      //---------------------------------------------------------------
    case 12: //JUEGO
      image (this.pantallas[14], 0, 0, width, height);
      if (this.click) {
        this.hoja = 13;
      }
      break;
    case 13: //EL FINAL (FINAL 3)
      image (this.pantallas[12], 0, 0, width, height);
      if (this.click) {
        this.hoja = 14;
      }
      break;
      //---------------------------------------------------------------
    case 14: // CREDITOS
      image (this.pantallas[13], 0, 0, width, height);
      if (this.click) {
        this.hoja = 0;
      }
      break;
    }
    this.click = false;
  }
  tecto (posX, posY, tamX, tamY, n, posTX, posTY,tl) {
    push ();
    stroke(255, 207, 13);
    fill (0, 120);
    rectMode (CENTER);
    rect (posX, posY, tamX, tamY, 20);
    fill (255, 207, 13);
    textAlign (CENTER);
    textSize (tl);
    text (this.textos [n], posTX, posTY,300);
    pop ();
  }
}
