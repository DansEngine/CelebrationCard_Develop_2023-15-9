//Global Variables
int appWidth, appHeight;
float xRectbackground, yRectbackground, WRectbackground, HRectbackground;
float x2Quit, y2Quit, W2Quit, H2Quit;
//
// x = x axes of rectangle
// y = y axes of rectangle
// W = width of rectangle
// H = height of rectangle
void setup() {
  //Ctrl+T: wide space
  //print and println
  println("hello world");
  println("Width: "+width, "\tHieght: "+height);
  println("Display Width:"+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(1080,720);
  int appWidth = width;
  int appHeight = height;
  //
  //Population
  xRectbackground = appWidth*0;
  yRectbackground = appHeight*0;
  WRectbackground = appWidth -1;
  HRectbackground = appHeight -1;
  x2Quit = appWidth*1/4;
  y2Quit = appHeight*1/4;
  W2Quit = appWidth *1/2;
  H2Quit = appHeight *1/2;
  //
} //End setup
  //
void draw() {
  rect(xRectbackground, yRectbackground, WRectbackground, HRectbackground);
  rect(x2Quit, y2Quit, W2Quit, H2Quit);
//text ("Microsoft" ,X float,Y float);
//textSize (Size);
} //End draw
//
void keyPressed() {
} //End keypressed
//
void mousePressed() {
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  //x2, y2, W2, H2
  if ( mouseX>x2Quit && mouseX<x2Quit+W2Quit && mouseY>y2Quit && mouseY<y2Quit+H2Quit) exit();
} //End mousePressed
//
//End MAIN Program
