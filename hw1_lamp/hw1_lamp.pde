boolean isLampOn = false;
color RED = color(255, 0, 0);
color YELLOW = color(255, 255, 0);
color GREEN = color(0, 255, 0);
color BLACK = color(0, 0, 0);
color lampsCurrentColor = GREEN;


void setup() {
  size(500, 500);
  fill(BLACK);
}

void draw() {
  if (isLampOn) {
    fill(lampsCurrentColor);
  } else {
    fill(BLACK);
  }
  triangle(200, 300, 250, 200, 300, 300); 
}

void mousePressed(){
  if (isLampOn) {
    isLampOn = false;
  } else {
    isLampOn = true;
  }
}