class Note {
  float x, y, size;
  color c;

  Note(float startX, float startY, float s, color col) {
    x = startX;
    y = startY;
    size = s;
    c = col;
  }

  void display() {
    pushMatrix();
    translate(x, y);
    scale(size / 100.0);

    fill(c);
    noStroke();
    ellipse(0, 0, 20, 15); // note head

    stroke(c);
    strokeWeight(3);
    line(8, 0, 8, -40); // stem

    noFill();
    strokeWeight(3);
    bezier(8, -40, 25, -50, 25, -20, 8, -25); // flag

    popMatrix();
  }

  void move(){
    y -=1.5;
  }
}