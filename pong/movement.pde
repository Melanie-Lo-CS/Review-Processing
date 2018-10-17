void movement(){

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
}
