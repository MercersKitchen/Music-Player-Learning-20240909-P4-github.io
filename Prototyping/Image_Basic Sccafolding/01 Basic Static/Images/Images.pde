int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
//
size( 500, 100 ); //Landscape
appWidth = width;
appHeight = height;
//
//Population
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
picBackground = loadImage("../../../imagesUsed/Landscape & Square Images/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
//
//DIVs
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
//Draw Image One Time, for testing
image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
