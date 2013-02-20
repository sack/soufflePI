

import gifAnimation.*;
// Number of columns and rows in our system



PImage[] animation;
Gif loopingGif1,loopingGif2,loopingGif3;
Gif nonLoopingGif;
boolean pause = false;

int flagFrame1 = 0;
int flagFrame2 = 0;
int flagFrame3 = 0;
int i=0;
int curFileIndex=0;

String[] files;
void setup() {


  java.io.File folder = new java.io.File(dataPath(""));
  files = folder.list();

  println(files);

  size( 1280, 800);
  //  loopingGif = new Gif(this, files[int(random(files.length))]);
  nextImage();
  i++;
   loopingGif1 = new Gif(this,"respire-plante.gif" );
  loopingGif2 = new Gif(this,"respire-animal.gif" );
  loopingGif3 = new Gif(this,"vie.gif" );
  
  loopingGif1.loop();
  loopingGif2.loop();
  loopingGif3.loop();
  
  loopingGif1.play();
loopingGif2.play();
loopingGif3.play();

  background(0);
}

void draw() {

  background(0);
  fill (0); 

  //stroke(188, 178, 146); 



  //println(loopingGif.currentFrame());
  //loopingGif.resize(width, height);
  if (curFileIndex == 0)
    image(loopingGif1, 0, 0, width, height);
  if (curFileIndex == 1)
    image(loopingGif2, 0, 0, width, height);
  if (curFileIndex == 2)
    image(loopingGif3, 0, 0, width, height);

}

public void keyPressed() {
  if (key == ' ') {
    nextImage();
  }

}




void nextImage() {
  curFileIndex++;  
 if (curFileIndex>2){
    curFileIndex=0;
 }

  i++;
  println(i);
  //println (Runtime.getRuntime().freeMemory());
}

