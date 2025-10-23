class DunlopLogo {
  float x, y, w, h;
  PFont font;
  
  DunlopLogo(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    font = createFont("SansSerif.bold", h * 0.55);
  }

  void display() {
    noStroke();
    fill(0);
    rect(x, y, w, h, 10);

    stroke(255);
    strokeWeight(4);
    noFill();
    rect(x + 5, y + 5, w - 10, h - 10, 8);

    fill(255);
    textAlign(CENTER, CENTER);
    textFont(font);
    text("Dunlop", x + w/2, y + h/2 + 3);
  }
}
