

PFont urlFont;


int FileCount =1;
JSONObject json;
JSONObject data;
String url;
String[] newUrl;
String imagePath;
PImage[] currentImage;

float gutter;
float horizonalMargin;
float verticalMargin;
float headerSpace;
float imageSize;

//these variables allow the pictures to be told what the last picture's position was, and place itself relative to that so as to make the grid
float lastImageY;
float lastImageHeight;
float lastImageX;
float lastImageWidth;

//fontsize that can be changed at any point
float fontsize;

String Miller = "Miller"; 
void setup() {
  fullScreen(); 
  //size(600,600);
  
 //change the size of the left-hand gutter. when the screen is on its side, this is the bottom
   gutter=120;

//change the horizontal margins all between pictures
   horizonalMargin=30;
//change the vertical margins all between pictures
   verticalMargin=30;

//change the space at the top of the display where the title goes(this is the space on the left if the screen is on a computer)
   headerSpace=width*0.15;

//size of the images relative to their original size
   imageSize=0.25;

  urlFont = createFont("Graphik-LightItalic.otf",20);
  textFont(urlFont);
  imageMode(CORNER);
  textAlign(CENTER);
  text("!@#$%", width/2, height/2);
  
  
  
 
  
}

void draw() {

  pushMatrix();
  
      translate(width, height);
    rotate(PI);
  
  
  
  
  File theDir = new File("/Users/Hillary/Desktop/Photobooth_project_2/URL_Display/data");
  String[] theList = theDir.list();
  int newFileCount = theList.length;

  if (newFileCount>FileCount) {
    background(0);
    newUrl=new String[9];
    currentImage=new PImage[9];
    
    fontsize=56;
    
    fill(255);
    TextDisplay("The Multibooth",headerSpace/2,height/2,0,0);
    
    
    fontsize=24;
      fill(255);
    TextDisplay("find your image below and copy the URL to access it instantly!",headerSpace*.7,height/2,0,0);
    
    
  
    fontsize=24;
    
    //top row
    ImagePlacement(theList,0,headerSpace,height-gutter,imageSize);
    
    ImagePlacement(theList,1,headerSpace,lastImageY-horizonalMargin,imageSize);
    
    ImagePlacement(theList,2,headerSpace,lastImageY-horizonalMargin,imageSize);
    
    //middle row
    ImagePlacement(theList,3,lastImageX+lastImageWidth+verticalMargin,height-gutter,imageSize);
    ImagePlacement(theList,4,lastImageX,lastImageY-horizonalMargin,imageSize);
    ImagePlacement(theList,5,lastImageX,lastImageY-horizonalMargin,imageSize);
    
    //bottom row
    ImagePlacement(theList,6,lastImageX+lastImageWidth+verticalMargin,height-gutter,imageSize);
    ImagePlacement(theList,7,lastImageX,lastImageY-horizonalMargin,imageSize);
    ImagePlacement(theList,8,lastImageX,lastImageY-horizonalMargin,imageSize);
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    //image one ***********
    //String jsonPath = theList[theList.length-1];
    //println(jsonPath); 
    //if (jsonPath.contains("png") || jsonPath.contains("json")) {
    //  json = loadJSONObject(jsonPath);
    //  println("Json is : " + json);
    //  //data = json.getJSONObject("data");
    //  data = json;
    //  url = data.getString("url");

    //  println("URL is: " + url);


    //  newUrl[0]=url;

    //  imagePath = "../Test_Tether_2/ScreenCaps/" + jsonPath.substring(0, jsonPath.length() - 5);
      
    //  currentImage[0] = loadImage(imagePath);


    //  image(currentImage[0], 250, 470, 870, 500);
    //  fill(0);
    //  text(newUrl[0], 250, 470);
    //}
    //*********

    //image 2*********
    //jsonPath = theList[theList.length-2];
    //println(jsonPath);
    //if (jsonPath.contains("png") || jsonPath.contains("json")) {
    //  json = loadJSONObject(jsonPath);
    //  println("Json is : " + json);
    //  //data = json.getJSONObject("data");
    //  data = json;
    //  url = data.getString("url");

    //  println("URL is: " + url);

    //  newUrl[1]=url;

    //  imagePath = "../Test_Tether_2/ScreenCaps/" + jsonPath.substring(0, jsonPath.length() - 5);
    //  currentImage[1] = loadImage(imagePath);

    //  image(currentImage[1], 250, 140, 400, 240);
    //  fill(255);
//TextDisplay(newUrl[1],250,140);
    //}
    //***********

    //image 3*********
    //jsonPath = theList[theList.length-3];
    //println(jsonPath);
    //if (jsonPath.contains("png") || jsonPath.contains("json")) {
    //  json = loadJSONObject(jsonPath);
    //  println("Json is : " + json);
    //  //data = json.getJSONObject("data");
    //  data = json;
    //  url = data.getString("url");

    //  println("URL is: " + url);

    //  newUrl[2]=url;

    //  imagePath = "../Test_Tether_2/ScreenCaps/" + jsonPath.substring(0, jsonPath.length() - 5);
    //  currentImage[2] = loadImage(imagePath);
    //  image(currentImage[2], 720, 140, 400, 240);
    //  fill(255);
    //  TextDisplay(newUrl[2],720,140);
   
    //}
    //***********
//ImagePlacement(theList,4,100,100,0.4);



    FileCount = newFileCount;
  }
  popMatrix(); 
}