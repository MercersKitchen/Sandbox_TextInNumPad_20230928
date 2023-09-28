void population() {
  // Simple Width Algorithm for number pad
  widthSquare = appWidth*1/4;
  heightSquare = widthSquare;
  //
  // Height Error Check
  if ( widthSquare*8 <= appHeight ) {
    println("true");
    // Empty IF
  } else {
    println("false");
    widthSquare = heightSquare = appHeight*1/8;
    border = appWidth - ( widthSquare*1/2 + widthSquare*3 + widthSquare*1/2 );
    border = border*1/2; // using one variable saves system resources
  } //End Height Error Check
  //
} //End Population
