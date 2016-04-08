PImage bgimage;
Ball ball;
Paddle leftPaddle;
Paddle rightPaddle;

class Ball {
  int x;
  int y;
  float vX;
  float vY;
  int SIZE = 20;
  int SPEED = 5;

  void draw() {
    ellipse(x, y, SIZE * 2, SIZE * 2);
  }
  
  void move() {
    x += vX;
    y += vY;
  }    
}

class Paddle {
  int x;
  int y;
  int SIZE = 180;
  int SPEED = 40;
  
  void draw() {
    rect(x, y - SIZE / 2, 20, SIZE);
  }
  
  void moveUp() {
    y -= SPEED;
  }
  
  void moveDown() {
    y += SPEED;
  }
}

void setup() {
  size(900, 675);
  bgimage = loadImage("http://assets2.bigthink.com/system/idea_thumbnails/45543/primary/Mondrian%20grid.jpg?1343912136");
  noStroke();
  fill(#3CFF1F);
  
  ball = new Ball();
  ball.x = width / 2;
  ball.y = height / 2;
  float angle = random(0, PI);
  ball.vX = cos(angle) * ball.SPEED;
  ball.vY = sin(angle) * ball.SPEED;
  if (round(random(1)) == 1) {
    ball.vX *= -1;
  }
  
  leftPaddle = new Paddle();
  leftPaddle.y = height / 2;
  leftPaddle.x = 40;
  rightPaddle = new Paddle();
  rightPaddle.x = width - 40;
  rightPaddle.y = height / 2;
}

void draw() {
  image(bgimage, 0, 0);
  ball.draw();
  leftPaddle.draw();
  rightPaddle.draw();
  
  ball.move();
  
  if ((ball.x + ball.SIZE >= width - 40 &&
     ball.y >= rightPaddle.y - rightPaddle.SIZE / 2 &&
     ball.y <= rightPaddle.y + rightPaddle.SIZE / 2)
   ||
     (ball.x - ball.SIZE <= 60 &&
     ball.y >= leftPaddle.y - leftPaddle.SIZE / 2 &&
     ball.y <= leftPaddle.y + leftPaddle.SIZE / 2)) {
   ball.vX *= -1;
  }
  if (ball.y + ball.SIZE >= height || ball.y - ball.SIZE <= 0) {
   ball.vY *= -1;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      rightPaddle.moveUp();
    } else if (keyCode == DOWN) {
      rightPaddle.moveDown();
    }
  } else
  if (key == 'q') {
    leftPaddle.moveUp();
  } else if (key == 'a') {
    leftPaddle.moveDown();
  }
}