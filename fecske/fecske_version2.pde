PImage fecske;
PImage hatter;

float x=0;
float y=180;
float sebx=0;
float seby=0;

void setup () {
  size(800, 960);
  fecske=loadImage ("fecske.png");
  hatter = loadImage ("FEO.jpg");
}


void draw() {
  background (hatter);

  if (sebx != 0 && seby != 0) {
    translate(x + 50, y + 50);
    rotate(atan(seby / sebx));
    if (sebx > 0) {
      scale(-1, 1);
    }
    translate(-x - 50, -y - 50);
  }

  image (fecske, x, y, 100, 100);
  x=x+sebx;
  y=y+seby;

  if (x>width-70 || x<0) {
    sebx=sebx*-1;
  }

  if (y>height-70 || y<0) seby= seby*-1;
}


void mouseClicked () 

{
  if (mouseX<100 && mouseX>20 && mouseY<280 && mouseY>200) {

    sebx= random (3, 9);  
    seby= random (3, 9);
  }
}