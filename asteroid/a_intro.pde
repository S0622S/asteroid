void intro() {
  background(0, 255, 0);

  //tactile


  //drawing the button
  Button(200, 600, 200, 100, 10, "START");
  Button(600, 600, 200, 100, 10, "QUIT");
}

void introClicks() {
  if (buttonPressed(200, 600, 200, 100)) {
    mode = GAME;
  }
  if (buttonPressed(600, 600, 200, 100)) {
    exit();
  }
}
