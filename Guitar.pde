class Guitar{
  float x, y;
  color guitarColor;
  float size;


  Guitar(float startX, float startY, float s, color col){
    x = startX;
    y = startY;
    guitarColor = col;
    size = s;
  }
  

  void display(){

  pushMatrix();
  translate(x, y);
  scale(size / 120);

  // top
  fill(guitarColor);
  noStroke();
  triangle(293, 302, 303, 302, 298, 299);
  fill(guitarColor);
  noStroke();
  rect(292, 302, 12, 15);
  triangle(292, 317, 304, 317, 298, 325);

  // body & neck
  rect(293, 320, 10, 50);
  fill(guitarColor);
  ellipse(300, 390, 60, 50);
  noStroke();
  ellipse(300, 430, 75, 60);
  fill(guitarColor);
  stroke(#000000);
  strokeWeight(1);
  circle(299, 395, 20);

  // strings
  stroke(#1d1d1d);
  strokeWeight(1);
  line(295, 305, 295, 430);
  line(297, 305, 297, 430);
  line(299, 305, 299, 430);
  line(301, 305, 301, 430);

  // bridge
  rect(291.5, 430, 14, 5);

  popMatrix();


  }





}