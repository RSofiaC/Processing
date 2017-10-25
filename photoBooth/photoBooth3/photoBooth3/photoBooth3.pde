//mouseBooth
//by Regina Cantu
//october 2017

//based on code found here:
//https://pingu98.wordpress.com/tag/diy-photobooth-processing/

//import libraries
import processing.video.*;

//crear capture
Capture myCapture;

int a = 1024; // width of window
int b = 768;  // height of window
int x = 100;  // x- position text
int y = 700; // y- position text

PImage aj;
PImage bj;
PImage cj;
PImage dj;

//configuration

void setup() {

  //size of canvas
  size(1024, 768);
  // setFullScreen(true);

  //slower frame rate
  frameRate(25);

  //black background
  background(0);

  //font
  //PFont fontB = loadFont("ITC American Typewriter Bold.otf");
  //textFont(fontB, 100);

  //initialize capture
  //todo: better resolution of webcam
  //myCapture = new Capture(this, 640, 480, 30);
  myCapture = new Capture(this);
  myCapture.start();
}

void draw() {

  //if there is a new image, get it
  if (myCapture.available()) {
    myCapture.read();
  }
  //image(myCapture, 0, 0,640*1.5,360*1.5); //DRAWS THE CAPTURE ON TOP...NOT NECESSARY
  //background(255);
  fill(0);

  //image (myCapture, 0, 0);
  image(myCapture, 0, 0, width, height);
  //textFont(fontA, 30);
  fill(0);
  //textFont(fontA, 30);
  fill(255);
  //text ("Preview! Get ready for your photo in "+str(countdowntimer), x, y);

  image(myCapture, 0, 0, width, height);



  //if (globalframecount == 439) {
  //  saveFrame(capnum+".jpeg");
  //  cj = loadImage(capnum+".jpeg");
  //  capnum++;
  //}


  //  if (globalframecount == 499) {
  //    fill(255);
  //    background(0);
  //    rect(width/11, height/10, (width-240), (height-100));
  //    image(aj, width/8, height/8, width/3, height/3);
  //    image(bj, 4*(width/8), height/8, width/3, height/3);
  //    image(cj, width/8, 4*(height/8), width/3, height/3);
  //    image(dj, 4*(width/8), 4*(height/8), width/3, height/3);
  //    fill(0);
  //    text ("Press button to take some more!", x, y);
  //    saveFrame("multipage"+capnum+".jpeg");
  //    globalframecount = -1;
  //  }
  //}
}