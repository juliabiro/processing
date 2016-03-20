int x;

void setup() {
  size(600, 600);
  background(#79E3FF);
  noFill();
  stroke(#ffffff);
}   

void draw() {
  x = 0;
  while (x < width) {
    arc(x + 100, 300, 200, 200, PI, 1.5 * PI);
    arc(x + 187, 250, 200, 200, PI - 0.5, PI + 0.5);
    x += 100;
  }
}