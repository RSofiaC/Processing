import processing.video.*;
int time;
int wait = 1000;
int msec, sec;
boolean start=false;
int capnum = 0;
Capture myCapture;
PImage aj;
 
void setup(){
   //size of canvas
  size(1024, 768);
  // setFullScreen(true);

  //slower frame rate
  frameRate(25);

  //black background
  background(0);
  
 myCapture = new Capture(this, 640,480, 30); //HOW DO I GET A BETTER RESOLUTION IT WONT TAKE 1024,768 FROM MY CAMERA??
 myCapture.start(); 
}
 
void draw(){
  println("start");
  
   if (myCapture.available()) {
    myCapture.read();
  }
 
  if(!start) {
    image(myCapture, 0, 0, width, height);
    sec = floor((millis()-msec)*.001);
//above:
//current cumulative time in thousands of a second subtract the
//time the countdown started to start from "now" divide by 1000
//and drop the decimal part
    if(sec == 4) start = true;
  
  } else {
//do stuff here when the coundown finishes  
//TODO it is not poping out of this else but when mouseclicked...make it stop!
    saveFrame(capnum+".jpeg");
  aj = loadImage(capnum+".jpeg");
  capnum++;
  //background(255);
  }
 
 
  ////seconds////
  if(sec == 3){ //after three seconds one second remains ...
    rect(240,80,48,160);
    rect(240,288,48,160);
  }
  if(sec == 2){
    rect(80,32,160,48);
    rect(80,240,160,48);
    rect(32,288,48,160);
    rect(80,448,160,48);
    rect(240,80,48,160);
  }
  if(sec == 1){
    rect(80,32,160,48);
    rect(80,240,160,48);
    rect(80,448,160,48);
    rect(240,80,48,160);
    rect(240,288,48,160);
  }
}

void mouseClicked() {
//countdown again first resetting the "now" time and start var
  msec = millis();
  start = false;
}