//import processing.pdf.*
PFont sourceCodeBold;
PFont comicSansMs;
int index = 0;
float x;
boolean recordScreen;
String fileName;
String a = "Today is going to be a good day";
String g = "Shine bright!";
String[] headlines = {
  "You are Worth it"
};
String[] statement = {
  "Do not Give Up"
};

void setup(){
  size(500,500);
  surface.setResizable(true);
  printArray(PFont.list());
  sourceCodeBold = createFont("Source Code Pro Bold", 48, true);
  comicSansMs = createFont(PFont.list()[49], 48, true);
  x = width;
  fileName = "Lab 8";
      
}

void draw(){
  background(80,29,130);
  textAlign(CENTER, CENTER);
  textFont(sourceCodeBold);
  stroke(0,127,255,204);
  textAlign(CENTER);
  textSize(25);
  fill(#ff8b17);
  //this is going to say today is going to be a good day
  text(a.toUpperCase(), width / 2.0, height - 400);
  textFont(sourceCodeBold);
  textSize(50);
  fill(#feff00);
  //this is going to say shine bright
  text(g.toLowerCase(), width / 2.0, height - 450);
  
  //Took the idea of the scrolling headlines from the example in lesson 8
  text(headlines[index], x, height-220);
  x = x - 5;
  float w = textWidth(headlines[index]); 
  if (x < -w) {
    x = width;
    index = (index + 5) % headlines.length;
  
}
// recording the screen for the .pdf file
 if (recordScreen) {
    beginRecord(PDF, fileName + ".pdf");
  }
 if (recordScreen) {
    endRecord();
    recordScreen = false;
 }
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    recordScreen = true;
  }
}
String loadString(String filePath, String delimiter) {
  String[] lines = loadStrings(filePath);
  StringBuilder sbuilder = new StringBuilder();
  for (int i = 0, size = lines.length; i < size; ++i) {
    sbuilder.append(lines[i]);
    sbuilder.append(delimiter);
  }
  return sbuilder.toString();
}