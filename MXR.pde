// Group 25 - Piet-Hein Schouten 3708349 - Miles Berger 2906917
// mxr logo class
class MXRLogo {
  float x, y, w, h;
  PFont font;

  MXRLogo(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    font = createFont("SansSerif.bold", h * 0.5);
  }

  void display() {
    fill(255, 130, 0);
    noStroke();
    rect(x, y, w, h, 15);

    noFill();
    stroke(255);
    strokeWeight(4);
    rect(x + 6, y + 6, w - 12, h - 12, 12);

    fill(255);
    textAlign(CENTER, CENTER);
    textFont(font);
    text("MXR", x + w/2, y + h/2);
  }
}
