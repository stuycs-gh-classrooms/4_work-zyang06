/* 
Something is wrong with the positioning of the petals. 
The location of the center does not correspond to what is given. 
Rotation works fine (for now, since it's only in radians of 2pi/3. 
The first riptide works fine, but the subsequent ones seem to be affected by the changes in variables in the first. 
Problem is likely something going on with translation(). 

Perhaps a reset of all involved variables would fix the problem. It's late. I'm going to sleep. 
*/

void petal(int centerX, int centerY, int petalLength) {
  // colors
  
  // bottom petal
  int bottomPetalLowerPoint = centerY + petalLength; 
  int petalWidth = petalLength * 5/17;
  int leftBezierX = centerX - petalWidth; 
  int rightBezierX = centerX + petalWidth;
  int topBezierY = centerY + petalLength * 10/17; 
  int bottomBezierY = centerY + petalLength * 13/17;
  bezier(centerX, centerY, leftBezierX, topBezierY, leftBezierX, bottomBezierY, centerX, bottomPetalLowerPoint);
  bezier(centerX, centerY, rightBezierX, topBezierY, rightBezierX, bottomBezierY, centerX, bottomPetalLowerPoint);
  // top right petal
}

void riptide(int riptideX, int riptideY, int petalLength) {
  petal(riptideX, riptideY, petalLength);
  translate(riptideX, riptideY);
  rotate(PI * 2/3);
  petal(0, 0, petalLength);
  rotate(PI * 2/3);
  petal(0, 0, petalLength);
}

void setup() {
  size(400, 400); 
  background(#FFDEDE);
  riptide(140, 240, 50); 
  riptide(200, 30, 50); 
}
