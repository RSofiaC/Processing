//Cabina de fotos by Regina Cantu
//Countdown code by rbrauer https://forum.processing.org/one/topic/countdown-to-a-game#25080000000805202.html

import processing.video.*;
int time;
int wait = 1000;
int msec, sec;
boolean start;
boolean foto=false;
int flash;
int capnum = 0;
Capture myCapture;
PImage aj;
 
void setup(){
  fullScreen();
   //size of canvas
  //size(1024, 576);
  // setFullScreen(true);

  //slower frame rate
  frameRate(25);

  //black background
  background(0);
  
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    //cam = new Capture(this, cameras[4]);
    //cam.start();     
  }      
  
 myCapture = new Capture(this,cameras[64]); //HOW DO I GET A BETTER RESOLUTION IT WONT TAKE 1024,768 FROM MY CAMERA??
 myCapture.start(); 
}
 
void draw(){
  if (myCapture.available()) {
    myCapture.read();
  println(flash);
  }
  image(myCapture, 0, 0, width, height);
   
  if(!start) {
    sec = floor((millis()-msec)*.001);
//above:
//current cumulative time in thousands of a second subtract the
//time the countdown started to start from "now" divide by 1000
//and drop the decimal part
   
    if(sec == 4) {
      start = true;
      flash=0;
    }
  
  }
  
  //if (flash==21 || flash == 71){
////do stuff here when the coundown finishes  
////TODO it takes 4 frames because sec is stuck for 4 millis in 3?
  
  //  foto = true;
   
  //}
 
  ////seconds////
  if(sec == 3){ //after three seconds one second remains ...
 if(!start){
 saveFrame(capnum+".jpeg");
 background(255); 

    rect(240,80,48,160);
    rect(240,288,48,160);
    flash++; start = true;
      flash=0;
    capnum++; }
  }
  if(sec == 2){
    rect(80,32,160,48);
    rect(80,240,160,48);
    rect(32,288,48,160);
    rect(80,448,160,48);
    rect(240,80,48,160);
    flash++;
  }
  if(sec == 1){
    rect(80,32,160,48);
    rect(80,240,160,48);
    rect(80,448,160,48);
    rect(240,80,48,160);
    rect(240,288,48,160);
    flash++;
  }
}

void mouseClicked() {
//countdown again first resetting the "now" time and start var
  msec = millis();
  start = false;
  foto = false;
}
