class BoxDude {

 BoxDude(){ 
   ellipseMode(CENTER);
  rectMode(CENTER);

 }

void draw() {
    drawBoxDude();
   }
//The code underneath will draw the box guy or a version of the zoog from lesson 1.
void drawBoxDude(){
 // Body
stroke(0);
fill(#c5050c);
rect(240, 145, 20, 100);

// Head
fill(255);
ellipse(240, 115, 60, 60); 

// Eyes
fill(0); 
ellipse(221, 115, 16, 32); 
ellipse(259, 115, 16, 32);

// Legs
stroke(0);
line(230, 195, 220, 205);
line(250, 195, 260, 205);

//arms
line(195, 155, 230, 160);
line(295, 155, 250, 160);
}

}