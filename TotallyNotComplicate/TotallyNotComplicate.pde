//Global variables
//BG = BackGround
int HR, WR;
float xBackG, yBackG, WBackG, HBackG;
float xBG, yBG, WBG, HBG;
float xText, yText, WText, HText;
String Button="X";
PFont ButtonFont;
int ButtonSize, size;
color red=#FC0000, white=#FFFFFF;
float xQ, yQ, WQ, HQ;
PImage picBackground;
void setup() {
  // Print
  println("tester");
  println("DisplayX: ",+displayWidth, "DisplayY: ",+displayHeight);
  fullScreen ();
  WR = width;
  HR = height;
  xBG = WR*1/64 ;
  yBG = HR*1/32 ;
  WBG = WR*1/32 ;
  HBG = HR*1/16 ;
  xBackG = WR*0 ;
  yBackG = HR*0 ;
  WBackG = WR -1 ;
  HBackG = HR -1 ;
  xText = WR*1/8 ;
  yText = HR*1/4 ;
  WText = WR*1/2;
  HText = HR*1/2;
  xQ = WR*1/128 ;
  yQ = HR*1/64 ;
  WQ = WR*1/16 ; 
  HQ = HR*1/8 ; 
  String[] fontList = PFont.list (); 
  ButtonFont = createFont ("CalifornianFB-Bold",48);
  //
  //Population
  fill(white);
  rect(xBackG, yBackG, WBackG, HBackG);
  //
  //
  picBackground = loadImage ("../image/Landscape/Banff.jpg"); 
  //
} //End setup
void draw() {
  //size(600,400);
  //
    image (picBackground, xBackG, yBackG, WBackG, HBackG);
    //
  fill(white);
  rect(xQ, yQ, WQ, HQ);
  fill(white);
  rect(xText, yText, WText, HText);
  fill(red);
  rect(xBG, yBG, WBG, HBG);
  //TExt
  fill(white);
  textAlign(CENTER,CENTER);
  size=40;
  text(Button, xBG, yBG, WBG, HBG);
  textFont (ButtonFont, size);
  //
} //End draw
void mousePressed() {
  //
  if (mouseX>xBG && mouseX<xBG + WBG && mouseY>yBG && mouseY<yBG + HBG) exit();
  //
} //END
