//Global varianles
PImage pic, pic2;
float imageX, imageY, imagewidth, imageheight, picWidthAdjusted, picHeightAdjusted;
float imageX2, imageY2, imagewidth2, imageheight2, picWidthAdjusted2, picHeightAdjusted2;
float imageLargerDimension, imageSmallerDimension;
float imageLargerDimension2, imageSmallerDimension2;
float imageWidthRatio, imageHeightRatio;
float imageWidthRatio2, imageHeightRatio2;
Boolean widthLarger = false, heightLarger = false;
Boolean widthLarger2 = false, heightLarger2 = false;
//
//
void setup () {
size(750, 500);//Landscape
//
populatingVariables();
//

//
//Combunatuin of population of image with population of rect()
//adjusted image variabels for aspect ratio, entire image will be smaller
imageDraw();
//

}//end setup
//
void draw () {//repeats 60/seconds, static images shold be in setup, "system reasources"
//empty draw loop, must be present for JAVA compiler
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
