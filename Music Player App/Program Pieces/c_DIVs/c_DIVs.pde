//Library - Minim
//
//Global Variables
float nameX, nameY, nameWidth, nameHeight;
//
void setup()
{
  //Population
  nameX = appWidth * percentNumber ; //Percent Numbers from Case Study
  nameY = appHeight * percentNumber ;
  nameWidth = appWidth * percentNumber ;
  nameHeight = appHeight * percentNumber ;
  //DIVs: required, name each variable
  rect( nameX, nameY, nameWidth, nameHeight ); //refer to your Case Study for # of DIVs
  //
} //End setup
//
void draw()
{
} //End draw
//
void mousePressed()
{
} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Program
