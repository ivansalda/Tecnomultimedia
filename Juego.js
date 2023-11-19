class Juego {
  constructor(carlex) {
    this.hoja = 0;
    this.medidor = new Contador ();
    this.objnumero = [];
    this.pantallas = carlex;
    this.click= false;
    this.reset ();

    //-----------------------------------------------------------------
    for (let i=0; i<= 2; i ++) {
      this.objnumero[i] = new Objetivo (50+i*75);
    }
    this.objnumero[0].fijartecla('a');
    this.objnumero[1].fijartecla('s');
    this.objnumero[2].fijartecla('d');
  }
  mouseApretado () {
    this.click = true;
  }

  paginas () {
    switch (this.hoja) {
    case 0: //intro

      image (this.pantallas[0], 0, 0, width, height);
      if (this.click) {
        this.hoja = 1;
      }
      break;
    case 1: // ANTES

      image (this.pantallas[1], 0, 0, width, height);
      if (this.click) {
        this.hoja = 5;
      }
      break;
    case 2: //DESPUES
      image (this.pantallas[2], 0, 0, width, height);
      if (this.click) {
        this.hoja = 0;
      }
      break;
    case 3: //JUEGO
      background (120);
      image (this.pantallas[3], 0, 0, width, height);
      console.log (this.objnumero.length);
      this.medidor.dibujo ();
      for (let i=0; i < this.objnumero.length; i ++) {
        this.objnumero[i].dibujar();
        if ( this.objnumero[i].getpunto()) {
          this.medidor.Punto += 10;
        }
        if ( this.objnumero[i].notas.getresta()) {
          this.medidor.Punto -= 10;
        }
      }
      if ( this.medidor.Punto >= 80) {
        this.hoja = 2;
        this.reset ();
      } else if (this.medidor.Punto <= -30) {
        this.hoja = 4;
        this.reset ();
      }
      break;
    case 4: // PERDISTE
      background (0);
      textAlign (CENTER);
      fill (242, 212, 39);
      textSize (40);
      text ("PERDISTE", width/2, height/2);
      if (this.click) {
        this.hoja = 0;
      }
      break;
      //-------------------------------------------------------------------------------------
    case 5: //INSTRUCCIONES
      background (0);
      textSize(30);
       textAlign (CENTER);
      fill (242, 212, 39);
      text ("Apreta la letra 'a','s','d'\n para cantar las notas correctas", width/2, height/2);
      if (this.click) {
        this.hoja = 3;
      }
      break;
    }
    this.click = false;
  }
  reset () {
    this.medidor.Punto = 0;
    for (let i=0; i < this.objnumero.length; i ++) {
      this.objnumero[i].notas.lavuelta();
    }
  }
}
