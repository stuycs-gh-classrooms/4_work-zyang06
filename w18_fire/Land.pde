class Land {
  //instance variables
  int state; 
  int nextState; 
  int landSize; 
  color landColor; 
  int x, y; 
  
  Land(int x, int y, int landSize, int nextState) {
    display(x, y, landSize, nextState); 
  }
  
  void updateNextState(int whatState) {
    
  }//set nextState based on rules
  
  void display(int x, int y, int landSize, int nextState) {
    fill(landColor); 
    rect(x, y, landSize, landSize); 
  }
  
  void changeState() { 
    
  }//set state to next state
}
