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

  screenChecker();
  
   gameStart();

  //Code to change "Start" Boolean Variable to true
  
}
   void draw() {
     background(100);
   startStop();
 //arithemetic to calcaulte starting positions of paddles and ball

if (start==true) {
  
    playGame(); 
    //Also contains "ball squish" procedure, with change in frameRate
    // Also contains highlihgts for positive user feedback
    score(); //contains highlihgts for positive user feedback
  }
}
