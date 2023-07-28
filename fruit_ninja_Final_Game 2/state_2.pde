//---------------------------------------#
// function that redraws all objects     #
//---------------------------------------#
void text(){
  fill(255);
  textSize(85);
  text(score, width/2, 80);
}


void redrawScreen() {
  image(background,0,0);
  fill(255, 0, 0);
  rect(boxX, boxY, boxWidth, boxHeight);
  boxX = boxX + boxVx;
  boxVy = boxVy + GRAVITY;
  boxY = boxY + boxVy;

  if (boxY<-10 || boxY>600) {
    delay(300);
    lives=lives-1;
    boxX = int(random(-100,900));
    boxVx= int(random (1, 5));
    if (boxX>width/2) {
      boxVx*=-1;
    }
    boxY = GROUND - boxHeight;
    boxVy = int(random(-16, -10));
  }
}

void score(){
  if (state==2 && mouseX > boxX-5 && mouseX < boxX+5 + boxWidth && mouseY > boxY-5 && mouseY < boxY+5 + boxHeight) {
    boxX = int(random(-100, 900));
    boxVx = int(random(1, 5));
    score+=10;
    startTime += 1000;
    if (boxX > width / 2) {
        boxVx *= -1;
    }
    boxY = GROUND - boxHeight;
    boxVy = int(random(-16, -10));
  }
}

void timer(){
    long elapsedTime = millis() - startTime;
  if (elapsedTime > 15000) {
    // when the timer ends
    state=3;
  } 
  else {
    timer = int((15000 - elapsedTime) / 1000);
  }
    if (timer <= 5){
    fill(255,0,0);
  }
  else{
   fill(0,255,0);
  }
  textSize(60);
  text(timer, 740, 65);
}

void mouseTrail(){

  for(int i = 0; i<x.length-1; i++) {
    // and shift all the values down one item
    x[i] = x[i+1];
    y[i] = y[i+1]; 
    
    fill(255);
    noStroke();
    // draws the circle at mouse position
    ellipse(x[i], y[i], i/10+3, i/10+3); 
    
  }
  
  // set the last int in the array to match the mouse position
  x[x.length-1] = mouseX; 
  y[y.length-1] = mouseY;
}

void lives(){
  if (lives==3) {
    image(hearts3, 25, 20);
  }
  if (lives==2) {
    image(hearts2, 25, 20);
  }
  if (lives==1) {
    image(heart1, 25, 20);
  }
  if (lives==0) {
    state = 3;
  }
}
