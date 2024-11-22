/* Static Text: writing DIVs, variable required for buttons
 - Testing for Aspect Ratio
 - introduce single and mutliple executed code
 - activity: do another rectangle with text in it
 - copy and paste to dynamic program
 */
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
//
//Display
size( 500, 700 ); //Portrait CANVAS
appWidth = width;
appHeight = height;
//
/* Population
- using 10's
- Could be 100s or percent
- Able to use decimals to dial in the values
*/
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
superCoolPhraseX = titleX; //Best Practice: change on formula
superCoolPhraseY = appHeight*4.5/10; //Ratio done last. How is this Centered Vertically?
superCoolPhraseWidth = titleWidth; //Best Practice
superCoolPhraseHeight = titleHeight; //Best Practice
footerX = titleX; //Best Practice
footerY = appHeight*8/10;
footerWidth = titleWidth; //Best Practice
footerHeight = titleHeight; //Best Practice
//DIVs
rect( titleX, titleY, titleWidth, titleHeight ); //Title Font
rect( superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight ); // Testing Aspect Ratio of Fonts
rect( footerX, footerY, footerWidth, footerHeight ); //Different Font
