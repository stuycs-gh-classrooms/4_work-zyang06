//Hannah Kim
//Zhixuan Yang
//Julian Hong
//Ethan Lin (Not here)
int textSizevar = 100;
int textx;
int texty;


void setup() {
  size(400,550);
  background(#FFF0FB);
  textx = 10;
  texty = 300;
 
  rect(280 - 20, textSizevar + 20, 130, -textSizevar);
  fill(#FF0022);
  textSize(textSizevar);
  text("A+", 280, textSizevar);
 
  textSize(textSizevar / 2 / 2);
  fill(#000000);
  text("Physics: 68", textx, textSizevar + 60);
  text("Precalc: 100", textx, textSizevar + 90);
  text("AP English: 86", textx, textSizevar + 120);
  text("Math Team: 71", textx, textSizevar + 150);
  text("Physical Ed: 90", textx, textSizevar + 180);
  text("AP Calc BC: Outstanding", textx, textSizevar + 210);
  text("AsianSquad shows lack of participation but they always ace on all of their math tests so I believe they will do fine in life.", textx, textSizevar + 240, 380, 350);
}
