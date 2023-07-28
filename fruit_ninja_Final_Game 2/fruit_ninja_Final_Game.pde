//########################################
// Programmer: Ran Daniel
// Date: 01/00/2023
// File Name: Fruit_Ninja_Game.pde
// Description:
//#########################################
int GROUND = 600;
float GRAVITY = 0.2;

//box variables
int boxWidth = 50;     
int boxHeight = 50;
float boxX; 
float boxY = GROUND - boxHeight;
float boxVx;  // horizontal speed
float boxVy;  // vertical speed

float state = 1;
int score = 0;

//media variables
PImage background;
PFont font;
PImage hearts3;
PImage hearts2;
PImage heart1;

float[] x = new float[50]; 
float[] y = new float[50]; 

int startTime;
int timer;
int lives = 3;

//---------------------------------------#
// main program starts here              #
//---------------------------------------#    
void setup() {
  size(800, 600);
  frameRate(120);
  smooth();
  textAlign(CENTER);
  background=loadImage("background.jpeg");
  background.resize(800,600);
  font = createFont("NinjaStrike.ttf",20);
  textFont(font,100);
  hearts3=loadImage("3hearts.png");
  hearts2=loadImage("2hearts.png");
  heart1=loadImage("1heart.png");
  hearts3.resize(200, 75);
  hearts2.resize(200, 75);
  heart1.resize(200, 75);
  image(background,0,0);
  boxX = int(random(0,width));
  if (boxX>width/2){
    boxVx*=-1;
  }
    // reset all the numbers in both arrays
  for(int i = 0; i<x.length; i++) {
    x[i] = 0;
    y[i] = 0; 
  }
  startTime = millis();
}

//---------------------------------------# 

void draw() {
  if(state==1){
    startScreen();
 
  }
  if(state==2){
  redrawScreen();
  score();
  mouseTrail();
  text();
  timer();
  lives();
  }
  if(state==3){
    gameOver();
  }
  if(state==4){
    instructions();
  }
}
