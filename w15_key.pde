int[] xvals; 
int[] yvals; 
int numPoints; 

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;
  
  stroke(255); 
  //makeLines(xvals, yvals, 10);
  drawLines(xvals, yvals);
}//setup

void draw() {
  background(0); 
  drawLines(xvals, yvals); 
}

void keyPressed() {
  //background clear
  if (key == 'c') { 
    numPoints = 0; 
  }//if then clear
  
  //move drawing
  if (key == CODED) {
    if (keyCode == UP) {
      moveLines(xvals, yvals, 0, -1); 
    }//move up
    if (keyCode == LEFT) {
      moveLines(xvals, yvals, -1, 0); 
    }//move left
    if (keyCode == RIGHT) {
      moveLines(xvals, yvals, 1, 0); 
    }//move right
    if (keyCode == DOWN) {
      moveLines(xvals, yvals, 0, 1); 
    }//move down
  }//if coded
  
  //change color
  if (key == 'r') {
    stroke(#FF0313); 
  }//if r then red
  if (key == 'b') {
    stroke(#0311FF); 
  }//if b then blue
  if (key == 'g') {
    stroke(#03FF0C); 
  }
}

void mousePressed() {
  xvals[numPoints] = mouseX; 
  yvals[numPoints] = mouseY; 
  numPoints++; 
}

void makeLines(int[] xs, int[] ys, int points) {
  numPoints = points; 
  if (ys.length >= xs.length) {
    if (points > xs.length) {
      numPoints = xs.length; 
    }// set maxPoints to xs.length
  }
  else {
    if (points > ys.length) {
      numPoints = ys.length; 
    }// set maxPoints to ys.length
  }
  
  for (int count = 0; count < numPoints; count++) {
    xs[count] = int(random(width)); 
    ys[count] = int(random(height)); 
    //println(xs[count], ys[count]); 
  }//for
}//makeLines

void drawLines(int[] xs, int[] ys) {
  //int whichMax; 
  //if (xs.length >= ys.length) {
  //  whichMax = ys.length; 
  //}
  //else {
  //  whichMax = xs.length; 
  //}
  for (int count = 0; count < numPoints - 1; count++) {
    line(xs[count], ys[count], xs[count + 1], ys[count + 1]); 
  }//for
}//drawLines

void moveLines(int[] xs, int[] ys, int xMod, int yMod) {
  int whichMax; 
  if (xs.length >= ys.length) {
    whichMax = ys.length; 
  }
  else {
    whichMax = xs.length; 
  }
  
  for (int count = 0; count < whichMax - 1; count++) {
    xs[count] += xMod; 
    ys[count] += yMod; 
  }//for
}
