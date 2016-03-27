PImage bgimage;
int ballX;
int ballY;
int BALL_SIZE = 20;
int BALL_SPEED = 5;
int leftPaddleY;
int rightPaddleY;
int PADDLE_SIZE = 180;
int PADDLE_SPEED = 40;
float vX;
float vY;

void setup() {
  size(900, 675);
  bgimage = loadImage("http://assets2.bigthink.com/system/idea_thumbnails/45543/primary/Mondrian%20grid.jpg?1343912136");
  noStroke();
  fill(#3CFF1F);
  ballX = width / 2;
  ballY = height / 2;
  leftPaddleY = height / 2;
  rightPaddleY = height / 2;
  float angle = random(PI * 0.25, PI * 0.75);
  vX = cos(angle) * BALL_SPEED;
  vY = sin(angle) * BALL_SPEED;
  if (round(random(1)) == 1) {
    vX *= -1;
  }
}

void draw() {
  image(bgimage, 0, 0);
  rect(20, leftPaddleY - PADDLE_SIZE / 2, 20, PADDLE_SIZE);
  rect(width - 40, rightPaddleY - PADDLE_SIZE / 2, 20, PADDLE_SIZE);
  ellipse(ballX, ballY, BALL_SIZE * 2, BALL_SIZE * 2);
  
  ballX += vX;
  ballY += vY;
  
  if ((ballX + BALL_SIZE >= width - 40 &&
      ballY >= rightPaddleY - PADDLE_SIZE / 2 &&
      ballY <= rightPaddleY + PADDLE_SIZE / 2)
    ||
      (ballX - BALL_SIZE <= 40 &&
      ballY >= leftPaddleY - PADDLE_SIZE / 2 &&
      ballY <= leftPaddleY + PADDLE_SIZE / 2)) {
    vX *= -1;
  }
  if (ballY + BALL_SIZE >= height || ballY - BALL_SIZE <= 0) {
    vY *= -1;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      rightPaddleY -= PADDLE_SPEED;
    } else if (keyCode == DOWN) {
      rightPaddleY += PADDLE_SPEED;
    }
  } else
  if (key == 'q') {
    leftPaddleY -= PADDLE_SPEED;
  } else if (key == 'a') {
    leftPaddleY += PADDLE_SPEED;
  }
}