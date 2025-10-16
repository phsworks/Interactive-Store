class Guitar{
  float x, y;
  color guitarColor;
  float size;



  Guitar(float startX, float startY, color tint){
    x = startX;
    y = startY;
    guitarColor = tint;

  }


  void display(){

  fill(#744c3b);
  noStroke();
  triangle(293, 302, 303, 302, 298, 299);
  
  line(293, 302, 293, 350);
  fill(#000000);
  fill(#744c3b);
  rect(292, 302, 12, 15);
  triangle(292, 317, 304, 317, 298, 325);
  rect(293, 320, 10, 50);
  ellipse(300, 390, 60, 50);

  noStroke();
  fill(#744c3b);
  ellipse(300, 430, 75, 60);
  fill(#50382f);
  stroke(#000000);
  strokeWeight(1);
  circle(300, 395, 20);
  }





}