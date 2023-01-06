// Program by Rupert Russell
// MIT Licence
// 23 June 2018
// This program takes a set number of tiles (1000 x 1000) pixels in size
// and uses them to make a 10 x 10 grid.

PImage combinedImgage;  //  Create  variable to hold the image
int counter = 0;
int offset = 100;
void setup() {
  // make the size of the canvas (1000 + offset) * numOfColumns, (1000+ offset) * numOfRows * 
  size(4500, 4500); // width * height *  of finished 4 x 4 grid 

  background(0);    // black brackground
  noLoop();         // don't repeat the draw section
}

void draw() {
  translate(offset, offset);
  // Combine a 4 x 4 Gird of tiles
  for (int i = 0; i < 4; i = i + 1) {
    for (int j = 0; j < 4; j = j + 1) {

      combinedImgage = loadImage("frame" + counter + ".png");  // load each smaller image in turn
      println("Loading image: frame" + counter + ".png");  // load each smaller image in turn
      image(combinedImgage, j * (1000 + offset), i * (1000 + offset));
      counter ++;
    }
  }
  //  exit();
  println("Saving");
  save("test_010.png");  // save image
  println("Saved");
  exit();
}
