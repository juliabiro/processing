int x;

void setup() {
  size(600, 600);
  noFill();
}   

void draw() {
  x = 300;
  arc(x, 300, 200, 200, PI, 1.5 * PI);
  arc(x + 87, 250, 200, 200, PI - 0.5, PI + 0.5);
}