color HOUSE_COLOR = color(246, 255, 121);
color ROOF_COLOR = color(193, 37, 50);
color BALL_COLOR = color(255, 32, 21);
int x;
int ball_x = 15;
int ball_v = 4;

void setup() {
  size(800, 800);
  background(#ffffff);
}

void draw_houses() {
  x = 0;
  while (x <= width - 100) {
    // draw house
    fill(HOUSE_COLOR);
    rect(x, 300, 100, 100);
    
    // roof
    fill(ROOF_COLOR);
    triangle(x, 300, x + 50, 230, x + 100, 300);
    
    // door and window
    fill(#000000);
    rect(x + 10, 340, 30, 60);
    rect(x + 60, 340, 20, 20);

    x += 170;
  }
}


void draw() {
  draw_houses();
  
  // draw pavement
  fill(#777777);
  rect(0, 400, width, 100);
  
  // draw ball
  fill(BALL_COLOR);
  ellipse(ball_x, 450, 30, 30);
  
  // bounce ball off the walls
  if (ball_x >= width - 15) {
    ball_v = -4;
  } else if (ball_x <= 15) {
    ball_v = 4;
  }
  
  // make the ball move
  ball_x += ball_v;
}