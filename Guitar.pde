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
    fill(#373332);
    noStroke();
    triangle(-5, 8, 5, 8, 0, 4);
    rect(-6, 8, 12, 15);
    triangle(-6, 23, 6, 23, 0, 33);

    // Neck
    fill(#373332);
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

    // Neck top
    fill(#c7ac70);
    noStroke();
    triangle(-5, 8, 5, 8, 0, 4);
    rect(-6, 8, 12, 15);
    triangle(-6, 23, 6, 23, 0, 33);

    // Neck
    fill(#b7aa98);
    rect(-5, 15, 10, 100);

    // Body
    fill(guitarColor);
    ellipse(0, 85, 48, 35);   // upper body
    ellipse(0, 125, 50, 60);  // lower body
    fill(#122862);
    ellipse(-13, 62, 16, 30);
    ellipse(13, 62, 16, 30);

    // sound buttons
    fill(#373c3c);
    strokeWeight(1);
    stroke(#000000);
    circle(10, 120, 5);
    circle(15, 130, 5);
    // rectangles
    fill(#cfcece);
    stroke(#000000);
    rect(-5, 80, 10, 3, 20);
    rect(-5, 90, 10, 3, 20);
    rect(-5, 100, 10, 3, 20);

    // top strings
    stroke(#b5b5b5);
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

 void displayElectric2() {
  pushMatrix();
  translate(x, y);
  scale(size / 120.0);

  // Neck top
  fill(#c7ac70);
  noStroke();
  triangle(-5, 8, 5, 8, 0, 4);
  rect(-6, 8, 12, 15);
  triangle(-6, 23, 6, 23, 0, 33);

  // Neck
  fill(#b7aa98);
  rect(-5, 15, 10, 100);

  // Body (Flying V)
  fill(guitarColor);
  stroke(#000000);
  strokeWeight(1);
  triangle(-40, 165, 40, 155, 0, 65);
  fill(#122862);
  strokeWeight(0);
  triangle(-25, 165, 20, 160, 0, 137);

  // sound buttons
  fill(#373c3c);
  strokeWeight(1);
  stroke(#000000);
  circle(14, 120, 5);
  circle(18, 130, 5);

  // pickups (rectangles)
  fill(#cfcece);
  stroke(#000000);
  rect(-5, 90, 10, 3, 20);
  rect(-5, 100, 10, 3, 20);
  rect(-5, 110, 10, 3, 20);

  // top strings
  stroke(#b5b5b5);
  strokeWeight(1);
  line(-8, 11, 8, 11);
  line(-8, 15, 8, 15);
  line(-8, 19, 8, 19);

  // Strings
  stroke(#262626);
  strokeWeight(1);
  line(-3, 8, -3, 125);
  line(-1, 8, -1, 125);
  line(1, 8, 1, 125);
  line(3, 8, 3, 125);

  // Bridge
  noStroke();
  fill(#2b1a0d);
  rect(-7, 125, 14, 5);

  popMatrix();
}

}