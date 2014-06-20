/*void polyFarbe(){
  fill(0,0,0,10);
  rect(0,0,width,height);
  translate(width/2,height/2);
  blendMode(BLEND);
  noStroke();
  blendMode(SCREEN);
  noFill();
  strokeWeight(2);
  stroke(0);
  beginShape();
    stroke(#E6DD23);
    vertex(v2.x, v2.y);
    stroke(#F05E11);
    vertex(v3.x, v3.y);
    stroke(#A51AD9);
    vertex(v4.x, v4.y);
    stroke(#11AFF0);
    vertex(v5.x, v5.y);
    stroke(#38E600);
    vertex(v6.x, v6.y);
  endShape(CLOSE);
  strokeWeight(0);

  v2.rotate(rotation1);
  v3.rotate(rotation2);
  v4.rotate(rotation3);
  v5.rotate(rotation4);
  v6.rotate(rotation5);

  if (counter>=100&&counter<=200){
    for (int i = 0; i <=5; i++) {
      aniRotation = Ani.to(this,0.5, z, "rotation"+i, 0);
      println("NOGO");
    }
  }
  if (counter>=200){
   for (int i = 0; i <=5; i++) {
    counter=0;
    println("GO");
    float z= random(0,0.05);
    aniRotation = Ani.to(this,1, 0, "rotation"+i, z);
    
  }
  }
}*/
