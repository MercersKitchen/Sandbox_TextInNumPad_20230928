/* Program Notes: reviews text and introduces a text calculator
 */
void setup() {
  size (400, 500);
  display();
  population(); // rect() variables
  textSetup();
} //End setup
//
void draw() {
  numPadRects();
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 50;
  textFont(font, 50); //Change the number until it fits, largest font size
  //
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(whiteInk); //reset
} //End draw
//
void mousePressed() {
  //
  // Creating Number Pad Buttons
  // Basic IF key variables: mouseX> && mouseX< && mouseY> && mouseY<
  // First rect variables: x0, y0, widthSquare, heightSquare
  // if ( mouseX>x0 && mouseX<x0+widthSquare && mouseY>y0 && mouseY<y0+widthSquare ) println("1");
  //
  int buttonCounter = 1;
  for ( int i=0; i<numPadColumns; i++ ) {
    for ( int j=0; j<numPadRows; j++ ) {
      println(i, j);
      if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[j] && mouseY<y[j]+widthSquare ) println("Button #:", buttonCounter);
      buttonCounter++;
      // Note: built in ERROR with buttonCounter, iterates the wrong way
      // CAUTION: prototyping button return must be fixed before using this in timer program
    } //End FOR
  } // End FOR
  // CAUTION: will iterate over all buttons
  // Fix Hint: start at beginning and stop when button activated
  // Solution: Change FOR to WHILE
  // Unsolved Problem: estimating where to start reading instead of button "1"
  //
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program
