// Final Programming Assignment - Group 25 - Piet-Hein Schouten 3708349 - Miles Berger 2906917
// main soundplaza file with setup, draw and events

import processing.sound.*;
SoundFile acoustic;
SoundFile electric;
SoundFile electric2;

Background bg;
Guitar g1;
Guitar g2;
Guitar g3;
ArrayList<Note> notes = new ArrayList<Note>();

SoundPlazaLogo logo;
OpenSign openSign;
DunlopLogo dunlop;
MXRLogo mxr;

color accousticColor = #744c3b;
color electricColor = #cf6d69;
color rockColor = #85c5f4;



void setup(){
  size(1150, 1000);
  bg = new Background();

  // logos
  logo = new SoundPlazaLogo(530, 305, color(255));
  openSign = new OpenSign(300, 83, 170, 55);
  mxr = new MXRLogo(510, 51, 160, 65);
  dunlop = new DunlopLogo(800, 51, 160, 65);

  // guitars
  g1 = new Guitar(300, 450, 200, accousticColor);
  g2 = new Guitar(600, 450, 200, electricColor);
  g3 = new Guitar(900, 450, 200, rockColor);


  // sounds
  acoustic = new SoundFile(this, "Sounds/acoustic.wav");
  electric = new SoundFile(this, "Sounds/electric.wav");
  electric2 = new SoundFile(this, "Sounds/electric2.wav");


}


void draw(){

  // display objects
  bg.display();
  g1.displayAccoustic();
  g2.displayElectric();
  g3.displayElectric2();
  logo.display();
  openSign.update();
  openSign.display();
  dunlop.display();
  mxr.display();

  // guitars change colors
  g1.setColor(accousticColor);
  g2.setColor(electricColor);
  g3.setColor(rockColor);


  // dipslay music notes when strings played
  for (int i = 0; i < notes.size(); i++) {
    Note n = notes.get(i);
    n.move();
    n.display();
  }
}


// working of the guitar strings for different guitars
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

// random guitar colors
  void keyPressed() {
    if (key == ' ') {
      accousticColor = color(random(90, 170), random(60, 100), random(30, 60));
      electricColor = color(random(0, 255), random(0, 255), random(0, 255));
      rockColor = color(random(50, 120), random(0, 60), random(40, 100));
    }
  }
