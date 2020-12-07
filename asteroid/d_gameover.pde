void gameover() {
  background(255, 0, 0);
  button(400, 500, 300, 100, "INTRO");
}

void gameoverClicks() {
  if (buttonPressed(400, 500, 300, 100)) {
    mode = INTRO;
    setup();
  }
}
