int[] xvals; 
int[] yvals; 
int numPoints; 

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;
  
  makeLines(xvals, yvals, 10);
  drawLines(xvals, yvals);
}//setup

void makeLines(int[] xs, int[] ys, int points) {
  int maxPoints; 
  maxPoints = points; 
  if (ys.length >= xs.length) {
    if (points > xs.length) {
      maxPoints = xs.length; 
    }// set maxPoints to xs.length
  }
  else {
    if (points > ys.length) {
      maxPoints = ys.length; 
    }// set maxPoints to ys.length
  }
  
  for (int count = 0; count < maxPoints; count++) {
    xs[count] = int(random(width)); 
    ys[count] = int(random(height)); 
    //println(xs[count], ys[count]); 
  }//for
}//makeLines

void drawLines(int[] xs, int[] ys) {
  int findMax; 
  if (xs.length >= ys.length) {
    findMax = xs.length; 
  }//if
  else {
    findMax = ys.length; 
  }//else
  for (int count = 0; count < findMax - 1; count++) {
    stroke(255); 
    line(xs[count], ys[count], xs[count + 1], ys[count + 1]); 
  }//for
}//drawLines
