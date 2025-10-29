// Group 25 - Piet-Hein Schouten 3708349 - Miles Berger 2906917
// main logo class of Soundplaza
class SoundPlazaLogo {
  float x, y;
  color logoColor;
  PFont logoFont;

  SoundPlazaLogo(float x, float y, color logoColor) {
    this.x = x;
    this.y = y;
    this.logoColor = logoColor;
    logoFont = createFont("Arial Rounded MT Bold", 100);
  }

  void display() {
    pushMatrix();
    translate(x, y);
    shearX(-0.25);  // italic slant

    fill(logoColor);
    noStroke();
    textFont(logoFont);
    text("Sound", 0, 0);
    text("plaza", 220, 70);

    noFill();
    stroke(logoColor);
    strokeWeight(8);
    strokeCap(ROUND); //makes the font round

    // circle around s
    arc(20, -35, 140, 140, HALF_PI, TWO_PI + QUARTER_PI);``

    popMatrix();
  }
}
