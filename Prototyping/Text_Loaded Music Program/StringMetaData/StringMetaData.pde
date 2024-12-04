import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 8; //Able to Autodetect based on Pathway
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
//
int appWidth, appHeight;
float metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1;
float metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2;
float metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3;
PFont titleFont, footerFont, phraseFont;
color ink, purple=#2C08FF, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Friendly
int size;
Boolean randomColour=false;
//
void setup()
{
  fullScreen(); //size(900, 800);
  appWidth = displayWidth; //width
  appHeight = displayHeight; //height
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  //
  // Load Music
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  //Alphebetical order, same as OS ordering files
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String eureka = "Eureka";
  String ghostWalk = "Ghost_Walk";
  String groove = "groove";
  String newsroom = "Newsroom";
  String startYourEngines = "Start_Your_Engines";
  String theSimplest = "The_Simplest";
  //
  //Add Reading into Array
  String directory = "../../../" + musicPathway;
  //println ( currentSong, directory );
  String file = directory + groove + mp3FileName;
  playList[currentSong] = minim.loadFile( file );
  //println ( currentSong, file, playList[currentSong] );
  file = directory + startYourEngines + mp3FileName;
  playList[currentSong+=1] = minim.loadFile( file );
  //println ( currentSong, file, playList[currentSong] );
  file = directory + beatYourCompetition + mp3FileName;
  playList[currentSong+=1] = minim.loadFile( file );
  //println ( currentSong, file, playList[currentSong] );
  file = directory + cycles + mp3FileName;
  playList[currentSong+=1] = minim.loadFile( file );
  //println ( currentSong, file, playList[currentSong] );
  file = directory + eureka + mp3FileName;
  playList[currentSong+=1] = minim.loadFile( file );
  //println ( currentSong, file, playList[currentSong] );
  file = directory + ghostWalk + mp3FileName;
  playList[currentSong+=1] = minim.loadFile( file );
  //println ( currentSong, file, playList[currentSong] );
  file = directory + newsroom + mp3FileName;
  playList[currentSong+=1] = minim.loadFile( file );
  //println ( currentSong, file, playList[currentSong] );
  file = directory + theSimplest + mp3FileName;
  playList[currentSong+=1] = minim.loadFile( file );
  //println ( currentSong, file, playList[currentSong] );
  //NOTE: How would this be turned into a FOR Loop, students to finish
  //
  currentSong = 0;
  //
  // NOTE: Lines of code repeating
  playListMetaData[currentSong] = playList[currentSong].getMetaData(); //reads song meta 1, like song 1, mimicing array notation
  currentSong++;
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  currentSong++;
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  currentSong++;
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  currentSong++;
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  currentSong++;
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  currentSong++;
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  currentSong++;
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  /* NOTE: Introduce FOR LOOP
   - Known: how many lines of code
   - WHILE is for unknown loop interations
   
   for (int i=0; i<numberOfSongs; i++) {
   playListMetaData[i] = playList[i].getMetaData();
   }
   */
  //
  currentSong = 0;
  //
  /* For Prototyping Meta Data, print all information to the console first
   //Verifying Meta Data, 18 println's
   //See .mp3 Right-Click / Properties / Details
   println("\n"); //Two spaces: one for ln, one for /n escape
   println(currentSong, playListMetaData[currentSong] );
   println( "File Name: ", playListMetaData[currentSong].fileName() );
   println( "Song Length (in milliseconds): ", playListMetaData[currentSong].length() );
   println( "Song Length (in seconds): ", playListMetaData[currentSong].length()/1000 );
   println( "Song Length (in minutes & seconds): ", (playListMetaData[currentSong].length()/1000)/60, " minute", (playListMetaData[currentSong].length()/1000)-((playListMetaData[currentSong].length()/1000)/60 * 60), " seconds" );
   println( "Song Title: ", playListMetaData[currentSong].title() );
   println( "Author: ", playListMetaData[currentSong].author() ); //Song Writer or Performer
   println( "Composer: ", playListMetaData[currentSong].composer() ); //Song Writer
   println( "Orchestra: ", playListMetaData[currentSong].orchestra() );
   println( "Album: ", playListMetaData[currentSong].album() );
   println( "Disk: ", playListMetaData[currentSong].disc() );
   println( "Publisher: ", playListMetaData[currentSong].publisher() );
   println( "Date Release: ", playListMetaData[currentSong].date() );
   println( "Copyright: ", playListMetaData[currentSong].copyright() );
   println( "Comment: ", playListMetaData[currentSong].comment() );
   println( "Lyrics: ", playListMetaData[currentSong].lyrics() );
   println( "Track: ", playListMetaData[currentSong].track() );
   println( "Genre: ", playListMetaData[currentSong].genre() );
   println( "Encoded: ", playListMetaData[currentSong].encoded() ); //how a computer reads the file
   */
  //playList[currentSong].play(); //Testing Only
  //
  //Text Loading
  //Text: Single Executed Code
  //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  titleFont = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  footerFont = createFont("Arial", 55);
  phraseFont = createFont("Playbill", 55);
  //
  //
  //Population
  metaDataX2 = metaDataX1 = appWidth*1/10;
  metaDataY1 = appHeight*4/10;
  metaDataWidth1 = appWidth*8/10;
  metaDataHeight3 = metaDataHeight2 = metaDataHeight1 = appHeight*1/10;
  metaDataY2 = appHeight*3/10;
  metaDataWidth2 = appWidth*2/10;
  metaDataX3 = appWidth*5/10;
  metaDataY3 = appHeight*5/10;
  metaDataWidth3 = appWidth*4/10;
  //
  //DIV: turn off onces repeated in VOID draw, saves systems resources
  //X, Y, Width, Height
  //rect( metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1 ); //Title
  //rect( metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2 ); //Position
  //rect( metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3 ); //Time Remaining | Total Song Length
  //
} //End setup
//
void draw() {
  /*Optical Illusion creating movement
   - screen goes at front of draw(), repeating setup()
   */
  fill(resetDefaultInk);
  rect( metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1 );
  rect( metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2 );
  rect( metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3 );
  //
  //Drawing Text: applies to all text
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  ink = purple;
  fill(ink);
  size = 47; //Change the number until it fits
  textFont( titleFont, size );
  /*Problem: .mp3 does not have the Meta Data Entered
   - must inspect .mp3 properties / details for information
   - what if Drag&Drop thus no inspection
   - metadata=="", then should put something in for the user
   */
  String titleCheck = ( playListMetaData[currentSong].title()!="" ) ? "Title Exists": "Title Does not Exist" ; //Careful with "not ="
  text( titleCheck, metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1 ); //playListMetaData[currentSong].title()
  fill(ink);
  size = 43; //Change the number until it fits
  textFont( footerFont, size );
  //int timeRemaining = playListMetaData[currentSong].length()/1000; // Needs Updating
  int timeRemaining = playListMetaData[currentSong].length()/1000 - playList[currentSong].position()/1000; // Needs Updating
  String concatTimeRemaining = str ( timeRemaining ) + " | " + str ( playListMetaData[currentSong].length()/1000 ) + " Seconds";
  text( concatTimeRemaining, metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3 ); //Note: str(timeRemaining)
  //NOTE: Students to format Minutes and Seconds
  //
  //Repeating Code, different from Static
  ink = ( randomColour == true ) ? color( random(0, 256), random(256), random(256) ) : purple ; //Ternary Operator
  //
  fill(ink);
  size = 83; //Change the number until it fits
  textFont( phraseFont, size );
  text( str ( playList[currentSong].position()/1000 ), metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2 );
  //
} //End draw
//
void mousePressed() {
  //Boolean for Click
  //if() {} else {}
  //
  /* STOP Button Mouse Press, after Hoverover
   Must have Hoverover to ensure mouse will activate, visual confirmation of algorithm
   */
  if ( mouseX>metaDataX1 && mouseX<metaDataX1+metaDataWidth1 && mouseY>metaDataY1 && mouseY<metaDataY1+metaDataHeight1 ) {
    playList[currentSong].play(); // .loop(0) ... .play() matches keyPressed
  }
  //
} //End mousePressed
//
void keyPressed() {
  // Random Colour of .title()
  if ( randomColour == true ) {
    randomColour = false;
  } else {
    randomColour = true;
  }
  //
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ;
   */
  if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  //if ( key=='P' || key=='p' ) song[currentSong].loop(0); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='M' || key=='m' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
    }
  }
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  //if ( key=='P' || key=='p' ) ; // Previous //Students to finish
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
} //End keyPressed
//
// End Main Program
