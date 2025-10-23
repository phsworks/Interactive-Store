class OpenSign {
  float x, y;      
  float w, h;      
  String message;
  color boxColor;
  color borderColor;
  color textColor;
  color dimTextColor;
  color circleColor;
  boolean[] letterOn;  
  int timer;

  OpenSign(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.message = "OPEN";
    this.boxColor = color(0);             
    this.borderColor = color(255);        
    this.textColor = color(255, 0, 0);    
    this.dimTextColor = color(100, 0, 0); 
    this.circleColor = color(0, 0, 255);  
    this.letterOn = new boolean[message.length()];
    for (int i = 0; i < letterOn.length; i++) letterOn[i] = false;
    timer = 0;
  }

  void update() {
    timer++;
    int index = (timer / 20) % message.length(); // change every ~0.33 sec
    for (int i = 0; i < letterOn.length; i++) {
      letterOn[i] = (i == index);
    }
  }

  void display() {
    // Draw black rectangle for the sign
    fill(boxColor);
    stroke(borderColor);
    strokeWeight(4);
    rectMode(CENTER);
    rect(x, y, w, h, 10);

    // Draw blue circular border inside the rectangle
    noFill();
    stroke(circleColor);
    strokeWeight(6);
    ellipse(x, y, w - 20, h - 20);

    textAlign(CENTER, CENTER);
    textSize(h / 2);
    for (int i = 0; i < message.length(); i++) {
      float letterX = x + map(i, 0, message.length() - 1, -w/4, w/4);

      if (letterOn[i]) {
        // Glow effect for lit letter
        for (int j = 1; j <= 3; j++) {
          fill(red(textColor), green(textColor), blue(textColor), 50/j);
          textSize(h/2 + j*8);
          text(message.charAt(i), letterX, y);
        }
        fill(textColor);
      } else {
        fill(dimTextColor); // dimmed red letter
      }

      textSize(h / 2);
      text(message.charAt(i), letterX, y);
    }
  }
}
