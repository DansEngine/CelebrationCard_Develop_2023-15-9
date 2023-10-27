//Global variables
//BG = BackGround
int TextMouseX, TextMouseY;
int HR, WR;
//
float xBackG, yBackG, WBackG, HBackG;
float xBG, yBG, WBG, HBG;
float xTextG, yTextG, WTextG, HTextG;
float xIn, yIn, WIn, HIn;
float xCIrect, yCIrect, WCIrect,HCIrect;
float xCI, yCI, WCI, HCI;
float xT, yT, WT, HT;
float xS, yS, WS, HS;
float size2;
//
String Button="X";
String TextTittle="Happy Brithday";
String Text="Dear, Dad.";
String Body="this card is for celebrating your birthday, as this also a message to wish you to be successful and become more healthy throughout time, and I wish that you increase my allowance.";
//
PFont ButtonFont, TextFont, SignatureFont;
//
int ButtonSize, size;
//
color red=#FC0000, white=#FFFFFF;
//
PImage picBackground, ADI;
//
Boolean nightmode=false;
Boolean brightnessControl = false; //Note: arrow
//
int brightnessNumber=255; //range: 1-255
int brightnessRed=255;
int brightnessGreen=255;
//
float xTitle, yTitle, WTitle, HTitle;
//
float tittleSize;
//
void setup() {
  // Print
  println("tester");
  println("DisplayX: ", +displayWidth, "DisplayY: ", +displayHeight);
  //fullScreen ();
  size (1080,720);
  //Population
  WR = width;
  HR = height;
  //
  xBG = WR*19/20 ;
  yBG = HR*0 ;
  WBG = WR*1/20 ;
  HBG = HR*1/20 ;
  //
  xBackG = WR*0 ;
  yBackG = HR*0 ;
  WBackG = WR -1 ;
  HBackG = HR -1 ;
  //
  xTextG = WR*1/6 ;
  yTextG = HR*1/4 ;
  WTextG = WR*2/3;
  HTextG = HR*1/2;
  //
  yCIrect = yTextG ;
  xCI = WR*4/6 ;
  yCI = yTextG ;
  HCIrect = HTextG ;
  //
  //Title
  //
  xTitle = WR*1/4;
  yTitle = HR*1/12;
  WTitle = WR*1/2;
  HTitle = HR*1/8;
  //
  xT = WR*1/6;
  yT = HR*1/4;
  WT = WTextG*2/3;
  HT = HTextG*5/6;
  String[] fontList = PFont.list ();
  printArray (fontList);
  ButtonFont = createFont ("Californian FB Bold", 48);
  TextFont = createFont ("Calisto MT Italic", 48);
  SignatureFont = createFont ("Courier New", 48);
  //Population end
  //
  //DIVs
  fill(white);
  rect(xBackG, yBackG, WBackG, HBackG);
  //
  //
  picBackground = loadImage ("../imageUsed/Landscape/photo-1618174168866-c66b9d68e983.jpg");
  String open = "/";
  String in = "..";
  String image = "imageUsed/Landscape/";
  ADI = loadImage (in + open + image + "image.jpg");
  WCI = 500.0 ;
  HCI = 501.0 ;
  float aspectRatio = 0.0 ;
  if (HCI > WCI) {
    aspectRatio = WCI/HCI;
    println ("my dad is square");
  HCI = HCIrect;
  WCI = aspectRatio * HCIrect;
  } else if (HCI < WCI) {
    println ("you broke the aspect, debug!");
  }
xCIrect = xTextG + ((xTextG - WCI)*-5/2);
  //
} //End setup
void draw() {
  //size(600,400);
  //
  int hourNightmode = hour (); // 24:hour
  if ( hourNightmode>16 ) {
    nightmode=true;
  } else if ( hourNightmode<05 ) {
    nightmode=true;
  } else {
    nightmode=false;
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
  //
  fill (white);
  rect (xTextG, yTextG, WTextG, HTextG);
  //
  fill (0);
  //rect (xCI, yCI, WCIrect, HCIrect);
  image ( ADI, xCIrect, yCIrect, WCI, HCI );
  //
  fill (red);
  rect (xBG, yBG, WBG, HBG);
  //
  fill (white);
  textAlign (CENTER, CENTER);
  size=15;
  text (Button, xBG, yBG, WBG, HBG);
  textFont (ButtonFont, size);
  //
  noFill ();
  //
  fill (white);
  //Title
  rect(xTitle, yTitle, WTitle, HTitle);
  fill (0);
  textSize (50);
  text(TextTittle, xTitle, yTitle, WTitle, HTitle);
  textAlign (CENTER, CENTER);
  textFont (TextFont, size);
  fill(0);
  //
  fill (255);
  rect(xT, yT, WT, HT);
  //
  fill(0);
  textSize(30);
  text(Text, xT, HR*1/10, WT, HT);
  textFont (ButtonFont, size);
  textSize(25);
  text(Body, xT, yT, WT, HT);
  textFont (ButtonFont, size);
  //
  //
} //End draw
void mousePressed() {
  //
  if (mouseX>xBG && mouseX<xBG + WBG && mouseY>yBG && mouseY<yBG + HBG) exit();
  //
} //END setup 2
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
