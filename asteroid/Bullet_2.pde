class Bullet2 extends GameObject {


  Bullet2() {
    location = new PVector(theUFO.location.x, theUFO.location.y);
    velocity = new PVector (theUFO.aim.x, theUFO.aim.y);
    velocity.setMag(10);

    size = 10; 
    lives = 1;
  }

  void show () {    
    strokeWeight(3);
    stroke(255);
    fill(0, 0, 255);
    circle(location.x, location.y, size);
  }

  void act () {
    super.act();

    if (location.x < 0 || location.x > width || location.y < 0 || location.y > height) {
      lives = 0;
    }
  }
}
