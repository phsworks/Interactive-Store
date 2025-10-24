class Light{
  float x, y, y2;
  color lightColor;

  Light(float startX, float startY, float endY, color lightColor){
    x = startX;
    y = startY;
    y2 = endY;
    this.lightColor = lightColor;
  }



  void display(){
    stroke(lightColor);
    strokeWeight(6);
    line(x, y, x, y2);
    

  }

  void setColor(color c) {
    this.lightColor = c;
  }
}