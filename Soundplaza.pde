Background bg;
Guitar acoustic;

void setup(){
  size(1200, 1000);
  bg = new Background();
  acoustic = new Guitar(50, 50, 250, #744c3b);
  bg.display();
}


void draw(){
  acoustic.display();


}