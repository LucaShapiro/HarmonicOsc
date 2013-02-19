// Based on examples from Dan
// Shiffman's Learning
// Processing and Nature of Code

float amplitude = 10;
float a = 0.0;
float aVel = 0.0;
float r = 10;
float aAcc = 0.001;

void setup() {
  size (640, 360);
  smooth();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  
  float x= amplitude * r * cos(a);
  float y = 2 * r * sin(a);
  
  ellipseMode(CENTER);
  stroke(127);
  fill(127);
  line(0,0,x,y);
  ellipse(x,y,36,36);

  a+=aVel;
  aVel+=aAcc;
  aVel=constrain(aVel, 0, 0.1);
  
}
