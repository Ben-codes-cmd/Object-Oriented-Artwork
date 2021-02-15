// create cloud class
class cloud {
  // global declarations
  float x, y, cloudsize, speed;
  // constructor
  cloud(float xpos, float ypos, float size, float sp) {
    // local variables
    x = xpos;
    y = ypos;
    cloudsize = size;
    speed = sp;
  }
  // methods
  void display() {
    // display each cloud
    noStroke();
    // middle bump
    fill(255);
    ellipse(x, y, cloudsize/1.25, cloudsize);
    // left bump
    ellipse(x + cloudsize/3, y, cloudsize, cloudsize/1.5); 
    // right bump
    ellipse(x - cloudsize/3, y, cloudsize, cloudsize/1.5);
  }
  void move() {
    // move cloud horizontally
    x = x + speed;
    if (x > width + cloudsize) {
      x = 0 ;
    }
  }
}
