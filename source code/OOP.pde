// Ben Jordan
// OOP with processing

// Initialize Cloud and Balloon Arrays
Balloon balloons[];
cloud clouds [];
int num;// num objects for each class
void setup() {
  size(900, 900);
  // how many objects
  num = 10;
  // allocate space
  balloons = new Balloon[num];
  clouds = new cloud[num];
  // assign arrays
  // parameters - (size, x, y, speed, color)
  for (int i = 0; i < num; i++) {
    balloons[i] = new Balloon(random(width), random(height), random(50, 200), random(2, 6), color(random(255), random(255), random(255)));
    clouds[i] = new cloud(random(width), random(height/7, height), random(30, 70), random(2, 4));
  }
}

void draw() {
  // sky
  background(196, 214, 237);
  // sun
  noStroke();
  fill(245, 223, 54);
  ellipse(0, 0, 100, 100);
  // draw and move objects
  for (int i= 0; i< num; i++) {
    clouds[i].display();
    balloons[i].display();
    clouds[i].move();
    balloons[i].move();
  }
}
