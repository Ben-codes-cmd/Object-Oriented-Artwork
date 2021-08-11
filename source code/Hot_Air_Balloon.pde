// Hot Air Balloon 
class Balloon {
  // global declarations 
  float x, y, BalloonSize, speed, BalloonHeight, offset;
  color BallColor;
  // Constructor
  Balloon(float xpos, float ypos, float size, float s, color c) {
    // assign locals
    x = xpos;
    y = ypos;
    BalloonSize = size;
    speed = s;
    BallColor = c;
    BalloonHeight = BalloonSize * 1.4;
    offset = BalloonSize/2.035;
  }
  // methods
  void display() {
    // Draw scalable balloon
    noStroke();
    // top of ellipse
    fill(BallColor);
    arc(x, y, BalloonSize, BalloonHeight, PI, TWO_PI, CHORD);

    // bottom of balloon
    fill(237, 160, 43);
    beginShape();
      // top anchor points
    vertex(x + offset, y);
    vertex(x - offset, y);
      //bottom anchor points
    vertex(x - offset/2, y + BalloonHeight/2);
    vertex(x + offset/2, y + BalloonHeight/2);
    endShape(CLOSE);

    // basket
    fill(210, 105, 30);
    beginShape();
      // top anchor points
    vertex(x - offset/2.5, y + BalloonHeight/1.45);
    vertex(x + offset/2.5, y + BalloonHeight/1.45);
      //bottom anchor points
    vertex(x + offset/4, y + BalloonHeight/1.15);
    vertex(x - offset/4, y + BalloonHeight/1.15);
    endShape(CLOSE);
    
    // ropes
    strokeWeight(1);
    stroke(183, 123, 83);
      // left rope
    line(x - offset/2, y + BalloonHeight/2, x - offset/2.5, y + BalloonHeight/1.45);
      // right rope
    line(x + offset/2, y + BalloonHeight/2, x + offset/2.5, y + BalloonHeight/1.45);
  }
  void move() {
    // move balloon Vertically
    y = y - speed;
    if (y < - BalloonSize/2) {
      y = height + BalloonSize;
    }
  }
}
