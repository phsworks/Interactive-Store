


void setup(){
  size(1150, 1000);
  background(#000136);

// --- MAIN BUILDING WALL ---
  fill(#4b2a25);
  stroke(#4a2a18);
  strokeWeight(5);
  rect(0, 0, width, height * 0.9);

  // --- OUTER STORE FRAME ---
  fill(#4b2a25);
  stroke(#000000);
  strokeWeight(5);
  rect(40, 100, 1040, 700, 10); // was 90

  // --- INNER WALL COLOR ---
  fill(#7a3f33);
  stroke(#3a1e18);
  strokeWeight(5);
  rect(160, 80, 780, 680); // was 210

  // LEFT PILLAR
  fill(#7a3f33);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(50, 120, 40, 720); // was 100
  stroke(#202020);
  strokeWeight(3);
  line(70, 120, 70, 800);

  // RIGHT PILLAR
  fill(#7a3f33);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(1030, 120, 40, 720); // was 1080
  stroke(#202020);
  strokeWeight(3);
  line(1050, 120, 1050, 800);

  // INNER RIGHT PILLAR
  fill(#7a3f33);
  stroke(#2c1a1a);
  strokeWeight(6);
  rect(970, 120, 40, 720); // was 1020
  stroke(#202020);
  strokeWeight(3);
  line(990, 120, 990, 800);

  // --- TOP FRAME ABOVE WINDOW ---
  fill(#7a3f33);
  stroke(#3a1e1e);
  strokeWeight(5);
  rect(140, 30, 820, 70, 5); // was 190

  // --- BLUE GLASS WINDOW ---
  fill(#0b1b3f);
  stroke(#1a1a1a);
  strokeWeight(8);
  rect(180, 180, 750, 550); // was 200

  // --- BOTTOM BAR UNDER WINDOW ---
  fill(#7a3f33);
  stroke(#000000);
  strokeWeight(6);
  rect(140, 740, 820, 30, 5); // was 190

  // --- STORE SIGN ABOVE WINDOW ---
  fill(#e86c2d);
  stroke(#000000);
  strokeWeight(4);
  rect(180, 105, 740, 70); // was 230

  // --- LOWER STRUCTURE / GROUND LINE ---
  fill(#5b5b5b);
  stroke(#3a3a3a);
  strokeWeight(4);
  rect(0, 800, width, 100); // sidewalk area
}


void draw(){





}