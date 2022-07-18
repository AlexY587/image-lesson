//Global varianles
//
//
//void setup () {}//end setup
//
//void draw () {}//end draw
//
//void keyPressed() {} //end keypressed
//
//void mousePressed() {}//end mousepressed
//
//END main program
//



//STATIC TO COPY
float imageX, imageY, imagewidth, imageheight, picWidthAdjusted, picHeightAdjusted;
PImage pic;
//
//Canvas
size(750, 500);//Landscape
//
//Population
pic = loadImage("Image_Lesson/download (1).jpg");//Dimensions : width 511.333px, height 767
int picWidth = 511;
int picHeight = 767;
if (picWidth >= picHeight) {
  imageLargerDimension = picWidth;
  imageSmallerDimension = picHeight;
} else {}//end image dimension comparison
imageX = width*0;
imageY = height*0;
imagewidth = width-0;//Canvas (0,0) means point doesnt match to rectangle missing outline on two sides
imageheight = height-0;
//
rect(imageX, imageY, imagewidth, imageheight);//Background image
image(pic,imageX, imageY, imagewidth, imageheight);
image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted)
