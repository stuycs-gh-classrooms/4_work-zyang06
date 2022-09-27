void drawLightning(int x, int y, int numParts) {
  int nexty = (height - y) / numParts;  
  int xVariation = 20; 
  while (y < height) {
    strokeWeight(random(1, 10));
    stroke(int(random(0,255)), int(random(0,255)), int(random(0,255))); 
    int nextx = int(random(x - xVariation, x + xVariation));
    line(x, y, nextx, y + nexty);
    x = nextx; 
    y = y + nexty; 
  }
}

void setup() {
  size(500,500); 
  drawLightning(50, 0, 50); 
  drawLightning(120, 100, 10); 
  drawLightning(250, 62, 5); 
  drawLightning(360, 250, 62); 
  drawLightning(452, 74, 43); 
}
