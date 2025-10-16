
color mainBrown = #744C3B ;
color secondBrown = #6B3A2A;
color wall = #773940;
color stone = #87839c;

void setup(){
  size(1000, 950);
  background(#50382f);

  // --- MAIN BUILDING WALL ---
  fill(wall);
  stroke(#4a2a18);
  strokeWeight(5);
  rect(60, 700, 900, 150);

  // --- INNER WALL COLOR ---
  fill(secondBrown);
  stroke(#3a1e18);
  strokeWeight(3);
  rect(110, 100, 780, 640); // was 160

  // top pillar stack
  fill(mainBrown);
  stroke(#2c1a1a);
  strokeWeight(2);
  rect(18, 5, 965, 15); // was 100
  rect(18, 20, 965, 15); // was 80


  // --- LEFT PILLAR STACK ---
  fill(mainBrown);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(50, 35, 40, 670); // was 100
  rect(30, 35, 40, 670); // was 80
  rect(20, 35, 20, 670); // was 70

  // long pillar
  fill(secondBrown);
  rect(90, 35, 20, 720);
  rect(890, 35, 20, 720);


  // --- RIGHT PILLAR STACK ---
  fill(mainBrown);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(940, 35, 40, 670); // was 990
  rect(920, 35, 40, 670); // was 970
  rect(910, 35, 20, 670); // was 960

  // --- LEFT STONE PILLAR ---
  fill(stone);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(20, 700, 70, 300); // was 70

  // --- RIGHT STONE PILLAR ---
  fill(stone);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(910, 700, 70, 300); // was 960

  // --- TOP FRAME ABOVE WINDOW ---
  fill(secondBrown);
  stroke(#3a1e1e);
  strokeWeight(5);
  rect(110, 35, 780, 90, 5); // was 160

  // --- BLUE GLASS WINDOW ---
  fill(#122862);
  stroke(#1a1a1a);
  strokeWeight(5);
  rect(140, 140, 720, 600); // was 190

  // --- BOTTOM BAR UNDER WINDOW ---
  fill(mainBrown);
  stroke(#000000);
  strokeWeight(6);
  rect(90, 740, 820, 30, 5); // was 140

  // --- STORE SIGN ABOVE WINDOW ---
  fill(#e28e39);
  stroke(#000000);
  strokeWeight(4);
  rect(130, 45, 740, 70); // was 180

  // --- LOWER STRUCTURE / GROUND LINE ---
  fill(#5b5b5b);
  stroke(#3a3a3a);
  strokeWeight(4);
  rect(0, 850, width, 120);
}


void draw(){





}