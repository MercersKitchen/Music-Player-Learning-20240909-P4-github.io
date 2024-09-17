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
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO
//
void setup()
{
  size(900, 800);
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
  String directory = "../../" + musicPathway;
  println ( currentSong, directory );
  String file = directory + groove + mp3FileName;
  //
  //song[currentSong] = minim.loadFile( "../../Music/groove.mp3" );
  //
  //song[currentSong+=1] = minim.loadFile( "../../Music/Start_Your_Engines.mp3" );
  //song[1].play();
  //song[currentSong+=1] = minim.loadFile( "../../Music/Beat_Your_Competition.mp3);
  //song[currentSong+=1] = minim.loadFile( "../../Music/Cycles.mp3 );
  //song[currentSong+=1] = minim.loadFile( "../../Music/Eureka.mp3 );
  //song[currentSong+=1] = minim.loadFile( "../../Music/ghostWalk.mp3 );
  //song[currentSong+=1] = minim.loadFile( "../../Music/Newsroom.mp3 );
  //song[currentSong+=1] = minim.loadFile( "../../Music/The_Simplest.mp3 );

  
  //Add currentSong as hardcoded link
  //Use play(timeStart) & loop(numberOfLoops)
  //Inspect with println
  //Purpose is 2D Shapes
  //Introduce keyPressed as keyboard shortcuts
  //Introduce mousePressed as interaction
  //
  //Future Problem Fixed
  //beatYourCompetition.play();
  //
  //DIVs
  //rect() based on variables; variables change with program (introduces parameters of a function and TABS)
  
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
// End Main Program
