import processing.sound.*;
SoundFile acoustic;

Background bg;
Guitar g1;
Guitar g2;
ArrayList<Note> notes = new ArrayList<Note>();

void setup(){
  size(1200, 1000);
  g1 = new Guitar(300, 350, 250, #744c3b);
  g2 = new Guitar(500, 350, 250, #87839c);
  bg = new Background();
  acoustic = new SoundFile(this, "Sounds/acoustic.wav");


}


void draw(){

  bg.display();
  g1.displayAccoustic();
  g2.displayAccoustic();


  for (int i = 0; i < notes.size(); i++) {
    Note n = notes.get(i);
    n.move();
    n.display();
  }
}

void mousePressed(){
    if (mouseX >= 295 && mouseX <= 310  && mouseY >= 265 && mouseY <= 630){

      acoustic.play();
      float x = random(255, 350);
      float y = random(340, 630);
      float size = random(80, 130);
      color c = color(random(0, 255), random(0, 255), random(0, 255));
      notes.add(new Note(x, y, size, c));

    }






}