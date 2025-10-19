class Guitar {
  float x, y, size;
  color guitarColor;


  Guitar(float startX, float startY, float s, color col) {
    x = startX;
    y = startY;
    guitarColor = col;
    size = s;
  }

  void displayAccoustic() {
    pushMatrix();
    translate(x, y);
    scale(size / 120.0);

    // Neck top
    fill(guitarColor);
    noStroke();
    triangle(-5, 8, 5, 8, 0, 4);
    rect(-6, 8, 12, 15);
    triangle(-6, 23, 6, 23, 0, 33);

    // Neck
    fill(guitarColor);
    rect(-5, 25, 10, 40);

    // Body
    fill(guitarColor);
    ellipse(0, 85, 60, 50);   // upper body
    ellipse(0, 125, 75, 60);  // lower body

    // Sound hole
    fill(#50382f);
    stroke(#000000);
    strokeWeight(1);
    circle(0, 95, 20);

    // top strings
    stroke(#262626);
    strokeWeight(1);
    line(-8, 11, 8, 11);
    line(-8, 15, 8, 15);
    line(-8, 19, 8, 19);

    // Strings
    stroke(#262626);
    strokeWeight(1);
    line(-3, 8, -3, 135);
    line(-1, 8, -1, 135);
    line(1, 8, 1, 135);
    line(3, 8, 3, 135);

    // Bridge
    noStroke();
    fill(#2b1a0d);
    rect(-7, 135, 14, 5);

    popMatrix();
  }

  void displayElectric() {
  pushMatrix();
  translate(x, y);
  scale(size / 120.0);

  // === HEADSTOCK ===
  fill(#9a9ac5);
  noStroke();
  beginShape();
  vertex(-6, 0);
  vertex(6, 0);
  vertex(9, 8);
  vertex(5, 14);
  vertex(-5, 14);
  vertex(-8, 6);
  endShape(CLOSE);

  // tuning pegs
  fill(#222222);
  for (int i = 0; i < 3; i++) ellipse(7, 3 + i * 3, 2, 2);

  // === NECK ===
  fill(#c19a6b);
  rect(-3, 14, 6, 55);

  // frets
  stroke(90);
  strokeWeight(0.7);
  for (int i = 18; i < 65; i += 4) line(-3, i, 3, i);
  noStroke();

  // === BODY (met één triangle, omgekeerd en asymmetrisch) ===
  fill(guitarColor);
  // Linker punt iets verder naar buiten en lager voor asymmetrie
  triangle(-40, 150, 45, 150, 0, 60);

  fill(#122862);
  strokeWeight(3);
  triangle(-20, 150, 25, 150, 0, 125);

  // halsverbinding
  fill(#6f4c2e);
  rect(-5, 65, 10, 5);

  // === PICKUPS ===
  fill(#111111);
  rect(-9, 80, 18, 6, 2);
  rect(-9, 93, 18, 6, 2);
  rect(-9, 106, 18, 6, 2);

  // === BRIDGE ===
  fill(#333333);
  rect(-8, 118, 16, 3);

  // === CONTROL KNOBS ===
  fill(#444444);
  ellipse(20, 100, 6, 6);
  ellipse(26, 108, 6, 6);
  ellipse(32, 116, 6, 6);

  // === STRINGS ===
  stroke(#dddddd);
  strokeWeight(0.8);
  for (int i = -2; i <= 2; i++) line(i, 0, i, 120);

  popMatrix();

  }






}