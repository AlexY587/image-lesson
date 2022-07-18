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
float imageLargerDimension, imageSmallerDimension;
PImage pic;
Boolean widthLarger, heightLarger;
//
//Canvas
size(750, 500);//Landscape
//
//Population
pic = loadImage("monkey2.jpg");//Dimensions : width 511.333px, height 767
int picWidth = 511;
int picHeight = 767;
if (picWidth >= picHeight) {
  imageLargerDimension = picWidth;
  imageSmallerDimension = picHeight;
  widthLarger = true;
} else {
  //false if portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;
  heightLarger = true;
}//end image dimension comparison
println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger);// verify variable details
//
//Aspect Ratio
//single line ifs can be sumarazed into if else or if-else-if-else
//computer choooses which formula to execute
if (widthLarger == true) imageWidthRatio = imageLargerDimension / imageLargerDimension;
if (widthLarger == true) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
if (heightLarger == true) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
if (heightLarger == true) imageHeightRatio = imageLargerDimension / imageLargerDimension;
//
//answers must be 1.0 and between 0 and 1 decomal
//Ratio of 1.0 similar to style="width:100%" (websites)
//println also verifies decimal places
//ratio of 0-1 similar to style="height:ratio" (websites)
imageX = width*0;
imageY = height*0;
imagewidth = width-0;//Canvas (0,0) means point doesnt match to rectangle missing outline on two sides
imageheight = height-0;
//
rect(imageX, imageY, imagewidth, imageheight);//Background image
image(pic,imageX, imageY, imagewidth, imageheight);
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
