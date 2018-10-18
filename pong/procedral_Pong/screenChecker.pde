void screenChecker() {
   
 String fullSize = "Width=" + displayWidth + "; Height=" + displayHeight;
   
if (width > displayWidth) { 
    println ("ERROR: Change Pong Table size-width, it is too big."); 
    exit();
 }
    if (height > displayHeight) { 
   println ("ERROR: Change Pong Table size-height, it is too big"); 
    exit();
  }

  if (width == height) {
   println ("Full Screen Debugging: ", fullSize);
   println ("ERROR: The Canvas is a Square causing problems with the ball bouncing. Width & Height are " + width + ", " + height);
   println ("Please adjust on line, function 'size'.");
   println ("Do not size larger than the monitor: ", fullSize);
   exit();
 }
   
   }
