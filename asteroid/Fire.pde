class Fire extends GameObject {

  int alpha; //transparency

  Fire() {
    location = myShip.location.copy();
    velocity = myShip.direction.copy();
    velocity.rotate(radians(180) + random(-0.5, 0.5));
    velocity.setMag(10);
    size = 10;
    lives = 1;
    alpha = 255;
  }

  void show() {
    strokeWeight(3);
    stroke(255, alpha);
    fill(0, alpha);
    rect(location.x, location.y, size, size);
    alpha = alpha - 30;
    if (alpha <= 0) lives = 0;
  }
}
