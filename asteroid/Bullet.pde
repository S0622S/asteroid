class Bullet extends GameObject {

  //1. Instruction Variable

  //2. Constructors
  Bullet() {
    location = new PVector(myShip.location.x, myShip.location.y);
    velocity = new PVector (myShip.direction.x, myShip.direction.y);
    velocity.setMag(10);

    size = 10; 
    lives = 1;
  }



  //3. Behaiviour Function

  void act () {
    super.act(); //do whatever GameObject do.
    if (location.x < 0 || location.x > width || location.y < 0 || location.y > height) {
      lives = 0;
    }
  }
}
