//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float bikeX, bikeY, bikeWidth, bikeHeight;
PImage picBackground, picBike;
int picBikeWidth, picBikeHeight;
float picBikeWidthChanged, picBikeHeightChanged, biggerSide, smallerSide, ratio;
//
void setup() {
  size( 500, 700 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../../Images/Square/SoccerBall.jpg");
  bikeX = appWidth * 1/4;
  bikeY = appHeight * 1/4;
  bikeWidth = appWidth * 1/2;
  bikeHeight = appHeight * 1/2;
  picBike = loadImage("../../../../Images/Landscape/bike.jpg");
  picBikeWidthChanged = picBikeWidth = 860;
  picBikeHeightChanged = picBikeHeight = 529;
  //
  //Image Compression
  biggerSide = ( picBikeWidth > picBikeHeight ) ? picBikeWidth : picBikeHeight ;
  smallerSide = ( picBikeHeight < picBikeWidth ) ? picBikeHeight : picBikeWidth ;
  ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  println( "Big Side:", biggerSide, "\tSmall Side:", smallerSide, "\tRatio:", ratio );
  //Establish Landscape or Portrait
  if ( bikeWidth > bikeHeight ) { //DIV Landscape, find larger side
    picBikeHeightChanged = bikeHeight;
    picBikeWidthChanged = ( picBikeWidth > picBikeHeight ) ? picBikeWidthChanged / ratio : picBikeWidthChanged * ratio;
    println( "Inside If-true:", picBikeWidthChanged );
  } else { //DIV Portrait
    picBikeWidthChanged = bikeWidth;
    //Calculate a bigger side or a smaller side
    picBikeHeightChanged = ( picBikeWidth > picBikeHeight ) ? picBikeWidthChanged / ratio : picBikeWidthChanged * ratio;
    println( "Inside If-false:", picBikeHeightChanged );
  }
  println( "Changed Width:", picBikeWidthChanged, "\tChanged Height:", picBikeHeightChanged );
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( bikeX, bikeY, bikeWidth, bikeHeight );
}
//
void draw() {
  //Draw Image One Time, for testing
  //image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picBike, bikeX, bikeY, picBikeWidthChanged, picBikeHeightChanged );
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//End MAIN
