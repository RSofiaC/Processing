//source: https://pingu98.wordpress.com/tag/diy-photobooth-processing/
import processing.video.*;
//import fullscreen.*;


Capture myCapture;
int a = 1024; // width of window
int b = 768;  // height of window
int x = 100;  // x- position text
int y = 700; // y- position text
int capnum = 0;
int countdowntimer = 10;
int globalframecount = 0;
PImage aj;
PImage bj;
PImage cj;
PImage dj;
//FullScreen fs;

void setup(){

 frameRate(25);
 size(1024,768);
 // fs = new FullScreen(this);

 // setFullScreen(true);
   background(0);

 //PFont fontB = loadFont("ITC American Typewriter Bold.otf");
 //textFont(fontB, 100);
myCapture = new Capture(this, 640,480, 30); //HOW DO I GET A BETTER RESOLUTION IT WONT TAKE 1024,768 FROM MY CAMERA??
 myCapture.start();  
     
}

void draw(){
// PFont fontA = loadFont("ITC American Typewriter Bold.otf");
// textFont(fontA);
  println("start");

 if (myCapture.available()) {
    myCapture.read();
  }
 //image(myCapture, 0, 0,640*1.5,360*1.5); //DRAWS THE CAPTURE ON TOP...NOT NECESSARY
 if (mousePressed== true){
   globalframecount = 1;
 }
   //background(255);
   fill(0);

 if (globalframecount == 25) {
 countdowntimer = 9;
 }
 if (globalframecount == 50) {
 countdowntimer = 8;
 }
 if (globalframecount == 75) {
 countdowntimer = 7;
 }
 if (globalframecount == 100) {
 countdowntimer = 6;
 }
 if (globalframecount == 125) {
 countdowntimer = 5;
 }
 if (globalframecount == 150) {
 countdowntimer = 4;
 }
 if (globalframecount == 175) {
 countdowntimer = 3;
 }
 if (globalframecount == 200) {
 countdowntimer = 2;
 }
 if (globalframecount == 225) {
 countdowntimer = 1;
 } 

 if ((globalframecount < 250) & (globalframecount > 0)) {
         image(myCapture, 0, 0, width, height);
       //textFont(fontA, 30);
       fill(0);
       text ("Preview! Get ready for your photo in "+str(countdowntimer), x+2, y);
       text ("Preview! Get ready for your photo in "+str(countdowntimer), x, y+2);
       text ("Preview! Get ready for your photo in "+str(countdowntimer), x-2, y);
       text ("Preview! Get ready for your photo in "+str(countdowntimer), x, y-2);
       //textFont(fontA, 30);
       fill(255);
       text ("Preview! Get ready for your photo in "+str(countdowntimer), x, y);
       //text (countdowntimer, width-250, y);
       globalframecount++;
 }

 if ((globalframecount >= 250) & (globalframecount < 500)) {
    image(myCapture, 0, 0, width, height);

 if ((globalframecount > 250) & (globalframecount < 311))
 {
 //textFont(fontA, 100);
 fill(0);
 text (str(countdowntimer), width/2+2, height/2);

 text (str(countdowntimer), width/2, height/2+2);

 text (str(countdowntimer), width/2-2, height/2);

 text (str(countdowntimer), width/2, height/2-2);

 fill(255);
 text (str(countdowntimer), width/2, height/2-2);
  }
if (globalframecount == 250)
{
  countdowntimer = 3;
}

if (globalframecount == 270)
{
  countdowntimer = 2;
}

if (globalframecount == 290)
{
  countdowntimer = 1;
}

if (globalframecount == 312) {
  background(255);
}
   if (globalframecount == 313){
  saveFrame(capnum+".jpeg");
  aj = loadImage(capnum+".jpeg");
  capnum++;}

  if ((globalframecount > 314) & (globalframecount < 373))
 {
// textFont(fontA, 100);
 fill(0);
 text (str(countdowntimer), width/2+2, height/2);

 text (str(countdowntimer), width/2, height/2+2);

 text (str(countdowntimer), width/2-2, height/2);

 text (str(countdowntimer), width/2, height/2-2);

 fill(255);
 text (str(countdowntimer), width/2, height/2-2);
  }
if (globalframecount == 314)
{
  countdowntimer = 3;
}

if (globalframecount == 335)
{
  countdowntimer = 2;
}

if (globalframecount == 355)
{
  countdowntimer = 1;
}

  if (globalframecount == 374) {
  background(255);
}

  if (globalframecount == 375){
  saveFrame(capnum+".jpeg");
  bj = loadImage(capnum+".jpeg");
  capnum++;
    }

  if ((globalframecount > 375) & (globalframecount < 436))
 {
// textFont(fontA, 100);
 fill(0);
 text (str(countdowntimer), width/2+2, height/2);

 text (str(countdowntimer), width/2, height/2+2);

 text (str(countdowntimer), width/2-2, height/2);

 text (str(countdowntimer), width/2, height/2-2);

 fill(255);
 text (str(countdowntimer), width/2, height/2-2);
  }
if (globalframecount == 376)
{
  countdowntimer = 3;
}

if (globalframecount == 401)
{
  countdowntimer = 2;
}

if (globalframecount == 420)
{
  countdowntimer = 1;
}

  if (globalframecount == 438) {
  background(255);
}

    if (globalframecount == 439){
  saveFrame(capnum+".jpeg");
  cj = loadImage(capnum+".jpeg");
  capnum++;
    }

  if ((globalframecount > 440) & (globalframecount < 497))
 {
// textFont(fontA, 100);
 fill(0);
 text (str(countdowntimer), width/2+2, height/2);

 text (str(countdowntimer), width/2, height/2+2);

 text (str(countdowntimer), width/2-2, height/2);

 text (str(countdowntimer), width/2, height/2-2);

 fill(255);
 text (str(countdowntimer), width/2, height/2-2);
  }
if (globalframecount == 440)
{
  countdowntimer = 3;
}

if (globalframecount == 460)
{
  countdowntimer = 2;
}

if (globalframecount == 480)
{
  countdowntimer = 1;
}

   if (globalframecount == 497) {
  background(255);
}    

     if (globalframecount == 498){
  saveFrame(capnum+".jpeg");
  dj = loadImage(capnum+".jpeg");
  capnum++;
     }

  if (globalframecount == 499) {
 fill(255);
 background(0);
 rect(width/11, height/10, (width-240), (height-100));
 image(aj, width/8, height/8, width/3, height/3);
 image(bj, 4*(width/8), height/8, width/3, height/3);
 image(cj, width/8, 4*(height/8), width/3, height/3);
 image(dj, 4*(width/8), 4*(height/8), width/3, height/3);
 fill(0);
 text ("Press button to take some more!", x, y);
 saveFrame("multipage"+capnum+".jpeg");
 globalframecount = -1;
     }

 //delay(50);
 globalframecount++;}

}