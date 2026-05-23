void mousePressed() {
  if ((mouseX > botonXpos - botonXtam/2) && mouseX < (botonXpos + botonXtam/2) && (mouseY > botonYpos - botonYtam/2) && (mouseY < botonYpos + botonYtam/2)) {
    boton_estado_actual = true;
  }
  println(mouseX, mouseY);
}

void boton_inicio() {
  boolean mouse_encima = false;

  if ((mouseX > botonXpos - botonXtam/2) && mouseX < (botonXpos + botonXtam/2) && (mouseY > botonYpos - botonYtam/2) && (mouseY < botonYpos + botonYtam/2)) {
    mouse_encima = true;
  } else {
    mouse_encima = false;
  }

  if (mouse_encima) {
    fill(255, 0, 0);
  } else {
    fill(255, 233, 25);
  }

  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  //rect(botonXpos, botonYpos, botonXtam, botonYtam);
  textSize(32);
  text("Inicio", botonXpos, botonYpos);
}

void boton_reiniciar() {
  boolean mouse_encima = false;

  if ((mouseX > botonXpos - botonXtam/2) && mouseX < (botonXpos + botonXtam/2) && (mouseY > botonYpos - botonYtam/2) && (mouseY < botonYpos + botonYtam/2)) {
    mouse_encima = true;
  } else {
    mouse_encima = false;
  }

  if (mouse_encima) {
    fill(255, 0, 0);
  } else {
    fill(255, 233, 25);
  }

  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  //rect(botonXpos, botonYpos, botonXtam, botonYtam);
  textSize(32);
  text("Reiniciar", botonXpos, botonYpos);
}

void reiniciar() {
  boton_estado_actual = false;
  contador = 0;
  opacidad_imagen = 0;
  estado_actual = 1;
}
