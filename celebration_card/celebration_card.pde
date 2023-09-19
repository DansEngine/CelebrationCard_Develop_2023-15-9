//Global Variables
int appWidth, appHeight;
float x, y, W, H;
float x2, y2, W2, H2;
//
void setup() {
  //Ctrl+T: wide space
  //print and println
  println("hello world");
  println("Width: "+width, "\tHieght: "+height);
  println("Display Width:"+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(810,540);
  int appWidth = width;
  int appHeight = height;
  //
  //Population
  x = appWidth*0;
  y = appHeight*0;
  W = appWidth -1;
  H = appHeight -1;
  x2 = appWidth*1/4;
  y2 = appHeight*1/4;
  W2 = appWidth *1/2;
  H2 = appHeight *1/2;
  //
} //End setup
//
void draw() {
  rect(x, y, W, H);
  rect(x2, y2, W2, H2);
} //End draw
//
void keyPressed() {
} //End keypressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
