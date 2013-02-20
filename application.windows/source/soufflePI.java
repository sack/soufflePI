import processing.core.*; 
import processing.xml.*; 

import gifAnimation.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class soufflePI extends PApplet {




// Number of columns and rows in our system



PImage[] animation;
Gif loopingGif;
Gif nonLoopingGif;
boolean pause = false;

int flagFrame = 0;
int i=0;
int curFileIndex=0;

String[] files;

public void setup() {


  java.io.File folder = new java.io.File(dataPath(""));
  files = folder.list();

  println(files);

  size( 1280, 800);
  //  loopingGif = new Gif(this, files[int(random(files.length))]);
  nextImage();
  i++;
  loopingGif.play();



  background(0);
}

public void draw() {

  background(0);
  fill (0); 

  //stroke(188, 178, 146); 
  if (flagFrame > loopingGif.currentFrame()) {
    flagFrame=0;
    //nextImage();
  }
  else {
    flagFrame = loopingGif.currentFrame();
  }

  //println(loopingGif.currentFrame());
  //loopingGif.resize(width, height);
  image(loopingGif, 0, 0, width, height);


}

public void keyPressed() {
  if (key == ' ') {
    nextImage();
  }

}




public void nextImage() {
  //    if (curFileIndex == files.length){
  //     curFileIndex=0;
  //    }
  //    println(files[curFileIndex]);
  //    loopingGif = new Gif(this, files[curFileIndex]);
  //     curFileIndex++;

  String fileName = files[PApplet.parseInt(random(files.length))];
  println(fileName);
  //loopingGif.stop();
  if (loopingGif != null) loopingGif.dispose();
  loopingGif = new Gif(this, fileName);
  ;
  //loopingGif = new Gif(this, fileName);
  loopingGif.loop();

  i++;
  println(i);
  //println (Runtime.getRuntime().freeMemory());
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--hide-stop", "soufflePI" });
  }
}
