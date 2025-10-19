import processing.sound.*;
SoundFile acoustic;
SoundFile electric;
SoundFile electric2;

Background bg;
Guitar g1;
Guitar g2;
Guitar g3;
ArrayList<Note> notes = new ArrayList<Note>();

void setup(){
  size(1200, 1000);
  g1 = new Guitar(300, 450, 200, #744c3b);
  g2 = new Guitar(600, 450, 200, #cf6d69);
  g3 = new Guitar(900, 450, 200, #85c5f4);
  bg = new Background();
  acoustic = new SoundFile(this, "Sounds/acoustic.wav");
  electric = new SoundFile(this, "Sounds/electric.wav");
  electric2 = new SoundFile(this, "Sounds/electric2.wav");


}


void draw(){

  bg.display();
  g1.displayAccoustic();
  g2.displayElectric();
  g3.displayElectric2();


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
    if (mouseX >= 595 && mouseX <= 610  && mouseY >= 265 && mouseY <= 630){

      electric.play();
      float x = random(555, 650);
      float y = random(340, 630);
      float size = random(80, 130);
      color c = color(random(0, 255), random(0, 255), random(0, 255));
      notes.add(new Note(x, y, size, c));

    }
    if (mouseX >= 895 && mouseX <= 910  && mouseY >= 265 && mouseY <= 630){

      electric2.play();
      float x = random(855, 950);
      float y = random(340, 630);
      float size = random(80, 130);
      color c = color(random(0, 255), random(0, 255), random(0, 255));
      notes.add(new Note(x, y, size, c));

    }







}