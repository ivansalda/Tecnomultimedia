
// (mouseX > 400 && mouseY > 450 && mouseX < 575 && mouseY < 525) cuanta para el boton
void MiBoton (float valor) {
  if (valor==1) {
    float xp=400, yp=500;
    textSize (18);
    fill(0);
    strokeWeight (3);
    stroke(255, 207, 13);
    rect (xp, yp, 175, 75);
  } else if (valor == 2) {
    float xp=50, yp=500;
    textSize (18);
    fill(0);
    strokeWeight (3);
    stroke(255, 207, 13);
    rect (xp, yp, 175, 75);
  } else if (valor == 3) {
    float xp=100, yp= 530;
    textSize (18);
    fill(0);
    strokeWeight (3);
    stroke(255, 207, 13);
    circle (xp, yp, 90);
  }
}

void texto() {
  Texto [0]= "El Ruiseñor";
  Texto [1] = "En una lejana aldea, se contaba la leyenda de un ruiseñor cuyo canto era tan hermoso\n que podia curar enfermedades y traer alegria a los corazones. \n Sin embargos, el emperador desconocia la existencia de esta ave.";
  Texto [2] = "Los cortesanos encuentran al ruiseñor en un bosque y lo llevan al palacio para presentarlo al emperador. El ave canta maravillosamente y su melodía cautiva a todos los presentes.";
  Texto [3] = "El ruiseñor real se convierte en una presencia especial en el palacio, deleitando al emperador y a toda su corte con su hermoso canto. Su música llena de emoción y autenticidad toca los corazones de todos.";
  Texto [4] = "Un dia al emperador le regalan un ruiseñor mecanico el cual puede imitar el canto del ruiseñor real, este le encanta al emperador. Le deja de prestar atención al ruiseñor real y no sabe si echarlo o no.";
  Texto [5] = "Con el tiempo, el emperador cae gravemenete enfermo. Durante su enfermedad, la Parca, personificación de la muerte, se aparece ante él. El emperador teme por su vida y se siente angustiado. El ruiseñor vuelve para decidir el destino de su Suberano.";
  Texto [6] = "Comienza a cantar su melodia encantadora, ignorando la presencia de la Parca. Su canto llena de esperanza y calma al emperador senandolo de su enfermedad.";
  Texto [7] = "El ruiseñor agradecido con el emperador, le dice que se ira un tiempo para buscarlo un regalo especial.";
  Texto [8] = "Ante la tardanza de su ruiseñor el emperador se preocupa por este, mandando a sus sudbitos en su busca. Aunque no lo encuentren.";
  Texto [9] = "Con el paso del tiempo el ruiseñor volvio y no solo el, este regreso con una bandada de ruiseñores para que se unieran para cantarle a su soberano toda la vida.";
  Texto [10] = "El ruiseñor enojado por lo que habia hecho el emperador antes le pidio a la Parca que hiciera sufrir al emperador hasta que este perezca. La parca que ya habia escuchado sobre los dotes del ruiseñor, le pidio que cantara su requiem y que cuando este terminara el emperador moriria.";
  Texto [11] ="El ruiseñor canto y se regocijo durante sus cantos, viendo como el emperador sufria lentamente, viendo como cada movimiento del emperador lo hacia sufrir cada vez mas. Cuando el ruiseñor se queda satisfecho paro.";
  Texto [12]= "El emperador que solo podia sufrir en silencio y aceptar su final solo una ultima lagrima antes de terminar de su requiem.";
  Texto [13]= "Imagenes: Iván Saldaña y Bing Creator (IA) \n Guion: Iván Saldaña y ChatGPT (IA)";
}
void CajaDeTexto(float cuadro) {
  if (cuadro==1) {
    textSize (50);
    noStroke ();
    fill (0, 0, 0, 90);
    rect (170, 45, 285, 75);
    fill(255, 207, 13);
  } else if (cuadro ==2) {
    noStroke ();
    fill(0, 120);
    rect (300, 20, 300, 220);
  } else if (cuadro ==3) {
    noStroke ();
    fill(0, 120);
    rect(150, 20, 300, 200);
  } else if (cuadro ==4) {
    noStroke ();
    fill(0, 120);
    rect (300, 350, width/2, 300);
  } else if (cuadro==5) {
    noStroke ();
    fill(0, 120);
    rect (0, 400, width/2, 300);
  } else if (cuadro==6) {
    noStroke ();
    fill(0, 120);
    rect (0, 350, width/2, 300);
  } else if (cuadro ==7) {
    noStroke ();
    fill(0, 120);
    rect(150, 20, 300, 150);
  }
}

void ColorDeLetras() {
  fill (255, 207, 13);
}
