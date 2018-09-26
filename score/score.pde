// global variables

int ballX, ballposX;
int ballY, ballposY;

int ballxdir = 1;
int ballydir = 1;
int ballDiam;

int [] score = {0, 0};

void setup() {

  size(500, 500);
  ballposX = width/2; //Starting ball position 
  ballposY = height/2;
  ballY = ballposY;
  ballX = ballposX;
  ballDiam = width/70;
}

void draw () {


  background(#08FFE0);

  ballX += ballxdir;
  ballY += ballydir;

  if (ballX == 0) { // ball 0 is for player two
    score[1] += 1; 
    println ("score board is: " + score[0] +" player 1 " + "   " + score[1] + " player 2");
  } 

  if (ballX == width) { //this one is for player one 
    score[0] += 1;
    println ("score board is: " + score[0] +" player 1 " + "   " + score[1] + " player 2");
  }
  if (ballY == height || ballY == 0) {
    ballydir = ballydir * (-1);
  }


  fill(0); 
  ellipse( ballX, ballY, ballDiam, ballDiam);
}
