void button(int x, int y, int w, int h, String lable) {
  if (mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2) {
    strokeWeight(5);
    stroke(0, 0, 255);
  } else {
    stroke(0);
    strokeWeight(1);
  }


  fill(255);
  rect(x, y, w, h);
  fill(0);
  textSize(50); //50
  text(lable, x, y);
}

void Button(int x, int y, int w, int h, int sw, String lable) {
  if (mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2) {
    strokeWeight(5);
    stroke(0, 0, 255);
  } else {
    stroke(0);
    strokeWeight(sw);
  }


  fill(255);
  rect(x, y, w, h);
  fill(0);
  textSize(50); //50
  text(lable, x, y);
}



boolean buttonPressed(int x, int y, int w, int h) {
  return mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2;
}
