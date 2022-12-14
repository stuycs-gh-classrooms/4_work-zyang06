Ball[] b;
int score;
color SAFE_COLOR = color(0, 255, 255);
color COLLISION_COLOR = color(255, 0, 255);

void setup() {
  size(600, 400);
  background(0);
  score = 0;

  b = new Ball[10];
  setupBalls();
}//setup

void draw() {
  background(0);
  for (int i = 0; i < b.length; i++) {
    fill(SAFE_COLOR); 
    for (int j = 0; j < b.length; j++) {
      if (b[i].collisionCheck(b[j])) {
        fill(COLLISION_COLOR); 
      }
    }
    b[i].display();
    b[i].move();
  }
}//draw

void setupBalls() {
  for (int i=0; i<b.length; i++) {
    b[i] = new Ball();
  }//loop through array, creating new Ball objects
}//setupBalls

void keyPressed() {
  for (int i = 0; i < b.length; i++) {
    if (key == 'r') {
      b[i].reset();
    }//reset
    else if (key == CODED) {
      if (keyCode == UP) {
        b[i].changeSpeed(0, -1);
      }//up
      else if (keyCode == DOWN) {
        b[i].changeSpeed(0, 1);
      }//down
      else if (keyCode == LEFT) {
        b[i].changeSpeed(-1, 0);
      }//left
      else if (keyCode == RIGHT) {
        b[i].changeSpeed(1, 0);
      }//right
    }//non ASCII keys
  }//for loop
}

void mousePressed() {
  for (int i = 0; i < b.length; i++) {
    if ( b[i].onBall(mouseX, mouseY) ) {
    score+= b[i].getScoreValue();
    b[i].reset();
    println(score);
    }//hit
  }
}//mousePressed
