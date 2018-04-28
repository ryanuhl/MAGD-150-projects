BoxDude b;
int X_AXIS = 2;
int Y_AXIS = 1;
color b1, b2, c1, c2, a1, a2;

 void setup(){
  surface.setResizable(true);
  size(420,420);
  b = new BoxDude();
  //These are defining the colors for the gradient for the background.
  b1 = color(80,29,130);
  b2 = color(17, 229, 255);
  c1 = color(245, 15, 15);
  c2 = color(15, 245, 81);
  a1 = color(255, 18, 232);
  a2 = color(33, 18, 255);
  }

void draw(){
  //background
  setGradient(0, 0, width/2, height, c2, b1, X_AXIS);
  setGradient(width/2, 0, width/2, height, b1, c1, X_AXIS);
  b.draw();
 }
//This should clear the picture if you click the mouse button, Hopefully...
void mousePressed() {
  if (mousePressed) {
  clear();
  }
}
// got gradient code from processing.org
void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) { 
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) { 
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}