class Land {
  //instance variables
  int state;
  int nextState;
  int landSize;
  color landColor;
  int x, y;

  Land(int landx, int landy, int landLandSize, int landState) {
    x = landx;
    y = landy;
    landSize = landLandSize;
    state = landState;
  }

  void updateNextState(int whatState) {
    if ((this.state == GRASS) && (whatState == FIRE)) {
      nextState = BURNT;
      state = FIRE; 
    }
    else {
      nextState = state; 
    }
  }//set nextState based on rules

  void display() {
    colorChange(state); 
    fill(landColor); 
    rect(x, y, landSize, landSize);
  }

  void changeState() {
    state = nextState; 
  }//set state to next state
  
  void colorChange(int colorType) {
    if (colorType == DIRT) {
      landColor = #81582F; 
    }
    if (colorType == FIRE) {
      landColor = #F20C0C; 
    }
    if (colorType == BURNT) {
      landColor = #810707; 
    }
    if (colorType == GRASS) {
      landColor = #49B90D; 
    }
  }
}
