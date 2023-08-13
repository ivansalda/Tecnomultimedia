void MiBoton (float xp, float yp, String tx) {
  push ();
  textSize (50);
  fill(0);
  strokeWeight (3);
  stroke(255, 207, 13);
  rect (xp, yp, 175, 75);
  fill (255, 207, 13);
  text (tx, xp+10, yp+55);
  pop();
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
  Texto [12]= "El emperador que solo podia sufrir en silencio y aceptar su final, solto una ultima lagrima antes de terminar su requiem.";
  Texto [13]= "Imagenes: Iván Saldaña y Bing Creator (IA) \nGuion: Iván Saldaña y ChatGPT (IA) \nAutor: Hans Christian Andersen ";
}
void Titulo() {
  push ();
  textSize (50);
  noStroke ();
  fill (0, 0, 0, 90);
  rect (170, 45, 285, 75);
  fill(255, 207, 13);
  pop ();
}

void CajaDeTexto (float a, float b, float c, float d) {
  noStroke ();
  fill(0, 120);
  rect (a, b, c, d);
}

void ColorDeLetras() {
  fill (255, 207, 13);
  textSize (18);
}
boolean ubicacion (float m, float i, float l) {
   return (mouseX > m && mouseY >500 && mouseX < i && mouseY < 575 && estado == l);
   
  
}
