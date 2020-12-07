class UFO extends GameObject {

  PVector aim;
  float m;
  int shotTimer2, threshold2;
  color UFOcolor = color(0, 0, 255);

  UFO() {
    location = new PVector(random(width), random(height)); 
    velocity = new PVector(2, 0);
    velocity.rotate(random(TWO_PI));

    lives = 1;
    size = 40;


    threshold2 = 70;    //normally 60
  }

  void show() {
    pushMatrix(); 
    strokeWeight(3);
    stroke(255);
    fill(UFOcolor);
    translate(location.x, location.y);
    circle(0, 0, 50);
    popMatrix();
  }

  void act() {   
    super.act();

    shotTimer2++;

    aim = new PVector(myShip.location.x - location.x, myShip.location.y - location.y);

    if (shotTimer2 > threshold2) {
      myObjects.add(new Bullet2());
      shotTimer2 = 0;
    }
    int i = 0;
    while (i < myObjects.size() ) {
      GameObject obj = myObjects.get(i); 
      if (obj instanceof Bullet) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size) {
          obj.lives = 0;
          lives--;
          UFOcolor = color(255, 0, 0);
        } else {
          UFOcolor = color(0, 0, 255);
        }
      }
      i++;
    }
    


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
  }
}
