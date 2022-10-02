int movingX; int movingY; int radius; 

void circleRow(int startX, int endX, int y, int d) {
  while (startX < endX) {
    circle(startX + d/2, y, d); 
    startX = startX + d; 
    
  }//while
}//circleRow
  
void setup() {
  size(500,400);
  background(#94A7ED); 
  movingX = 60; 
  movingY = 50; 
  radius = 30; 
}

void draw() {
  background(#94A7ED);
  circleRow(0, width, 50, 40); 
  circle(movingX, movingY, 2 * radius); 
  movingX++; 
  
  if (movingX > width) {
    movingX = 0; 
    movingY += 2 * radius;
  }//if
  
  if (movingY > height) {
    movingY = 0; 
  }//if

}//draw
