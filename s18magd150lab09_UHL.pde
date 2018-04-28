import processing.video.*;
import processing.sound.*;
PImage img;
float offset = 0;
float easing = 0.05;
SoundFile song;
boolean playing = false;
Capture video;
BrownNoise noise;

 void setup() {
   size(600,600);
   video = new Capture(this,width,height);
   video.start();
   img = loadImage("mirror.jpg");
   //this will make a viking horn because it sounds cool
   song = new SoundFile(this, "vikinghorn.m3u");
   noise = new BrownNoise(this);
   noise.play();
 }
  void captureEvent(Capture video){
    video.read(); 
}

 //when mouse is pressed to play, it should do a live feed and play a viking horn
 void mousePressed() {
  video.read();
   song.play();
   song.rate(.85);
 }
 /*can you help me in class to see what is wrong with it. i tried to comment out the
 capture but it still says there is a bug that needs to be fixed.*/
 void draw() {
   image(img, 0,0,width,height);
   //this should make the live video a bit transparent over the broken mirror
   tint(255,127);
   image(video, offset, 0);
   float vol = map(mouseX, 0, width, 0, 1);
  noise.amp(vol);
 }