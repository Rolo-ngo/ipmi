// Cargar recursos
PImage logo_img, stars_img, intro_img, villanos_img, darth_vader_img, palpatine_img, tatooine_img, luke_img, tantive_img, leia_img, cantina_img, han_solo_img, final_img;
PFont mi_fuente;

// Estados
int estado_actual;
int contador;
boolean boton_estado_actual;
float opacidad_imagen;

// Pantallas
int MENU = 1;
int PANTALLA1 = 2;
int PANTALLA2 = 3;
int PANTALLA3 = 4;
int PANTALLA4 = 5;
int PANTALLA5 = 6;
int PANTALLA6 = 7;
int PANTALLA7 = 8;
int REINICIO = 0;

// Botón
float botonXpos;
float botonYpos;
int botonXtam;
int botonYtam;

// Texto
float textXpos;
float textYpos;
int textXtam;
int textYtam;

void setup() {
  size(640, 480);

  // Cargar imágenes
  logo_img = loadImage("data/imagenes/logo.png");
  stars_img = loadImage("data/imagenes/stars.jpeg");
  intro_img = loadImage("data/imagenes/intro.jpeg");
  villanos_img = loadImage("data/imagenes/villanos.jpeg");
  darth_vader_img = loadImage("data/imagenes/darth_vader.png");
  palpatine_img = loadImage("data/imagenes/palpatine.png");
  tatooine_img = loadImage("data/imagenes/tatooine.jpeg");
  luke_img = loadImage("data/imagenes/luke.png");
  tantive_img = loadImage("data/imagenes/tantive.jpeg");
  leia_img = loadImage("data/imagenes/leia.png");
  cantina_img = loadImage("data/imagenes/cantina.jpg");
  han_solo_img = loadImage("data/imagenes/han_solo.png");
  final_img = loadImage("data/imagenes/final.jpg");

  // Cargar fuentes
  mi_fuente = loadFont("data/fuentes/Calibri-48.vlw");
  textFont(mi_fuente);

  // Estados
  estado_actual = 1;
  contador = 0;
  boton_estado_actual = false;

  textAlign(CENTER, CENTER);

  // Botón
  botonXpos = width/2;
  botonYpos = height - height/5;
  botonXtam = 100;
  botonYtam = 60;

  // Opacidad
  opacidad_imagen = 0;
}

void draw() {
  // Menu
  if (estado_actual == MENU) {
    pantalla_menu();
  }

  // PANTALLA 1 //
  if (estado_actual == PANTALLA1) {
    pantalla_1();
  }

  // PANTALLA 2 //
  if (estado_actual == PANTALLA2) {
    pantalla_2();
  }

  // PANTALLA 3 //
  if (estado_actual == PANTALLA3) {
    pantalla_3();
  }

  // PANTALLA 4 //
  if (estado_actual == PANTALLA4) {
    pantalla_4();
  }

  // PANTALLA 5 //
  if (estado_actual == PANTALLA5) {
    pantalla_5();
  }

  // PANTALLA 6 //
  if (estado_actual == PANTALLA6) {
    pantalla_6();
  }

  // PANTALLA 7 //
  if (estado_actual == PANTALLA7) {
    pantalla_7();
  }

  // REINICIO //
  if (estado_actual == REINICIO) {
    reinicio();
  }
}

void pantalla_menu() {
  background(0);
  tint(255);

  image(stars_img, 0, 0, 1920/2, 1080/2);
  image(logo_img, width/2 - (width/2)/2, height/2 - (height/2)/2, width/2, height/2+60);

  boton_inicio();

  if (boton_estado_actual) {
    estado_actual = PANTALLA1;
    contador = 0;
    boton_estado_actual = false;
  }
}

void pantalla_1() {
  background(0);
  textSize(24);
  contador++;

  // Fade-in
  if (contador < 120) {
    opacidad_imagen = map(contador, 0, 120, 0, 255);
  }
  // Fade Final
  if (contador > 580) {
    opacidad_imagen = map(contador, 580, 700, 255, 0);
  }

  // Fondo
  tint(255, opacidad_imagen);
  image(intro_img, 0, 0);
  fill(255, opacidad_imagen);

  // texto 1
  float opacidad_texto1 = map(contador, 120, 200, 0, 255);
  float textXmov1 = map(contador, 240, 1200, 280, 0);
  if (contador > 580) {
    opacidad_texto1 = map(contador, 580, 700, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto1);
  text("La galaxia está dominada por unos villanos", textXpos + textXmov1, textYpos + 220);

  //texto 2
  float opacidad_texto2 = map(contador, 260, 340, 0, 255);
  float textXmov2 = map(contador, 240, 1200, 340, 0);
  if (contador > 580) {
    opacidad_texto2 = map(contador, 580, 700, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto2);
  text("Estos villanos sumen a la galaxia en terror y caos", textXpos + textXmov2, textYpos + 250);

  // Texto 3
  float opacidad_texto3 = map(contador, 420, 500, 0, 255);
  float textXmov3 = map(contador, 240, 1600, 380, 0);
  if (contador > 580) {
    opacidad_texto3 = map(contador, 580, 700, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto3);
  text("Y planean destruir todo a su paso", textXpos + textXmov3, textYpos + 290);

  // Finalizar pantalla
  if (contador > 700) {
    estado_actual = PANTALLA2;
    contador = 0;
    boton_estado_actual = false;
  }
}

void pantalla_2() {
  background(0);
  contador++;

  // Fondo
  opacidad_imagen = map(contador, 0, 60, 0, 255);
  tint(255, opacidad_imagen);
  image(villanos_img, -180, 0, 1920/2, 1080/2);
  fill(255, opacidad_imagen);

  // Darth Vadar
  //opacidad_imagen = map(contador, 0, 60, 0, 255);
  float imageXmov1 = -80;

  if (contador <= 60) {
    imageXmov1 = map(contador, 0, 60, -400, -80);
  }
  if (contador > 60 && contador <= 350) {
    imageXmov1 = -80;
  }
  if (contador > 350 && contador <= 450) {
    imageXmov1 = map(contador, 350, 450, -80, -400);
  }
  if (contador > 450) {
    imageXmov1 = -400;
  }

  tint(255, opacidad_imagen);
  image(darth_vader_img, imageXmov1, 0, 1190/3, 2000/3);
  fill(255, opacidad_imagen);

  // Nombre
  textSize(42);
  textAlign(CENTER);
  float opacidad_texto1 = map(contador, 60, 100, 0, 255);
  if (contador > 300) {
    opacidad_texto1 = map(contador, 300, 450, 255, 0);
  }
  fill(255, 0, 0, opacidad_texto1);
  text("Darth Vader", textXpos + 420, textYpos + 70);

  // Descripción
  textSize(24);
  float opacidad_texto2 = map(contador, 100, 140, 0, 255);
  if (contador > 300) {
    opacidad_texto2 = map(contador, 300, 450, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto2);
  text("Lord Sith. Comandante Imperial", textXpos + 420, textYpos + 115);

  textSize(16);
  textAlign(LEFT);

  float opacidad_texto3 = map(contador, 140, 180, 0, 255);
  if (contador > 300) {
    opacidad_texto3 = map(contador, 300, 450, 255, 0);
  }

  fill(255, 255, 255, opacidad_texto3);
  text("Porta una armadura completamente negra y domina\n el lado oscuro de la fuerza.", textXpos + 250, textYpos + 170);
  text("Es un figura que inspira miedo hasta a sus propios aliados.", textXpos + 250, textYpos + 205);

  fill(255, 0, 0, opacidad_texto3);
  text("Nivel de Amenaza: Extremadamente poderoso\ny Experto en combate", textXpos + 250, textYpos + 235);

  // Finalizar pantalla
  if (contador > 450) {
    estado_actual = PANTALLA3;
    contador = 0;
    boton_estado_actual = false;
  }
}

void pantalla_3() {
  background(0);
  contador++;

  // Fondo
  opacidad_imagen = map(contador, 0, 60, 0, 255);
  tint(255, opacidad_imagen);
  image(villanos_img, -180, 0, 1920/2, 1080/2);
  fill(255, opacidad_imagen);
  float imageXmov1 = -80;

  if (contador <= 60) {
    imageXmov1 = map(contador, 0, 60, -400, -80);
  }
  if (contador > 60 && contador <= 350) {
    imageXmov1 = -80;
  }
  if (contador > 350 && contador <= 450) {
    imageXmov1 = map(contador, 350, 450, -80, -400);
  }
  if (contador > 450) {
    imageXmov1 = -400;
  }

  tint(255, opacidad_imagen);
  image(palpatine_img, imageXmov1, 0, 1190/3, 2000/3);
  fill(255, opacidad_imagen);

  // Nombre
  textSize(42);
  textAlign(CENTER);
  float opacidad_texto1 = map(contador, 60, 100, 0, 255);
  if (contador > 300) {
    opacidad_texto1 = map(contador, 300, 450, 255, 0);
  }
  fill(255, 0, 0, opacidad_texto1);
  text("Emperador Palpatine", textXpos + 420, textYpos + 70);

  // Descripción
  textSize(24);
  float opacidad_texto2 = map(contador, 100, 140, 0, 255);
  if (contador > 300) {
    opacidad_texto2 = map(contador, 300, 450, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto2);
  text("Líder Supremo del Imperio Galáctico", textXpos + 420, textYpos + 115);

  textSize(16);
  textAlign(LEFT);

  float opacidad_texto3 = map(contador, 140, 180, 0, 255);
  if (contador > 300) {
    opacidad_texto3 = map(contador, 300, 450, 255, 0);
  }

  fill(255, 255, 255, opacidad_texto3);
  text("Manipula la galaxia desde las sombras utilizando \nel lado oscuro de la Fuerza.", textXpos + 250, textYpos + 170);
  text("Es extremadamente inteligente, cruel y poderoso.", textXpos + 250, textYpos + 205);

  fill(255, 0, 0, opacidad_texto3);
  text("Nivel de Amenaza: Máxima autoridad del Imperio", textXpos + 250, textYpos + 235);

  // Finalizar pantalla
  if (contador > 450) {
    estado_actual = PANTALLA4;
    contador = 0;
    boton_estado_actual = false;
  }
}

void pantalla_4() {
  background(0);
  textSize(24);
  contador++;

  // Fade-in
  if (contador < 120) {
    opacidad_imagen = map(contador, 0, 120, 0, 255);
  }
  // Fade Final
  if (contador > 580) {
    opacidad_imagen = map(contador, 580, 700, 255, 0);
  }

  // Fondo
  tint(255, opacidad_imagen);
  image(stars_img, 0, 0);
  fill(255, opacidad_imagen);

  // texto 1
  float opacidad_texto1 = map(contador, 120, 200, 0, 255);
  float textXmov1 = map(contador, 240, 1200, 280, 0);
  if (contador > 580) {
    opacidad_texto1 = map(contador, 580, 700, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto1);
  text("Pero tres heroes", textXpos + textXmov1, textYpos + 220);

  //texto 2
  float opacidad_texto2 = map(contador, 260, 340, 0, 255);
  float textXmov2 = map(contador, 240, 1200, 340, 0);
  if (contador > 580) {
    opacidad_texto2 = map(contador, 580, 700, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto2);
  text("Están dispuestos a vencerlos", textXpos + textXmov2, textYpos + 250);

  // Texto 3
  float opacidad_texto3 = map(contador, 420, 500, 0, 255);
  float textXmov3 = map(contador, 240, 1600, 380, 0);
  if (contador > 580) {
    opacidad_texto3 = map(contador, 580, 700, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto3);
  text("Y restaurar la paz en la galaxia", textXpos + textXmov3, textYpos + 290);

  // Finalizar pantalla
  if (contador > 580) {
    estado_actual = PANTALLA5;
    contador = 0;
    boton_estado_actual = false;
  }
}

void pantalla_5() {
  background(0);
  contador++;

  // Fondo
  opacidad_imagen = map(contador, 0, 60, 0, 255);
  tint(255, opacidad_imagen);
  image(tatooine_img, -180, 0, 1920/2, 1080/2);
  fill(255, opacidad_imagen);
  float imageYmov1 = 480;

  if (contador <= 60) {
    imageYmov1 = map(contador, 0, 60, 480, 80);
  }
  if (contador > 60 && contador <= 350) {
    imageYmov1 = 80;
  }
  if (contador > 350 && contador <= 450) {
    imageYmov1 = map(contador, 350, 450, 80, 480);
  }
  if (contador > 450) {
    imageYmov1 = 480;
  }

  tint(255, opacidad_imagen);
  image(luke_img, 125, imageYmov1, 609/1.5, 801/1.5);
  fill(255, opacidad_imagen);

  // Nombre
  textSize(42);
  textAlign(CENTER);
  float opacidad_texto1 = map(contador, 60, 100, 0, 255);
  if (contador > 300) {
    opacidad_texto1 = map(contador, 300, 450, 255, 0);
  }
  fill(255, 0, 0, opacidad_texto1);
  text("Luke Skywalker", width/2, 70);

  // Rect
  noStroke();
  float opacidad_rect = map(contador, 60, 100, 0, 220);
  if (contador > 450) {
    opacidad_rect = map(contador, 300, 450, 220, 0);
  }
  rectMode(CENTER);
  fill(0, 0, 0, opacidad_rect);
  rect(width/2, height/2 + 200, 520, 300);

  // Descripción
  textSize(18);
  textAlign(LEFT, LEFT);
  float opacidad_texto2 = map(contador, 100, 140, 0, 255);
  if (contador > 300) {
    opacidad_texto2 = map(contador, 300, 450, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto2);
  text("Luke Skywalker es un muchacho del planeta Tatooine que descubre \nun mensaje de la Princesa Leia conoce a Obi-Wan Kenobi, que le \nmuestra su conexión con la Fuerza.\nTras perder a su familia a manos del Imperio, se une a la Rebelión, \ny destruye la Estrella de la Muerte usando la Fuerza.", 80, 320);

  // Finalizar pantalla
  if (contador > 450) {
    estado_actual = PANTALLA6;
    contador = 0;
    boton_estado_actual = false;
  }
}

void pantalla_6() {
  background(0);
  contador++;

  // Fondo
  opacidad_imagen = map(contador, 0, 60, 0, 255);
  tint(255, opacidad_imagen);
  image(tantive_img, -280, -70, 1280/1.15, 720/1.15);
  fill(255, opacidad_imagen);
  float imageYmov1 = 480;

  if (contador <= 60) {
    imageYmov1 = map(contador, 0, 60, 480, 80);
  }
  if (contador > 60 && contador <= 350) {
    imageYmov1 = 80;
  }
  if (contador > 350 && contador <= 450) {
    imageYmov1 = map(contador, 350, 450, 80, 480);
  }
  if (contador > 450) {
    imageYmov1 = 480;
  }

  tint(255, opacidad_imagen);
  image(leia_img, 125, imageYmov1, 977/3, 1450/3);
  fill(255, opacidad_imagen);

  // Nombre
  textSize(42);
  textAlign(CENTER);
  float opacidad_texto1 = map(contador, 60, 100, 0, 255);
  if (contador > 300) {
    opacidad_texto1 = map(contador, 300, 450, 255, 0);
  }
  fill(255, 0, 0, opacidad_texto1);
  text("Leia Skywalker", width/2, 70);

  // Rect
  noStroke();
  float opacidad_rect = map(contador, 60, 100, 0, 220);
  if (contador > 450) {
    opacidad_rect = map(contador, 300, 450, 220, 0);
  }
  rectMode(CENTER);
  fill(0, 0, 0, opacidad_rect);
  rect(width/2, height/2 + 200, 520, 300);

  // Descripción
  textSize(18);
  textAlign(LEFT, LEFT);
  float opacidad_texto2 = map(contador, 100, 140, 0, 255);
  if (contador > 300) {
    opacidad_texto2 = map(contador, 300, 450, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto2);
  text("Leia Organa es una princesa y líder rebelde capturada por el Imperio \ntras robar los planos de la Estrella de la Muerte. Logra enviar un \nmensaje de ayuda que inicia su rescate y luego apoya a la Rebelión \nen la destrucción de la Estrella de la Muerte.", 80, 320);

  // Finalizar pantalla
  if (contador > 450) {
    estado_actual = PANTALLA7;
    contador = 0;
    boton_estado_actual = false;
  }
}

void pantalla_7() {
  background(0);
  contador++;

  // Fondo
  opacidad_imagen = map(contador, 0, 60, 0, 255);
  tint(255, opacidad_imagen);
  image(cantina_img, -280, -70, 1920/2, 1080/2);
  fill(255, opacidad_imagen);
  float imageYmov1 = 480;

  if (contador <= 60) {
    imageYmov1 = map(contador, 0, 60, 480, 80);
  }
  if (contador > 60 && contador <= 350) {
    imageYmov1 = 80;
  }
  if (contador > 350 && contador <= 450) {
    imageYmov1 = map(contador, 350, 450, 80, 480);
  }
  if (contador > 450) {
    imageYmov1 = 480;
  }

  tint(255, opacidad_imagen);
  image(han_solo_img, 120, imageYmov1, 598, 417);
  fill(255, opacidad_imagen);

  // Nombre
  textSize(42);
  textAlign(CENTER);
  float opacidad_texto1 = map(contador, 60, 100, 0, 255);
  if (contador > 300) {
    opacidad_texto1 = map(contador, 300, 450, 255, 0);
  }
  fill(255, 0, 0, opacidad_texto1);
  text("Han Solo", width/2, 70);

  // Rect
  noStroke();
  float opacidad_rect = map(contador, 60, 100, 0, 220);
  if (contador > 450) {
    opacidad_rect = map(contador, 300, 450, 220, 0);
  }
  rectMode(CENTER);
  fill(0, 0, 0, opacidad_rect);
  rect(width/2, height/2 + 200, 520, 300);

  // Descripción
  textSize(18);
  textAlign(LEFT, LEFT);
  float opacidad_texto2 = map(contador, 100, 140, 0, 255);
  if (contador > 300) {
    opacidad_texto2 = map(contador, 300, 450, 255, 0);
  }
  fill(255, 255, 0, opacidad_texto2);
  text("Han Solo es un contrabandista y piloto del Halcón Milenario que \ntrabaja por dinero.Al principio se muestra egoísta y solo quiere \npagar sus deudas con Jabba el Hutt.Ayuda a Luke, Obi-Wan y Leia \na escapar de la Estrella de la Muerte por interés.Al final termina \napoyando a la Rebelión y empieza su camino como héroe.", 80, 320);

  // Finalizar pantalla
  if (contador > 450) {
    estado_actual = REINICIO;
    contador = 0;
    boton_estado_actual = false;
  }
}

void reinicio() {
  background(0);
  fill(255);

  // Fondo
  tint(255);
  image(final_img, 0, 10, 800/1, 450/1);
  fill(255, opacidad_imagen);

  boton_reiniciar();

  if (boton_estado_actual == true) {
    reiniciar();
  }
}
