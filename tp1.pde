void setup() {
  size(800, 400);
  background(224, 229, 236);
  
  PVector cat_offset = new PVector(400, 0);
  
  cat(cat_offset);

  PImage img;
  img = loadImage("original.png");
  image(img, 0, 0);

  save("tp1_image.png");
}

void cat(PVector offset) {
  // BG
  generateQuad(offset, 0, 0, 276, 0, 300, 400, 0, 400, color(249, 208, 38), true);
  generateQuad(offset, 276, 0, 300, 400, 400, 400, 400, 0, color(224, 49, 11), true);
  generateQuad(offset, 15, 67, 138, 64, 127, 159, 17, 158, color(224, 49, 11), true);

  // Cola
  generateTriangle(offset, 259, 266, 399, 179, 356, 266, color(238, 104, 15), true);
  generateQuad(offset, 259, 266, 356, 266, 329, 400, 250, 400, color(28, 154, 200), true);

  // Cuello
  generateQuad(offset, 227, 287, 313, 286, 314, 400, 227, 400, color(205, 25, 24), true);
  generateQuad(offset, 227, 287, 313, 286, 313, 150, 227, 150, color(243, 152, 3), true);
  generateTriangle(offset, 159, 400, 227, 225, 227, 400, color(81, 173, 120), true);
  generateTriangle(offset, 148, 223, 226, 225, 159, 400, color(33, 100, 182), true);

  generateQuad(offset, 30, 397, 90, 322, 150, 306, 107, 399, color(80, 124, 163), true);
  generateTriangle(offset, 106, 399, 150, 306, 160, 398, color(33, 100, 182), true);

  // Oreja Derecha
  generateTriangle(offset, 299, 86, 367, 8, 346, 111, color(233, 77, 107), true);
  generateTriangle(offset, 249, 80, 299, 86, 367, 8, color(101, 145, 199), true);

  // Oreja Izquierda
  generateTriangle(offset, 97, 101, 88, 5, 128, 91, color(211, 170, 200), true);
  generateTriangle(offset, 109, 49, 88, 5, 130, 22, color(211, 170, 200), true);
  generateQuad(offset, 109, 49, 130, 22, 188, 75, 128, 91, color(241, 134, 65), true);
  //generateQuad(offset, 130, 22, 346, 111, 188, 75, 128, 91, color(241, 134, 65), true);

  // Cabeza
  generateTriangle(offset, 188, 117, 212, 76, 213, 140, color(39, 173, 224), true);
  generateQuad(offset, 188, 115, 213, 141, 212, 167, 179, 133, color(178, 223, 42), true);
  generateQuad(offset, 95, 100, 213, 71, 179, 133, 99, 133, color(129, 213, 164), true);
  generateQuad(offset, 100, 133, 148, 121, 147, 224, 114, 179, color(70, 192, 107), true);
  generateQuad(offset, 146, 123, 199, 199, 162, 234, 143, 223, color(105, 203, 227), true);
  generateQuad(offset, 178, 166, 214, 154, 213, 190, 198, 197, color(105, 203, 227), true);
  generateQuad(offset, 203, 193, 226, 217, 227, 258, 160, 233, color(181, 255, 64), true);
  generateQuad(offset, 220, 72, 297, 86, 295, 123, 229, 155, color(241, 90, 22), true);
  generateQuad(offset, 292, 85, 350, 111, 343, 142, 294, 119, color(44, 124, 200), true);
  generateQuad(offset, 252, 166, 310, 126, 299, 167, 274, 182, color(239, 130, 44), true);
  generateQuad(offset, 309, 126, 344, 143, 314, 210, 272, 180, color(100, 202, 144), true);
  generateTriangle(offset, 263, 248, 274, 180, 311, 209, color(20, 126, 186), true);
  generateQuad(offset, 250, 165, 275, 182, 267, 249, 225, 255, color(119, 205, 237), true);


  // Ojo Izquierdo
  generateTriangle(offset, 120, 129, 155, 121, 155, 163, color(248, 108, 107), true);
  generateEllipse(offset, 168, 140, 40, 55, color(247, 219, 6), true, CENTER);
  generateEllipse(offset, 168, 140, 20, 40, color(5, 7, 0), false, CENTER);

  // Ojo Derecho
  generateTriangle(offset, 228, 153, 258, 118, 266, 163, color(247, 223, 14), true);
  generateTriangle(offset, 275, 119, 311, 127, 286, 154, color(253, 106, 116), true);
  generateEllipse(offset, 268, 137, 40, 55, color(38, 124, 208), true, CENTER);
  generateEllipse(offset, 268, 137, 20, 40, color(5, 7, 0), false, CENTER);

  // Nariz
  generateQuad(offset, 214, 72, 222, 72, 233, 200, 211, 192, color(247, 131, 132), true);
  generateTriangle(offset, 204, 193, 247, 193, 227, 219, color(35, 121, 216), true);

  // Boca
  fill(0);
  stroke(0);
  strokeWeight(4);

  line((207 + offset.x), (234 + offset.y), (228 + offset.x), (224 + offset.y));
  line((228 + offset.x), (224 + offset.y), (244 + offset.x), (236 + offset.y));

  //bigotes
  fill(0);
  stroke(0);
  strokeWeight(4);

    // Izquierdo
  line((181 + offset.x), (205 + offset.y), (69 + offset.x), (203 + offset.y));
  line((69 + offset.x), (203 + offset.y), (7 + offset.x), (274 + offset.y));

  line((181 + offset.x), (205 + offset.y), (110 + offset.x), (214 + offset.y));
  line((110 + offset.x), (214 + offset.y), (58 + offset.x), (253 + offset.y));

  line((184 + offset.x), (213 + offset.y), (118 + offset.x), (224 + offset.y));
  line((118 + offset.x), (224 + offset.y), (72 + offset.x), (273 + offset.y));

  line((186 + offset.x), (225 + offset.y), (137 + offset.x), (230 + offset.y));
  line((137 + offset.x), (230 + offset.y), (92 + offset.x), (253 + offset.y));

    // Derecho
  line((278 + offset.x), (201 + offset.y), (331 + offset.x), (191 + offset.y));
  line((331 + offset.x), (191 + offset.y), (383 + offset.x), (209 + offset.y));

  line((318 + offset.x), (200 + offset.y), (355 + offset.x), (211 + offset.y));
  line((355 + offset.x), (211 + offset.y), (379 + offset.x), (235 + offset.y));

  line((279 + offset.x), (207 + offset.y), (342 + offset.x), (215 + offset.y));
  line((342 + offset.x), (215 + offset.y), (372 + offset.x), (265 + offset.y));

  line((275 + offset.x), (217 + offset.y), (314 + offset.x), (223 + offset.y));
  line((314 + offset.x), (223 + offset.y), (342 + offset.x), (255 + offset.y));
}

void generateTriangle(PVector offset, int x1, int y1, int x2, int y2, int x3, int y3, color shapeColor, boolean use_stroke) {
  // Estilo
  fill(shapeColor);

  // Con/Sin Stroke
  if(use_stroke) {
    stroke(0);
    strokeWeight(3);
  }
  else {
    noStroke();
  }

  // Forma
  triangle((x1 + offset.x), (y1 + offset.y), (x2 + offset.x), (y2 + offset.y), (x3 + offset.x), (y3 + offset.y));
}

void generateQuad(PVector offset, int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, color shapeColor, boolean use_stroke) {
  // Estilo
  fill(shapeColor);

  // Con/Sin Stroke
  if(use_stroke) {
    stroke(0);
    strokeWeight(3);
  }
  else {
    noStroke();
  }

  // Forma
  quad((x1 + offset.x), (y1 + offset.y), (x2 + offset.x), (y2 + offset.y), (x3 + offset.x), (y3 + offset.y), (x4 + offset.x), (y4 + offset.y));
}

void generateEllipse(PVector offset, int x, int y, int w, int h, color shapeColor, boolean use_stroke, int alignment) {
  // Estilo
  fill(shapeColor);

  // Con/Sin Stroke
  if(use_stroke) {
    stroke(4);
    strokeWeight(3);
  }
  else {
    noStroke();
  }

  // Alineamiento
  ellipseMode(alignment);

  // Forma
  ellipse((x + offset.x), (y + offset.y), w, h);
}