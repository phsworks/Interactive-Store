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

  // note head
  fill(c);
  noStroke();
  pushMatrix();
  rotate(radians(-20));  // maakt hem iets schuin zoals echte noten
  ellipse(0, 0, 20, 15);
  popMatrix();

  // beam
  stroke(c);
  strokeWeight(2);
  line(8, 0, 8, -40);

  popMatrix();
}

  void move(){
    y -=1.5;
  }
}