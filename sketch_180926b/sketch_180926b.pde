  
float number;
int counter;

void setup(){
}
void draw()
{
  for (int i=0; i<=1 000 000; 1++){
  number = int (random (-2, 2));
while (number == 0);
   number = int (random (-2, 2));
  }
  if (number == -1) {counter-1 += 1;}
  if (number == 1) {counter1 += 1;}
     counter +=1;
  println ("Choices" + counter + ": " + number);
} 
