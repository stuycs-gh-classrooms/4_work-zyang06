size (500,500);
background (183,244,255);
noStroke();
colorMode(RGB, 500);
for (int i = 0; i < 500; i++) {
  for (int j = 0; j < 500; j++) {
    stroke(i, j, 500);
    point(i, j);
  }
}
color red = color ( #D6133A );
color white = color (#FFFFFF);
color brown = color (#8E745E);
color yellow = color ( #F5EC34 );


/////////////////////////////////////////
stroke (brown); //rope
line (130,120,135,160);
line (170,120,165,160);

noStroke(); //balloon
fill (red);
ellipse(150, 100, 70, 80);
fill (white);
ellipse(150, 100, 50, 80);
fill (red);
ellipse(150, 100, 30, 80);
fill (white);
ellipse(150, 100, 10, 80);


fill (brown); //basket
quad (135,160,140,180,160,180,165,160);
//////////////////////////////////////////
fill (white); //clouds

int SCR = 47;
int BCR= 60;

int a = 230;
int b = 250;
circle(a-30, b, SCR);
circle(a, b, BCR);
circle(a+30, b, SCR);

int bb = 450;
circle(a-30, bb, SCR);
circle(a, bb, BCR);
circle(a+30, bb, SCR);

int c = 70;
int d = 180;
circle(c-30, d, SCR);
circle(c, d, BCR);
circle(c+30, d, SCR);

int dd= 400;
circle(c-30, dd, SCR);
circle(c, dd, BCR);
circle(c+30, dd, SCR);

int e= 200;
int f=10;
circle(e-30, f, SCR);
circle(e, f, BCR);
circle(e+30, f, SCR);

int g = 400 ;
int h= 30 ;
circle(g-30, h, SCR);
circle(g, h, BCR);
circle(g+30, h, SCR);

int i = 0;
int j = 300;
circle(i-30, j, SCR);
circle(i, j, BCR);
circle(i+30, j, SCR);

int k = 400;
int l = 300;
circle(k-30, l, SCR);
circle(k, l, BCR);
circle(k+30, l, SCR);

int m = 450;
int n = 450;
circle(m-30, n, SCR);
circle(m, n, BCR);
circle(m+30, n, SCR);

fill (yellow); //sun
circle(10, 10, 90);
triangle ( 25, 70, 40, 75, 45 ,60);
triangle ( 20, 70, 0, 70 ,10 ,80);
triangle (47, 58, 64, 55, 60, 40);
triangle (47, 58, 64, 55, 60, 40);
triangle (63, 37, 67, 20, 78, 30);
triangle (66, 17, 66, -4, 78, 8);

/////////////////////////////////////

stroke (brown); //rope
fill (brown);
strokeWeight (5);
line (185,350,200,450);
line (315,350,300,450);

quad (195,420,305,420,297,470,203,470);

stroke(#ffcc4d);
fill(#ffcc4d);
circle(250,250,270);
stroke(#664500);
fill(#664500);
ellipse(190,240,25,30);
ellipse(310,240,25,30);
noFill();
strokeWeight(15);
stroke(#ffcc4d);
fill(#ffcc4d);
circle(250,250,200);
stroke(#664500);
fill(#664500);
ellipse(200,240,15,20);
ellipse(300,240,15,30);
noFill();
strokeWeight(15);
arc(120,400,450,450,3*PI/2,5*PI/3);
strokeWeight(20);
arc(310,240,150,200,4*PI/3,11*PI/6);
strokeWeight(10);
line(190,300,310,300);

//skull
noStroke ();
fill (#BCBABA);
ellipse (425, 400, 100, 100);
beginShape ();
vertex (415, 425);
vertex (415, 460);
vertex (435, 460);
vertex (435, 425);
endShape (CLOSE);
beginShape ();
vertex (445, 400);
vertex (445, 460);
vertex (465, 460);
vertex (465, 400);
endShape (CLOSE);
beginShape ();
vertex (405, 400);
vertex (405, 460);
vertex (385, 460);
vertex (385, 400);
endShape ();
ellipse (395, 460, 20, 20);
ellipse (455, 460, 20, 20);
ellipse (425, 460, 20, 20);
fill (#FF1212);
ellipse (446, 390, 20, 20);
ellipse (400, 390, 20, 20);

//weird flower basket
int cenx = 400; 
int ceny = 80;
int bas_alt = 50; 
stroke(brown); 
strokeWeight(3);
line(cenx - bas_alt, 80, 375, 180); 
line(cenx + bas_alt, 80, 425, 180); 
fill(brown); 
quad(375, 180, 385, 220, 415, 220, 
425, 180); 


// weird flower thing
stroke(#FFFFFF);

//bottom petal 
strokeWeight(0);
fill(#EAE8E8);
circle(cenx, ceny, 122);
fill(#FFFFFF);
strokeWeight(1);
bezier(cenx, ceny, 380, 120, 380, 130, 400, 140);
bezier(cenx, ceny, 420, 120, 420, 130, 400, 140);

//top left petal
bezier(cenx, ceny, 375.36, 42.68, 366.69, 37.68, 348.04, 50); 
bezier(cenx, ceny, 355.36, 77.32, 346.69, 72.32, 348.04, 50); 

//top right petal
bezier(cenx, ceny, 444.64, 77.32, 453.30, 72.32, 451.97, 50); 
bezier(cenx, ceny, 433.30, 37.68, 433.30, 37.68, 451.97, 50); 

//add deep blue inner lining later
fill(#81D6FF); 

//circles
int cradius = 15; 
fill(#E0F5FF); 
circle(cenx, ceny + 40, cradius); 
circle(434.64, 60, cradius); 
circle(365.36, 60, cradius); 

\\\\\\

noStroke();
fill(#ffca4f);
circle(0,550,400);
fill(#664500);
circle(75,500,100);
fill(#FFFFFF);
circle(60,480,50);
noFill();
stroke(#664500);
strokeWeight(20);
arc(200,350,250,250,2*PI/3,5*PI/6);
