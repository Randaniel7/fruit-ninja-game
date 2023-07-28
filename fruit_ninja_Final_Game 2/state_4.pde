void instructions(){
clear();
image(background,0,0);
textSize(100);
fill(230,230,230);
text("How to Play:",width/2,125);
textSize(104);
fill(20,20,20);
text("How to Play:",width/2,125);
textFont(font, 65);

fill(20,20,20);
textSize(30);
//text("...", 200,width/2);


  textSize(75);
  if (mouseX>320 && mouseX<480 && mouseY>475 && mouseY<550) {
    fill(255, 255, 255);
    text("BACK", width/2, 525);
  if (mousePressed==true && mouseButton==LEFT) {
      state=1;
    }
  } else {
    fill(0, 0, 0);
    text("BACK", width/2, 525);
  }
}
