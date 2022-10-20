//SUBMIT THIS!!

int radius = 100;
int dotDiameter = 4;
int degrees = 0;
int ringRadius = 200;
int count = 0;
int currentHeight = 0; 
int mountHeight = 25; 
int negate = 1; 


void setup() {
  size(600, 400);
  background (50);
  noStroke ();
    float cloudX = random (1.0, width);
float cloudY = random (1.0, height/3);
float cloudX2 = random (1.0, width);
float cloudY2 = random ( height/3, height/3 *2);
float cloudX3 = random (1.0, width);
float cloudY3 = random ( height/3 *2, height);

cloud(cloudX, cloudY, 50);
cloud(cloudX2, cloudY2, 50);
cloud(cloudX3, cloudY3, 50);
}//setup

void draw() {
  drawEllipse(degrees, radius, width/2, height/2, 1); //circle
  drawEllipse(degrees, ringRadius, width/2, height/2, 0.2); //ring
  if ((degrees >0) && (degrees % 360 ==0) && (count <4)){
    count ++;
    ringRadius += 15 ;
  }// if
  
  degrees++;
  
  //mountain
  mountain(height * 5/6); 
  if (currentHeight > mountHeight) {
    negate *= -1; 
  }
  if (currentHeight < -1 * mountHeight) {
    negate *= -1; 
  }
  currentHeight += negate; 
  //println(currentHeight); 
}

void drawEllipse (int degrees, int radius, int xOffset, int yOffset, float hRatio){
   stroke (#FFD6F3);
   fill (#FFD6F3);
   //degrees ++;
  circle (xOffset + radius * cos (radians(degrees)), yOffset + radius * sin (radians(degrees)) * hRatio, dotDiameter);
}

void cloud (float cx,float cy,int big){
  fill (255);
  circle(cx-(big/2), cy, big*0.75);
  circle(cx, cy, big);
  circle(cx+(big/2), cy, big*0.75);
} 

void mountain(int yPlacement) {
  circle(degrees, yPlacement + currentHeight, dotDiameter); 
}//mountain
