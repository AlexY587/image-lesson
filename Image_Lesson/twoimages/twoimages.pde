//Global varianles
float imageX, imageY, imagewidth, imageheight, picWidthAdjusted, picHeightAdjusted;
float imageX2, imageY2, imagewidth2, imageheight2, picWidthAdjusted2, picHeightAdjusted2;
float imageLargerDimension, imageSmallerDimension;
float imageLargerDimension2, imageSmallerDimension2;
float imageWidthRatio, imageHeightRatio;
float imageWidthRatio2, imageHeightRatio2;
PImage pic, pic2;
Boolean widthLarger = false, heightLarger = false;
Boolean widthLarger2 = false, heightLarger2 = false;
//
//
void setup () {
size(750, 500);//Landscape
//
//population of image
pic = loadImage("monkey2.jpg");//Dimensions : width 511.333px, height 767
pic2 = loadImage("moneky.jpg");//dimensions : width 525, height 393
int picWidth = 511;
int picHeight = 767;
int picWidth2 = 525;
int picHeight2 = 393;
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
 if (picWidth2 >= picHeight2) {
  imageLargerDimension2 = picWidth2;
  imageSmallerDimension2 = picHeight2;
  widthLarger2 = true;
} else {
  //false if portrait
  imageLargerDimension2 = picHeight2;
  imageSmallerDimension2 = picWidth2;
  heightLarger2 = true;
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
//2
if (widthLarger2 == true) imageWidthRatio2 = imageLargerDimension2 / imageLargerDimension2;
if (widthLarger2 == true) imageHeightRatio2 = imageSmallerDimension2 / imageLargerDimension2;
if (heightLarger2 == true) imageWidthRatio2 = imageSmallerDimension2 / imageLargerDimension2;
if (heightLarger2 == true) imageHeightRatio2 = imageLargerDimension2 / imageLargerDimension2;
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
imageheight = (height-1) * 1/2;
imageX2 = width*0;
imageY2 = height*1/2;
imagewidth2 = width-1;//Canvas (0,0) means point doesnt match to rectangle missing outline on two sides
imageheight2 = (height-1)*1/2;
//
//Combunatuin of population of image with population of rect()
//adjusted image variabels for aspect ratio, entire image will be smaller
picWidthAdjusted = imagewidth * imageWidthRatio;
picHeightAdjusted = imageheight * imageHeightRatio;
println(imageX, imageY, picWidthAdjusted, picHeightAdjusted);
picWidthAdjusted2 = imagewidth2 * imageWidthRatio2;
picHeightAdjusted2 = imageheight2 * imageHeightRatio2;
println(imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2);
//

}//end setup
//
void draw () {
rect(imageX, imageY, imagewidth, imageheight);
rect(imageX2, imageY2, imagewidth2, imageheight2);
image(pic,imageX, imageY, picHeightAdjusted, picWidthAdjusted);
image(pic2,imageX2, imageY2, picHeightAdjusted2, picWidthAdjusted2);
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
