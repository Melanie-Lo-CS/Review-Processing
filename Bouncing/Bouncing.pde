// global variables

int ballX, ballposX;
int ballY, ballposY;

int ballxdir = 1;
int ballydir = 1;
int ballDiam;

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
  
  if (ballX == width || ballX == 0){
    ballxdir = ballxdir * (-1);
  }
  if (ballY == height || ballY == 0) {
    ballydir = ballydir * (-1);
  }

  fill(0); 
  ellipse( ballX, ballY, ballDiam, ballDiam);

}
