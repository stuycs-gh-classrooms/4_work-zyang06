int[] xvals; 
int[] yvals; 
int numPoints; 

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;
  
  //makeLines(xvals, yvals, 10);
  drawLines(xvals, yvals);
}//setup

void draw() {
  background(0); 
  drawLines(xvals, yvals); 
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
    stroke(255); 
    line(xs[count], ys[count], xs[count + 1], ys[count + 1]); 
  }//for
}//drawLines
