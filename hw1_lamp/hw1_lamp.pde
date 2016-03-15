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
  triangle(200, 300, 250, 200, 300, 300);
}

void mousePressed(){
  if (isLampOn) {
    isLampOn = false;
    fill(BLACK);
  } else {
    isLampOn = true;
    fill(lampsCurrentColor);
  }
}