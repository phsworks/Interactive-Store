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




}