int imageW = 1620;
int imageH = 1080; 

float logoSize= 0.1;

float logoX = 100;
float logoY = 100;

int FileCount =1;
int blendmode =2;
int exposures =2;
boolean savePhotos =true;

//PImage club_Zero_White;
void setup() {
//size(600,600); 
fullScreen();
// club_Zero_White=loadImage("club_zero_white.png");


  
  
}

void draw() {
  
  scale(1.2);
  translate(0, -50);

  if (keyPressed) {
    if (key =='1') {
      exposures=1;
    }
    if (key =='2') {
      exposures=2;
    }
    if (key =='3') {
      exposures=3;
    }
    if (key =='4') {
      exposures=4;
    }
    if (key =='5') {
      exposures=5;
    }
    if (key =='m') {
      blendmode=2;
    }
    if (key =='n') {
      blendmode=1;
    }
    if (key=='s') {
      if (savePhotos) {
        savePhotos=false;
      } else {
        savePhotos=true;
      }
    }
  }


  File theDir = new File("/Users/Hillary/Desktop/Photobooth_project_2/Test_Tether_2/data/");
  String[] theList = theDir.list();
  int newFileCount = theList.length;

  if (newFileCount>FileCount||keyPressed) {
    PImage[] currentImage=new PImage[5];
    currentImage[4]=loadImage(theList[theList.length-5]);
    currentImage[3]=loadImage(theList[theList.length-4]);
    currentImage[2]=loadImage(theList[theList.length-3]);
    currentImage[1]=loadImage(theList[theList.length-2]);
    currentImage[0]=loadImage(theList[theList.length-1]);
   
    background(255);
   
    

    if (blendmode==1) {
      blendMode(BLEND);
      if (exposures==5) {
        tint(255, 255);
        image(currentImage[4], 0, 0, imageW, imageH);
        tint(255, 127);
        image(currentImage[3], 0, 0, imageW, imageH);
        tint(255, 127);
        image(currentImage[2], 0, 0, imageW, imageH);
        tint(255, 127);
        image(currentImage[1], 0, 0, imageW, imageH);
        tint(255, 127);
        image(currentImage[0], 0, 0, imageW, imageH);
      }
      if (exposures==4) {
        tint(255, 255);
        image(currentImage[3], 0, 0, imageW, imageH);
        tint(255, 127);
        image(currentImage[2], 0, 0, imageW, imageH);
        tint(255, 127);
        image(currentImage[1], 0, 0, imageW, imageH);
        tint(255, 127);
        image(currentImage[0], 0, 0, imageW, imageH);
      }
      if (exposures==3) {
        tint(255, 255);
        image(currentImage[2], 0, 0, imageW, imageH);
        tint(255, 127);
        image(currentImage[1], 0, 0, imageW, imageH);
        tint(255, 127);
        image(currentImage[0], 0, 0, imageW, imageH);
      }
      if (exposures==2) {
        tint(255, 255);
        image(currentImage[1], 0, 0, imageW, imageH);
        tint(255, 127);
        image(currentImage[0], 0, 0, imageW, imageH);
      }
      if (exposures==1) {
        tint(255, 255);
        image(currentImage[0], 0, 0, imageW, imageH);
        tint(255);
  
      }
    }


    if (blendmode==2) {
      blendMode(DARKEST);
      tint(255, 255);
      image(currentImage[0], 0, 0, imageW, imageH);
      if (exposures>1) {
        tint(255, 127);
        image(currentImage[1], 0, 0, imageW, imageH);
      }
      if (exposures>2) {
        tint(255, 127);
        image(currentImage[2], 0, 0, imageW, imageH);
      }
      if (exposures>3) {
        tint(255, 127);
        image(currentImage[3], 0, 0, imageW, imageH);
      }
      if (exposures>4) {
        tint(255, 127);
        image(currentImage[4], 0, 0, imageW, imageH);
      }
     
    }
     blendMode(NORMAL);
      tint(255);
   // image(club_Zero_White,logoX,logoY,club_Zero_White.width*logoSize,club_Zero_White.height*logoSize);

    FileCount=newFileCount;
    printArray(theList);
    if (savePhotos) {
      if(second()<10){
        if(minute()<10){
      saveFrame("ScreenCaps/screencap"+hour()+"0"+minute()+"0"+second()+".png");
      }else{
      saveFrame("ScreenCaps/screencap"+hour()+minute()+"0"+second()+".png");
      }
      
    }else if(minute()<10){
      saveFrame("ScreenCaps/screencap"+hour()+"0"+minute()+second()+".png");  
    }else{
      saveFrame("ScreenCaps/screencap"+hour()+minute()+second()+".png");  
    }
    
    }
  }
}

  
  
  
  

    
    

  