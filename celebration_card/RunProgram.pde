void areyousure () {
  areUX = WR*1/4;
  areUY = HR*1/4;
  areUW = WR*1/2;
  areUH = HR*1/2;
  BYX = WR;
  BYY = HR;
  BYW = WR;
  BYH = HR;
  //
  fill(255);
  rect( areUX, areUY ,areUW, areUH );
  rect( BYX, BYY, BYW, BYH );
  //rect( BNX, BNY, BNW, BNH );
  //
}//End
//
//
//
void nothing () {
  noStroke();
  noFill();
  rect( areUX, areUY ,areUW, areUH );
  rect( BYX, BYY, BYW, BYH );
}//END nothing
//
//
//
void totallylot () {
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
  //QUIT BUTTON
  fill (255);
  rect (xBG, yBG, WBG, HBG);
  int overCH = red;
  if ( mouseX>xBG && mouseX<xBG + WBG && mouseY>yBG && mouseY<yBG + HBG ) {
    fill (overCH);
    rect (xBG, yBG, WBG, HBG);
  } else {
    fill(255);
    rect (xBG, yBG, WBG, HBG);
  }
  //END QUIT BUTTON
  //
  fill(0);
  textAlign (CENTER, CENTER);
  size=15;
  text (Button, xBG, yBG, WBG, HBG);
  textFont (ButtonFont, size);
  //
  noFill ();
  //
  int overHC = gray;
  fill (white);
  rect (SMX, SMY, SMW, SMH);
  if ( mouseX>SMX && mouseX<SMX + SMW && mouseY>SMY && mouseY<SMY + SMH ) {
    fill (overHC);
    rect (SMX, SMY, SMW, SMH);
  } else {
    fill (255);
    rect (SMX, SMY, SMW, SMH);
  }
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
}//ENd
