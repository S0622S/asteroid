void keyPressed() {
  if ( key == 'w' || key == 'W' ) wkey = true;    //double equal(==) means "does it mean?"
  if ( key == 's' || key == 'S' ) skey = true;
  if ( key == 'a' || key == 'A' ) akey = true;
  if ( key == 'd' || key == 'D' ) dkey = true;
  if ( key == ' ' ) spacekey = true;
}

void keyReleased() {
  if ( key == 'w' || key == 'W' ) wkey = false;
  if ( key == 's' || key == 'S' ) skey = false;
  if ( key == 'a' || key == 'A' ) akey = false;
  if ( key == 'd' || key == 'D' ) dkey = false;
  if ( key == ' ' ) spacekey = false;
}
