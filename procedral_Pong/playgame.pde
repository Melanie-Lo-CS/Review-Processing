void playGame(){
  background(#E9FF03);
    
  ballX += ballxdir;
  ballY += ballydir;
  ellipse(ballX,ballY, ballDiam,ballDiam);
  
  //debug: ball is half off the screen
    if (ballX == height || ballX == 0) {
    ballxdir = ballxdir * (-1);
  }
    if (ballY == height || ballY == 0) {
    ballydir = ballydir * (-1);
  }

  ballSquish();
  


}
