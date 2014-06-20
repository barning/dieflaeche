void polySiebdruck(){
  
  translate(width/2,height/2);
  background(255);
  noFill();
  strokeWeight(3);
  stroke(0);
  beginShape();
  for(int i = 1; i<= punkte.size()-1; i++) {
    vertex(punkte.get(i).x, punkte.get(i).y);
  }
  endShape(CLOSE);
  
  noStroke();
  fill(0);
  for(int i = 1; i<= punkte.size()-1; i++) {
    
  }
  

  
  if (key=='a'){
    rotation1=0;
    rotation2=0;
    rotation3=0;
    rotation4=0;
    rotation5=0;
  }
  
  else {     
  if (counter>=100&&counter<=500){
    
    for (int i = 0; i <=punkte.size()-1; i++) {
      aniRotation = Ani.to(this,0.5, z, "rotation"+i, 0);      
    }
  }
  if (counter>=100){
   for (int i = 0; i <=5; i++) {
    counter=0;
    float z= random(0,0.05);
    aniRotation = Ani.to(this,1, 0, "rotation"+i, z);
  }
  }
  }
}
