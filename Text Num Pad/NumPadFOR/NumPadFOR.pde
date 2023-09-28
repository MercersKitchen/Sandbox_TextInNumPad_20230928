/* Program Notes: reviews text and introduces a text calculator
 */
void setup() {
  size (400, 500);
  display();
  population(); // rect() variables
} //End setup

//
void draw() {
  for ( int i=0; i<numPadColumns; i++ ) {
    for ( int j=0; j<numPadRows-1; j++ ) {
      rect(x[i], y[j], widthSquare, heightSquare);
    } //End FOR
  } //End FOR
  /* Primitive Variables in drawing rect()s
   rect(x0, y0, widthSquare, heightSquare);
   rect(x0, y1, widthSquare, heightSquare);
   rect(x0, y2, widthSquare, heightSquare);
   rect(x0, y3, widthSquare, heightSquare);
   rect(x1, y0, widthSquare, heightSquare);
   rect(x1, y1, widthSquare, heightSquare);
   rect(x1, y2, widthSquare, heightSquare);
   rect(x1, y3, widthSquare, heightSquare);
   rect(x2, y0, widthSquare, heightSquare);
   rect(x2, y1, widthSquare, heightSquare);
   rect(x2, y2, widthSquare, heightSquare);
   rect(x2, y3, widthSquare, heightSquare);
   */
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
