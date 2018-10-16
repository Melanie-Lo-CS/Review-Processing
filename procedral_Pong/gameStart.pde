void gameStart() {
  //arthrimitic to play the game
  
  ballStartX = width/2; //Starting ball position 
  ballStartY = height/2;
  ballY = ballStartY;
  ballX = ballStartX;
  ballDiam = width/70;

  
  paddleWidthRatio = ballDiam/2;
  paddle[0] = paddleWidthRatio; 
  paddle[1] = height/paddleHeightRatio; 
  player[0] = 0;
  player[1] = height/2 - height/paddleHeightRatio/2; //middle minus half the paddle to find the paddle's center
  int section = width / paddleWidthRatio; // Local Variable: calculate the divisions of the paddle and draw in the last one
  player[2] = width*(section-1)/section; // *(paddlewidthRatio-1)/paddlewidthRatio
  player[3] = height/2;
}
