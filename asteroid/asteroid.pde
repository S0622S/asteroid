int mode;
int asteroidcounter;
int livesfill = 255;
int one = 1;
int timer = 0;
int spcolor;

final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//int t = 0;


Spaceship myShip;
UFO theUFO;

ArrayList<GameObject> myObjects;  //ArrayList<"thing">"name(must be in pulural like myBullet's')"


boolean wkey, akey, skey, dkey, spacekey;

//////////////////////////////////////////

void setup() {
  size(800, 800);
  mode = INTRO;

  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  wkey = akey = skey = dkey = spacekey = false;

  myObjects = new ArrayList<GameObject>();


  int i = 0;
  while (i < 3) {
    myObjects.add(new Asteroid());
    i++;
  }

  myShip =new Spaceship();
  theUFO = new UFO();
}

/////////////////////////////////////////////

void draw() {
  //  myShip.show();

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode is " + mode);
  }

  //t++;
}
