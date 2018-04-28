float time = 0;
int choice = 0;
int y = 100;
int z = 100;
float a, b, radius, speed;
boolean up, left, down, right;
char upkey, downkey, leftkey, rightkey;

void setup(){
  size(500,500);
  choice = int(random(0,100));
  println("the random number is " + choice + "!");
  upkey = 'w';
  downkey = 's';
  leftkey = 'a';
  rightkey = 'd';
  a = width / 3.0;
  b = height / 3.0;
  radius = min(width,height) / 5.0;
  speed = 6;
  up = left = down = right = false;
  
}

void draw(){
  //ocean water
  background(38, 41, 188); 
  float x = 0;
    while (x<width) {
    fill(5, 11, 255);
    line(x, 250 + 60 * noise(x/100, time), x, height);
        x = x+1;
  }
  time = time + 0.03;
//moon
    if (choice > 50) {
  fill(255);
  float d = map(mouseX, 0, width, 40, 300);
  ellipse(y, 40, d, d);
  y = y + 1;
//sun
} else if (choice <= 50){
  fill(247,174,55);
  ellipse(z, 40, 50, 50);
  z = z + 1;
} 
if (mousePressed){
  if (mouseButton == LEFT) {
    fill(247,174,55);
    ellipse(205,100,50,50);
  }else if (mouseButton == RIGHT){
   
}
ellipse(a,b,radius,radius);
if (keyPressed) {
  if (key == upkey){
    b -= speed;
  }
  if (key == leftkey){
    a -= speed;
  }
  if (key == downkey){
    b += speed;
  }
  if (key == rightkey){
    a += speed;
  }
}
}
}