void game() {  
  background(0);

  button(700, 50, 200, 100, "PAUSE");

  timer++;
  println("Timer:" + timer);

  int i = 0;     //i stands for index. start with bullet zero
  while (i < myObjects.size() ) {
    //processing each object individually
    GameObject obj = myObjects.get(i); 

    if (obj.lives > 0) {
      obj.act();
      obj.show();
      i++;     //go to the next bullet
    } else {
      myObjects.remove(i);
    }
  }

  if (myShip.lives <= 0) {
    mode = GAMEOVER;
  }

  theUFO.show();
  theUFO.act();

  myShip.show();
  myShip.act();

  fill(livesfill);
  text("LIVES:" + myShip.lives, width/2, 40 );
}



void gameClicks() {
  if (buttonPressed(700, 50, 200, 100)) {
    mode = PAUSE;
  }
}
