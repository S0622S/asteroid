class Spaceship extends GameObject {

  //1. instance variables
  PVector direction;
  int shotTimer, threshold;
  //int csize;




  //2. constructors
  Spaceship() {    //setup(){}
    location = new PVector(width/2, height/2);   //x = width/2; y = height/ 2;
    direction = new PVector(0.1, 0);
    velocity = new PVector(0, 0);     //vx = 0; vy = 0;
    lives = 3;
    shotTimer = 0;
    threshold = 60;
  }

  //3. behaviour functions
  void show() {
    pushMatrix(); 

    //csize = 32;
    //noStroke();   
    //fill(0, 255);
    //circle(0, 0, 32);

    strokeWeight(3);
    stroke(255);
    fill(spcolor);
    translate(location.x, location.y);     //moving the square to the middle
    rotate(direction.heading());   //changing the appearance of the square by rotating the square with the radians in the a, dkey manipulating .heading (.heading calculates the angle of PVector(x, y) which tan^-(20/10)  ).
    triangle(-25, -10, -25, 10, 15, 0);

    popMatrix();
  }

  void act() {    
    super.act();

    shotTimer++;

    if (akey) direction.rotate(-radians(5));    //doesn't like degree, but radians. Accutially turning the square.
    if (dkey) direction.rotate(radians(5));
    if (wkey) {
      velocity.add(direction);
      myObjects.add(new Fire());
    }
    if (skey) velocity.sub(direction);
    if (spacekey && shotTimer > threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }

    if (velocity.mag() > 5) velocity.setMag(5);

    int i = 0;
    while (i < myObjects.size() ) {
      GameObject obj = myObjects.get(i); 
      if (obj instanceof Bullet2) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size) {
          if (timer > 120) {
            obj.lives = 0;
            lives--;
            spcolor = #FF0000;
            livesfill = #FF0000;
            timer = 0;
          } else {
            spcolor = 0;
            livesfill = 255;
          }
        }
      }
      i++;
    }

    if (spcolor == #FF0000) {
      if (timer == 120) {
        spcolor = 0;
      }
    }


    if (location.x < 0) {
      location.x = width;
    }
    if (location.x > width) {
      location.x = 0;
    }
    if (location.y < 0) {
      location.y = height;
    }
    if (location.y > height) {
      location.y = 0;
    }
  }
}
