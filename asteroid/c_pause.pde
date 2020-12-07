void pause() {
  //background(0);

  button(700, 50, 200, 100, "START");
}

void pauseClicks() {

  if (buttonPressed(700, 50, 200, 100)) {
    mode = GAME;
  }
}
