PFont font;
color purple= , white= ;
//
void textSetup() {
  //Fonts from OS
  String[] fontList = PFont.list(); //To list all fonts available on system
  printArray(fontList); //For listing all possible fonts to choose, then createFont
  //
  font = createFont ("Harrington", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
} //End Text Setup
//
purple, CENTER, CENTER, font, title, titleX, titleY, titleWidth, titleHeight
void textDraw( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight,  ) {
  fill( ink );
  textAlign ( alignX, alignY);
  float size = 50;
  textFont(font, size); //Change the number until it fits, largest font size
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill( white ); //default
} //End Text Draw



//
