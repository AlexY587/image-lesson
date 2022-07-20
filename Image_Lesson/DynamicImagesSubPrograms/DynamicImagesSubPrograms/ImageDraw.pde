void imageDraw() {
  picWidthAdjusted = imagewidth * imageWidthRatio;
picHeightAdjusted = imageheight * imageHeightRatio;
println(imageX, imageY, picWidthAdjusted, picHeightAdjusted);
picWidthAdjusted2 = imagewidth2 * imageWidthRatio2;
picHeightAdjusted2 = imageheight2 * imageHeightRatio2;
println(imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2);
  rect(imageX, imageY, imagewidth, imageheight);
rect(imageX2, imageY2, imagewidth2, imageheight2);
image(pic,imageX, imageY, picHeightAdjusted, picWidthAdjusted);
image(pic2,imageX2, imageY2, picHeightAdjusted2, picWidthAdjusted2);
}//End imageDraw
