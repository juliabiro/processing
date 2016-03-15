boolean isLampOn = false;
color RED = color(255, 0, 0);
color YELLOW = color(255, 255, 0);
color GREEN = color(0, 255, 0);
color BLACK = color(0, 0, 0);
color lampsCurrentColor = GREEN;


void setup() {
  size(500, 500);
  fill(BLACK);
  rect(100, 400, 20, 20);
  fill(RED);
  rect(200, 400, 20, 20);
  fill(YELLOW);
  rect(300, 400, 20, 20);
  fill(GREEN);
  rect(400, 400, 20, 20);
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
  // switcher
  if (mouseX >= 100 && mouseX <= 120 && mouseY >= 400 && mouseY <= 420) {
    if (isLampOn) {
      isLampOn = false;
    } else {
      isLampOn = true;
    }
  } else
  // red
  if (mouseX >= 200 && mouseX <= 220 && mouseY >= 400 && mouseY <= 420) {
    lampsCurrentColor = RED;
  } else
  // yellow
  if (mouseX >= 300 && mouseX <= 320 && mouseY >= 400 && mouseY <= 420) {
    lampsCurrentColor = YELLOW;
  } else
  // green
  if (mouseX >= 400 && mouseX <= 420 && mouseY >= 400 && mouseY <= 420) {
    lampsCurrentColor = GREEN;
  }
}