

import gifAnimation.*;
// Number of columns and rows in our system



PImage[] animation;
Gif loopingGif1,loopingGif2,loopingGif3,loopingGif4;
Gif nonLoopingGif;
boolean pause = false;

int flagFrame1 = 0;
int flagFrame2 = 0;
int flagFrame3 = 0;
int played1 = 0;
int played2 = 0;
int played3 = 0;
int i=0;
int curFileIndex=0;
int played=0;
String[] files;

int gif1TotalFrame = 45;
int gif2TotalFrame = 39;
int gif3TotalFrame = 23;


void setup() {


  java.io.File folder = new java.io.File(dataPath(""));
  files = folder.list();

  println(files);

  size( 1280, 800);
  //  loopingGif = new Gif(this, files[int(random(files.length))]);
 // nextImage();
  i++;
   loopingGif1 = new Gif(this,"respire-plante.gif" );
  loopingGif2 = new Gif(this,"respire-animal.gif" );
  loopingGif3 = new Gif(this,"vie.gif" );
  loopingGif4 = new Gif(this,"deconstruction.gif" );
  //loopingGif1.loop();
  //loopingGif2.loop();
  //loopingGif3.loop();
  
loopingGif1.play();
loopingGif2.play();
loopingGif3.play();
loopingGif4.play();

  background(0);
}

void draw() {

  background(0);
  fill (0); 

  //stroke(188, 178, 146); 
//boucle image 
  if (flagFrame1 == gif1TotalFrame) {
  
    if (played1<3){
      played1++;
       flagFrame1=0;
       loopingGif1.stop();
      loopingGif1.play();
       
       //flagFrame1 = loopingGif1.currentFrame();
      println("Boucle : "+played);     
    }
  }
  else {
        
    flagFrame1 = loopingGif1.currentFrame();
   // println("image : "+flagFrame1);  
  }
  
  if (flagFrame2 == gif2TotalFrame) {
  
    if (played2<3){
      played2++;
       flagFrame2=0;
       loopingGif2.stop();
      loopingGif2.play();
       
       //flagFrame1 = loopingGif1.currentFrame();
      println("Boucle : "+played);     
    }
  }
  else {
        
    flagFrame2 = loopingGif2.currentFrame();
   // println("image : "+flagFrame1);  
  }

 if (flagFrame3 == gif3TotalFrame) {
  
    if (played3<3){
      played3++;
       flagFrame3=0;
       loopingGif3.stop();
      loopingGif3.play();
       
       //flagFrame1 = loopingGif1.currentFrame();
      println("Boucle : "+played);     
    }
  }
  else {
        
    flagFrame3 = loopingGif3.currentFrame();
   // println("image : "+flagFrame1);  
  }
  //println(loopingGif.currentFrame());
  //loopingGif.resize(width, height);
  if (curFileIndex == 0)
    image(loopingGif1, 0, 0, width, height);
  if (curFileIndex == 1)
    image(loopingGif2, 0, 0, width, height);
  if (curFileIndex == 2)
    image(loopingGif3, 0, 0, width, height);
  if (curFileIndex == 3)
    image(loopingGif4, 0, 0, width, height);

}

public void keyPressed() {
  if (key == ' ') {
    played1=0;
     played2=0;
      played3=0;
     flagFrame1=0;
     flagFrame2=0;
     flagFrame3=0;
  
  loopingGif1.stop();
loopingGif2.stop();
loopingGif3.stop();
loopingGif4.stop();
  loopingGif1.jump(0);
loopingGif2.jump(0);
loopingGif3.jump(0);
loopingGif4.jump(0);
 loopingGif1.play();
loopingGif2.play();
loopingGif3.play();
loopingGif4.play();
  nextImage();
  }

}




void nextImage() {
  curFileIndex++;  
 if (curFileIndex>3){
    curFileIndex=0;
 }

  i++;
  println(i);
  //println (Runtime.getRuntime().freeMemory());
}

