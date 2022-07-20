void populatingVariables() {
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
 //
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
imageX2 = (width-1)*1/3;
imageY2 = (height+1)*1/1000;
imagewidth2 = (width-1)*1/2;//Canvas (0,0) means point doesnt match to rectangle missing outline on two sides
imageheight2 = (height-1)*1.5;
}
