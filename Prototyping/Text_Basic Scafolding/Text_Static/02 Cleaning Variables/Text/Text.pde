/* Static Text: Cleaning Variables, no change in CANVAS
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
footerX = superCoolPhraseX = titleX = appWidth*1/10;
footerWidth = superCoolPhraseWidth = titleWidth = appWidth*8/10;
footerHeight = superCoolPhraseHeight = titleHeight = appHeight*1/10;
titleY = appHeight*1/10;
superCoolPhraseY = appHeight*4.5/10; //Ratio done last. How is this Centered Vertically?
footerY = appHeight*8/10;
//DIVs
rect( titleX, titleY, titleWidth, titleHeight ); //Title Font
rect( superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight ); // Testing Aspect Ratio of Fonts
rect( footerX, footerY, footerWidth, footerHeight ); //Different Font
