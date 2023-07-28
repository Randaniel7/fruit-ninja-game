void startScreen(){
  clear();
  image(background,0,0);
  textSize(125);
  fill(230,230,230);
  text("Fruit Ninja",width/2,200);
  textSize(129);
  fill(20,20,20);
  text("Fruit Ninja",width/2,200);
  textFont(font, 65);
  
  textSize(75);
  text("START", width/2, 320);
  if (mouseX>300 && mouseX<500 && mouseY>260 && mouseY<325) {
    fill(255, 255, 255);
    text("START", width/2, 320);
    if (mousePressed==true && mouseButton==LEFT) {
      state=2;
      clear();
    }
  } else {
    fill(0, 0, 0);
    text("START", width/2, 320);
  }
  textSize(50);
  if (mouseX>250 && mouseX<550 && mouseY>325 && mouseY<375) {
    fill(255, 255, 255);
    text("INSTRUCTIONS", width/2, 375);
  if (mousePressed==true && mouseButton==LEFT) {
      state=4;
    }
  } else {
    fill(0, 0, 0);
    text("INSTRUCTIONS", width/2, 375);
  }
}
