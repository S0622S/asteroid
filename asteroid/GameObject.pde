class GameObject {

  PVector location; 
  PVector velocity;
  int lives;
  int size;


  GameObject() {
  }

  void show() {
    strokeWeight(3);
    stroke(255);
    fill(0);
    circle(location.x, location.y, size);
  }
  void act() {
    location.add(velocity);
  }
}
