void TextDisplay(String text, float textX, float textY, float offsetX,float offsetY){
        pushMatrix();
        textSize(fontsize);
    translate(textX+offsetX,textY+offsetY);
    rotate(-1*HALF_PI);
    text(text, 0, 0);
    
    
popMatrix(); 
}

void ImagePlacement(String[] InTheList,int imageNumber,float x,float y,float imageSize){
     String jsonPath = InTheList[InTheList.length-1-imageNumber];
    println(jsonPath);
    if (jsonPath.contains("png") || jsonPath.contains("json")) {
      json = loadJSONObject(jsonPath);
      println("Json is : " + json);
      //data = json.getJSONObject("data");
      data = json;
      url = data.getString("url");

      println("URL is: " + url);

      newUrl[imageNumber]=url;

      imagePath = "../Test_Tether_2/ScreenCaps/" + jsonPath.substring(0, jsonPath.length() - 5);
      currentImage[imageNumber] = loadImage(imagePath);
      if(currentImage[imageNumber]==null){
      }else{
      
      
      float imageWidth=currentImage[imageNumber].width*imageSize;
      float imageHeight=currentImage[imageNumber].height *imageSize;
     
     lastImageX=x;
     lastImageY=y-imageHeight;
     
      lastImageHeight=imageHeight;

      lastImageWidth=imageWidth;

      image(currentImage[imageNumber], x, y-imageHeight,imageWidth,imageHeight);
      
      fill(255,145);
      noStroke();
      rect(x+imageWidth-imageWidth*.11,y-imageHeight,imageWidth*.11,imageHeight);
      
      
      fill(0,255);
     TextDisplay(newUrl[imageNumber],x-fontsize*.7,y-imageHeight,imageWidth,imageHeight/2);
      }
   
    }
}