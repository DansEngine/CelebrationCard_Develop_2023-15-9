//Global Variables
int appWidth, appHeight;
float xRectbackground, yRectbackground, WRectbackground, HRectbackground;
float x2Quit, y2Quit, W2Quit, H2Quit;
//String //All tect variables as name = value pairs
//PFont ;//All fonts used
//color (variables)=Hex", ; //colour palette & ink; All color variables used (use color selector/tools)
//int sizeFont, size ; //Text variables
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
  //DIVs
  rect(xRectbackground, yRectbackground, WRectbackground, HRectbackground);
  rect(x2Quit, y2Quit, W2Quit, H2Quit);
  //rect(); //Background image.
  //rect(); //Background image template.
  //rect(); //Need Help? button.
  //rect(); //image on the side. (birthday image)
  //rect(); //image text.
  //rect(); //text in middle.
  //rect(); //Title.
  //rect(); //Quit button (if he pressed this is will come over imidiately).
  //rect(); //Quit button threat text.
  //rect(); //Sincerely bottom.
  //rect(); //Click Here button.
  //rect(); //Ctrl + C.
  //
  //Text Setup
  //Fonts from OS (operation system)
  //String[] fontList = PFont.list (); //List all fonts available on OS
  //printArray(fontList);
  //[fontName] = createFont("fontSpelling", [starting Font size]);
 //Verify the font exists in Processing.Java
} //End setup
  //
void draw() {
  //
  fill([colourName]);
  textAlign([CENTER,CENTER]); //ALIGN X&Y, see processing.org / Refrence
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = [pixelNumberSize]; // interger number
  textFont([PFont variables, size]); //stats which font to use
  text([textStringName, four rect() variables copied from DIVs]);
  //
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
  //if ( mouseX>x2Quit && mouseX<x2Quit+W2Quit && mouseY>y2Quit && mouseY<y2Quit+H2Quit) exit();
} //End mousePressed
//
//End MAIN Program
