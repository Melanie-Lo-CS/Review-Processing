void playGame () {

  background(#E9FF03); //Yellow

  //Calcualting "next" ball position
  //Section necessary when calling functions so passing current arguements
  ballX += ballMoveX; //origonally x+1 operation
  ballY += ballMoveY; //origonally x+1 operation

 
  if (ballX == paddle[0]+(ballDiam/2) && ballY >= player[1] & ballY <= player[1] + paddle[1]) {
    ballMoveX *= (-1); //Shorthand for previous x*-1
  }
  if (ballX == player[2]-(ballDiam/2) && ballY >= player[3] & ballY <= player[3] + paddle[1]) {
    ballMoveX *= (-1); //Shorthand for previous x*-1
  }

  // Code to Bounce off Floor and Ceiling
  if (ballY == 0+(ballDiam/2) || ballY == height-(ballDiam/2) ) {
    ballMoveY = ballMoveY * (-1);
  }

  //ballSquish();

 
  if (keyPressed == true & key == CODED) {  
    if (keyCode == UP) {
      if (player[1] >= 5) { 
        player[1] -= 5; 
      }
      if (player[1] < 0) { //Catch any subtraction equalling less than zero
        player[1] = 0;
      }
    }

    if (keyCode == DOWN) {
      if (player[1] + paddle[1] <= height) {
        player[1] += 5; //Review incrementation other than +1
      }
      if (player[1] + paddle[1] > height) {
        player[1] = height - paddle[1] - 1; //Cannot add "player[1] + paddle[1]" in an assignment; thus, algebra needed
    
      }
    }
  } //End of keyPressed

  //Player 2 Movement
  if (mouseY >=0 || mouseY - paddle[1] < height) {
    player[3] = mouseY;
  }
  if (mouseY >= height - paddle[1]) {
    player[3] = height - paddle[1] - 1;
  }
  
 

  //Draws the ball
  fill(0); //Black
  ellipse(ballX, ballY, ballDiam, ballDiam);

  //Drawing Paddles
  fill(#FF00FF); //Purple
  rect(player[0], player[1], paddle[0], paddle[1]);
  rect(player[2], player[3], paddle[0], paddle[1]);
  fill(0); //Reseting to Black
}
