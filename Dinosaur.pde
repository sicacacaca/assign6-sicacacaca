class Dinosaur extends Enemy {
	// Requirement #4: Complete Dinosaur Class

  float speed = 1f;
  

  void display(){
    if(speed<0){
       pushMatrix();
       translate(x+80,y);
       scale(-1,1);
       image(dinosaur, 0, 0);
       popMatrix();
    
    }else{
      
    image(dinosaur, x, y);
   
  } 
  }

  void update(){
    if( player.y==y && speed>0 && player.x>x){
    x += speed*5;}
    else if(player.y==y && speed<0 && player.x<x){
    x += speed*5;}
    else{
    x += speed;
  }

    if(x+80 >= width || x<=0){
      speed*=-1;
    }
    
  }
/*
  int direction = (xSpeed > 0) ? RIGHT : LEFT;
  
  pushMatrix();
  translate(x, y);
  if (direction == RIGHT) {
    scale(1, 1);
    image(img, 0, 0, w, h); 
  } else {
    scale(-1, 1);
    image(img, -w, 0, w, h); 
  }
  popMatrix();
  */
  
  Dinosaur(float x, float y){
    super(x, y);
  }

	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
}
