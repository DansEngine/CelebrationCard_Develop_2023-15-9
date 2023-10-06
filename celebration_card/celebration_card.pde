//Global variables
//BG = BackGround
int HR, WR;
float xBackG, yBackG, WBackG, HBackG;
float xBG, yBG, WBG, HBG;
float xText, yText, WText, HText;
String Button="X";
String TextTittle="Invitation";
PFont ButtonFont;
int ButtonSize, size;
color red=#FC0000, white=#FFFFFF;
float xQ, yQ, WQ, HQ;
PImage picBackground;
Boolean nightmode=false;
Boolean brightnessControl = false; //Note: arrow
int brightnessNumber=255; //range: 1-255
int brightnessRed=255;
int brightnessGreen=255;
float xTitle, yTitle, WTitle, HTitle;
void setup() {
  // Print
  println("tester");
  println("DisplayX: ", +displayWidth, "DisplayY: ", +displayHeight);
  fullScreen ();
  //DIVs
  WR = width;
  HR = height;
  //
  xBG = WR*1/64 ;
  yBG = HR*1/32 ;
  WBG = WR*1/32 ;
  HBG = HR*1/16 ;
  //
  xBackG = WR*0 ;
  yBackG = HR*0 ;
  WBackG = WR -1 ;
  HBackG = HR -1 ;
  //
  xText = WR*1/8 ;
  yText = HR*1/4 ;
  WText = WR*1/2;
  HText = HR*1/2;
  //
  xQ = WR*1/128 ;
  yQ = HR*1/64 ;
  WQ = WR*1/16 ;
  HQ = HR*1/8 ;
  //
  //Title
  //
  xTitle = WText*1/4;
  yTitle = HR*1/12;
  WTitle = WR*2/5;
  HTitle = HR*1/8;
  //
  String[] fontList = PFont.list ();
  ButtonFont = createFont ("CalifornianFB-Bold", 48);
  //DIVs END
  //
  //Population
  fill(white);
  rect(xBackG, yBackG, WBackG, HBackG);
  //
  //
  picBackground = loadImage ("../imageUsed/Landscape/ROG_STRIX_product_wallpaper_1920x1200.jpg");
  //
} //End setup
void draw() {
  //size(600,400);
  //
  int hourNightmode = hour (); // 24:hour
  println(hourNightmode);
  if ( hourNightmode>16 ) {
    nightmode=true;
  } else if ( hourNightmode<05 ) {
    nightmode=true;
  } else {
    nightmode=false;
     println (nightmode);
  }
  //timing :)
  if ( nightmode==true ) { 
  tint(brightnessRed, brightnessGreen, 40);
  //
  } else {
  noTint();
  }
  //
  if ( brightnessControl==true) tint(255, brightnessNumber);
  if ( brightnessNumber<1 ) {
    brightnessNumber=1; 
   } else if (
     brightnessNumber>255 ) {
       brightnessNumber=255; 
  } else { 
   tint(255, brightnessNumber );
   println ( brightnessNumber );
  }
  //
  // Red system
  if ( brightnessRed<1 ) {
    brightnessRed=1; 
   } else if (
     brightnessRed>255 ) {
       brightnessRed=255; 
  }
  //
  // Green system
  if ( brightnessGreen<1 ) {
    brightnessGreen=1; 
   } else if (
     brightnessGreen>255 ) {
       brightnessGreen=255; 
  }
  //DIVs for rect and main set
  //
  //Population Draw
 background ( 0 );
    if ( nightmode==true ) tint(brightnessRed, brightnessGreen, 40); //Gray scale: (rgb)
    image (picBackground, xBackG, yBackG, WBackG, HBackG);
    fill (white);
  rect (xQ, yQ, WQ, HQ);
  //
  fill (white);
  rect (xText, yText, WText, HText);
  //
  fill (red);
  rect (xBG, yBG, WBG, HBG);
  //
  fill (white);
  textAlign (CENTER, CENTER);
  size=40;
  text (Button, xBG, yBG, WBG, HBG);
  textFont (ButtonFont, size);
  //
  noFill ();
  //
  fill (white);
  //Title
  rect(xTitle, yTitle, WTitle, HTitle);
  fill (0);
  text(TextTittle, xTitle, yTitle, WTitle, HTitle);
  textAlign (CENTER, CENTER);
  textFont (ButtonFont, size);
  //
  //
} //End draw
void mousePressed() {
  //
  if (mouseX>xBG && mouseX<xBG + WBG && mouseY>yBG && mouseY<yBG + HBG) exit();
  //
} //END
void keyPressed() {
  //
  //nightmode press
  if (key=='n' || key=='N') {
  if ( nightmode==true ) {
    nightmode = false;
  } else {
      nightmode = true;
  }
 }
 // Key system 1
 if ( key==CODED && keyCode==UP || keyCode==DOWN ) {
  brightnessControl = true;
  if ( key==CODED && keyCode==UP ) brightnessNumber++ ; 
  if ( key==CODED && keyCode==DOWN ) brightnessNumber-- ; 
  }
  //Key system 2
  if ( key==CODED && keyCode==UP || keyCode==DOWN ) { 
  brightnessControl = true;
  if ( key==CODED && keyCode==UP ) brightnessGreen++ ; 
  if ( key==CODED && keyCode==DOWN ) brightnessGreen-- ;
  }
  //Key system 3
  if ( key==CODED && keyCode==UP || keyCode==DOWN ) { 
  brightnessControl = true;
  if ( key==CODED && keyCode==UP ) brightnessRed++ ; 
  if ( key==CODED && keyCode==DOWN ) brightnessRed-- ;
  }
} //END
