//Global varianles
float imageX, imageY, imagewidth, imageheight, picWidthAdjusted, picHeightAdjusted;
float imageX2, imageY2, imagewidth2, imageheight2, picWidthAdjusted2, picHeightAdjusted2;
float imageLargerDimension, imageSmallerDimension;
float imageWidthRatio, imageHeightRatio;
PImage pic, pic2;
Boolean widthLarger = false, heightLarger = false;
//
//
void setup () {
size(750, 500);//Landscape
//
//population of image
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
  //Aspect Ratio
//single line ifs can be sumarazed into if else or if-else-if-else
//computer choooses which formula to execute
imageWidthRatio = 1;
imageHeightRatio = 1;
if (widthLarger == true) imageWidthRatio = imageLargerDimension / imageLargerDimension;
if (widthLarger == true) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
if (heightLarger == true) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
if (heightLarger == true) imageHeightRatio = imageLargerDimension / imageLargerDimension;
//
//answers must be 1.0 and between 0 and 1 decomal
//Ratio of 1.0 similar to style="width:100%" (websites)
//println also verifies decimal places
//ratio of 0-1 similar to style="height:ratio" (websites)
//
//Population
imageX = width*0;
imageY = height*0;
imagewidth = width-1;//Canvas (0,0) means point doesnt match to rectangle missing outline on two sides
imageheight = height-1;
//
//Combunatuin of population of image with population of rect()
//adjusted image variabels for aspect ratio, entire image will be smaller
picWidthAdjusted = imagewidth * imageWidthRatio;
picHeightAdjusted = imageheight * imageHeightRatio;
println(imageX, imageY, picWidthAdjusted, picHeightAdjusted);
rect(imageX, imageY, imagewidth, imageheight);//Background image
//

}//end setup
//
void draw () {
image(pic,imageX, imageY, picHeightAdjusted, picWidthAdjusted);
//rect(imageX, imageY, imagewidth, imageheight);
//rect(imageX2, imageY2, imagewidth2, imageheight2);
}//end draw
//
//void keyPressed() {} //end keypressed
//
//void mousePressed() {}//end mousepressed
//
//END main program
//
//
//
