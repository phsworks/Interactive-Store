Background bg;
Guitar acoustic;

void setup(){
  size(1000, 950);
  bg = new Background();
  acoustic = new Guitar(300, 300, #50382f);
  bg.display();
}


void draw(){
  acoustic.display();





}