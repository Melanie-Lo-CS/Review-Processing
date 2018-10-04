  
float number;
int [] counter = {0, 0};

void setup(){
}
void draw()
{
  for (int i=0; i<=1000000; i++){
  number = int (random (-2, 2));
while (number == 0){
   number = int (random (-2, 2));
  }
  if (number == -1) {counter[0] += 1;}
  if (number == 1) {counter[1] += 1;}
}
  println ("Number of -1 " + counter[0]);
  println ("Number of 1 " + counter[1]);
} 
