// Global Variables (Note: any variables at the beginning of Tabs, before "void" are considered Global Variables)
Boolean start = false;
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiam;
int paddleWidthRatio; //Variable is being repeated in setup() figuring good width of paddle, half of ballDiameter
//Reason: do not bounce of the edge of the paddle
int ballMoveX = 1, ballMoveY = 1;
int paddleHeightRatio = 10;
int [] paddle = {0, 0}; //Paddle width and height
int [] player = new int [4]; //Alternate way of initializing an Array, for paddles
int [] score = {0, 0};
//0: Player1_X, 1:Player1_Y, 2:Player2_X, 3:Player2_Y
// End Global Variables
//This File is the main file
//It calls each Procedure in either setup() or draw()
void setup() {
  size(500, 600);
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
     

  //Code to change "Start" Boolean Variable to true
  
}
   void draw() {
  
  background(255);
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

  //Draws the ball
  fill(0); //Black
  ellipse(ballX, ballY, ballDiam, ballDiam);

  //Drawing Paddles
  fill(#FF00FF); //Purple
  rect(player[0], player[1], paddle[0], paddle[1]);
  rect(player[2], player[3], paddle[0], paddle[1]);
  fill(0); //Reseting to Black
  
  movement();
  score();
}
  
