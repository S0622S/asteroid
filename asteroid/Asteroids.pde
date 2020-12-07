class Asteroid extends GameObject {

  Asteroid() {
    location = new PVector(random(width), random(height)); 
    velocity = new PVector(2, 0);
    velocity.rotate(random(TWO_PI));
    lives = 1;
    size = 100;
  }

  Asteroid(int s, float x, float y) {
    lives = 1;
    location = new PVector (x, y);
    velocity = new PVector(2, 0);
    velocity.rotate(random(TWO_PI));
    size = s;
  }

  void act() {
    super.act();



    if (location.x < 0 - size/2) {
      location.x = width + size/2;
    }
    if (location.x > width + size/2) {
      location.x = 0 - size/2;
    }
    if (location.y < 0 - size/2) {
      location.y = height - size/2;
    }
    if (location.y > height + size/2) {
      location.y = 0 - size/2;
    }

    int i = 0;
    asteroidcounter = 6;
    while (i < myObjects.size() ) {
      GameObject obj = myObjects.get(i); 
      if (obj instanceof Bullet) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size) {
          obj.lives = 0;
          lives = 0;

          if (size > 40) {
            myObjects.add(new Asteroid(size/2, location.x, location.y));
            myObjects.add(new Asteroid(size/2, location.x, location.y));
          } else {
            lives = 0;
          }
        }
      }
      i++;
    }


    if (dist(location.x, location.y, myShip.location.x, myShip.location.y) <= size/2 + myShip.size) {
      if (timer > 120) {
        timer = 0;
        myShip.lives--;
        spcolor = #FF0000;
      }
    }

    if (spcolor == #FF0000) {
      if (timer == 120) {
        spcolor = 0;
      }
    }
  }
}
