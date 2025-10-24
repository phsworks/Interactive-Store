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

Light light1;
Light light2;
Light light3;
Light light4;

color accousticColor = #744c3b;
color electricColor = #cf6d69;
color rockColor = #85c5f4;

color lightColor = #000000;


void setup(){
  size(1200, 1000);
  bg = new Background();

  // logos
  logo = new SoundPlazaLogo(550, 310, color(255));
  openSign = new OpenSign(300, 85, 170, 60);
  mxr = new MXRLogo(500, 50, 160, 70);
  dunlop = new DunlopLogo(800, 50, 160, 70);

  // guitars
  g1 = new Guitar(300, 450, 200, accousticColor);
  g2 = new Guitar(600, 450, 200, electricColor);
  g3 = new Guitar(900, 450, 200, rockColor);

  light1 = new Light(200, 200, 400, lightColor);
  light2 = new Light(300, 210, 300, lightColor);
  light3 = new Light(500, 200, 350, lightColor);
  light4 = new Light(200, 220, 400, lightColor);


  // sounds
  acoustic = new SoundFile(this, "Sounds/acoustic.wav");
  electric = new SoundFile(this, "Sounds/electric.wav");
  electric2 = new SoundFile(this, "Sounds/electric2.wav");


}


void draw(){

  bg.display();
  light1.display();
  light2.display();
  light3.display();
  light4.display();
  g1.displayAccoustic();
  g2.displayElectric();
  g3.displayElectric2();
  logo.display();
  openSign.update();
  openSign.display();
  dunlop.display();
  mxr.display();


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

  void mouseMoved() {

    // when mouse is close to light go on
    if (abs(mouseX - light1.x) < 10){
      light1.setColor(color(random(0, 255), random(0, 255), random(0, 255)));
    }
    if (abs(mouseX - light2.x) < 10){
      light2.setColor(color(random(0, 255), random(0, 255), random(0, 255)));
    }
    if (abs(mouseX - light3.x) < 10){
      light3.setColor(color(random(0, 255), random(0, 255), random(0, 255)));
    }
    if (abs(mouseX - light4.x) < 10){
      light4.setColor(color(random(0, 255), random(0, 255), random(0, 255)));
    }
  }

  void keyPressed() {
    if (key == ' ') {
      accousticColor = color(random(90, 170), random(60, 100), random(30, 60));
      electricColor = color(random(0, 255), random(0, 255), random(0, 255));
      rockColor = color(random(50, 120), random(0, 60), random(40, 100));
    }
  }






