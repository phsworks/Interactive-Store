class Background{


  float scaleX = width / 1000.0;
  float scaleY = height / 950.0;

  void display(){
    // original design
    float baseW = 1000.0;
    float baseH = 950.0;

    // scale
    float scaleX = width / baseW;
    float scaleY = height / baseH;

    pushMatrix();
    scale(scaleX, scaleY);
    background(#50382f);
    color mainBrown = #744C3B ;
    color secondBrown = #6B3A2A;
    color wall = #773940;
    color stone = #87839c;
    color glass = #122862;




  // inner wall color
  fill(secondBrown);
  stroke(#3a1e18);
  strokeWeight(3);
  rect(110, 100, 780, 640);


  // wall below window
  fill(wall);
  stroke(#4a2a18);
  strokeWeight(5);
  rect(60, 700, 900, 150);



  // top pillars
  fill(mainBrown);
  stroke(#2c1a1a);
  strokeWeight(2);
  rect(18, 5, 965, 15);
  rect(18, 20, 965, 15);


  // left pillar stack
  fill(mainBrown);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(50, 35, 40, 670);
  rect(30, 35, 40, 670);
  rect(20, 35, 20, 670);

  // long pillars
  fill(secondBrown);
  rect(90, 35, 20, 720);
  rect(890, 35, 20, 720);


  // right pillar stack
  fill(mainBrown);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(940, 35, 40, 670); // was 990
  rect(920, 35, 40, 670); // was 970
  rect(910, 35, 20, 670); // was 960

  // left stone pillar
  fill(stone);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(20, 700, 70, 300); // was 70

  // right stone pillar
  fill(stone);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(910, 700, 70, 300);

  // top frame above window
  fill(secondBrown);
  stroke(#3a1e1e);
  strokeWeight(5);
  rect(110, 35, 780, 90, 5);

  // blue glass window
  fill(glass);
  stroke(#1a1a1a);
  strokeWeight(5);
  rect(140, 140, 720, 600); // was 190

  // wood below guitars
    fill(secondBrown);
    stroke(#4a2a18);
    strokeWeight(5);
    rect(150, 690, 700, 55);

  // bottom bar under window
  fill(mainBrown);
  stroke(#000000);
  strokeWeight(3);
  rect(90, 740, 820, 30, 5); // was 140





  // store sign above window
  fill(#e28e39);
  stroke(#000000);
  strokeWeight(4);
  rect(130, 45, 740, 70); // was 180

  // ground
  fill(#5b5b5b);
  stroke(#3a3a3a);
  strokeWeight(2);
  rect(0, 850, width, 120);

  popMatrix();

  }



}