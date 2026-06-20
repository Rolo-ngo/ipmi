//Link del video: "https://youtu.be/UQd9qoMxxc8"

// Con el click pulsado + movimiento del mouse se rotan los cuadrados
// Con el click del mouse se invierten los colores de los cuadrados
// Con la cualquier tecla se reinicia el programa

PImage referencia_img;

boolean cambio_color = false;
int angulo;
int pre_mouse_x;

void setup() {
  size(800, 400);

  referencia_img = loadImage("/data/14.jpg");
}

void draw() {
  // Estilo
  background(255);
  stroke(255/2);
  strokeWeight(4);

  // Dibujo
  dibujar_grilla(10, 10, 52, 400);

  // Referencia
  int ajuste_imagen = 37;
  image(referencia_img, -250 - ajuste_imagen, 0, 650 + ajuste_imagen, 363 + ajuste_imagen);
}

void dibujar_grilla(int columnas, int filas, int tamaño, int offset) {
  for (int i = 0; i < columnas; i++) {  // Creación de columnas
    for (int j = 0; j < filas; j++) { // Creación de filas

      // Cambio de color
      if (par(i)) {
        fill(0);
      } else {
        fill(255);
      }
      if (cambio_color) {
        if (par(i)) {
          fill(255);
        } else {
          fill(0);
        }
      }
      
      float desplazamiento = calcular_desplazamiento(j);

      push();
      translate(i * tamaño + desplazamiento + offset + tamaño /2, j * tamaño + tamaño/2);
      float rotacion = map(angulo, -100, 100, -180, 180);
      rotate(radians(rotacion));

      rectMode(CENTER);
      rect(0, 0, tamaño, tamaño);
      pop();
    }
  }
}
boolean par(int num) {
  return num % 2 == 0;
}

int calcular_desplazamiento(int num) {
  if (num % 4 == 0) {
    return 0;
  } 
  else if (num % 4 == 1) {
    return 20;
  } 
  else if (num % 4 == 3) {
    return 20;
  } 
  else {
    return 40;
  }
}

void mousePressed() {
  pre_mouse_x = mouseX;
  cambio_color = !cambio_color;
  println(cambio_color);
}

void mouseDragged() {
  if (mouseX > pre_mouse_x) {
    angulo++;
  } else {
    angulo--;
  }
}

void keyPressed() {
  reinicio();
}

void reinicio() {
  cambio_color = false;
  angulo = 0;
  pre_mouse_x = 0;
}
