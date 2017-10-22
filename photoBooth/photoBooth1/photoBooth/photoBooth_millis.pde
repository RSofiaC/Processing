import processing.video.*;
int number = 0;
float lasttime;
float timeinterval;

Capture cam;

void setup() {
  size(960, 540);
  
  lasttime = millis();//store the current time
  timeinterval = 3000; //3 sec

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
    cam = new Capture(this, cameras[4]);
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 0, 0,640*1.5,360*1.5);
  
  if (mousePressed== true){
 saveFrame("####.jpeg");
 fill(255);
 text ("picture taken!", 300 , 400);
 delay(500);

}
}

//void capture(){
//  if(key == ' '){
//    lasttimecheck = millis();

//  };
  
//};


//To take the picture when spacebar clicked directly
//void keyPressed(){
//  if(key == ' '){
//    println("Saving "+ nf(number,4));
//    String s = "output/" + nf(number,4) +".jpg";
//    save(s);
//    println( nf(number,4) + " saved.");
//    number++;
//  }