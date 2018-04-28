  boolean switcher;
  int red;
  int green;
  int blue;
  
 float deltaMouseX;
 float deltaMouseY;
 
 float w=10;
 float h=10;
 void setup(){
  size(500,500);
  surface.setResizable(true);
  background(#6ce8f2);
 
 
}

void draw(){
  //2 println uses
  println("Hello World");
  println("this is my drawing of bubbles");
  println("it is a crude and awful drawing of bubbles...");
  //one use of the floating point
  float x1=map(mouseX,50,width,400,200);
  ellipse(x1,50,50,50);
  float y1=constrain(mouseY,300,70);
  ellipse(y1,300,50,50);
  
  //second use of the floating point
  red = (red + 0) % 300;
  green = (green + 0) % 300;
  blue = (blue + 1) % 256;
  fill(red, green, blue);
  w = (w + 4) % (height / 6);
  h = (h + 3) % (height / 6);
  ellipse(mouseX, mouseY, w, h);
  switcher = !switcher;
  
  //distance
  float d=dist(width/3,height/3,pmouseX,pmouseY);
  println(d);
    
  
}