import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;

import processing.pdf.*;

boolean record;

Ani aniRotation,newRotation,rotate;

float x,y,r,angle,d,x1,y1,rotation1,rotation2,rotation3,rotation4,rotation5;
float z=0;
PVector v1,v2,v3,v4,v5,v6;

float counter=0;
void setup(){
  size(500,600,OPENGL);
  smooth();
  Ani.setDefaultEasing(Ani.QUAD_IN_OUT);
  Ani.init(this);
  r=200;
  d=r*2;
  
  v1 = new PVector(0, 0);
  
  angle = atan2((v1.x), (v1.y));
  x = (v1.x)+cos(angle)*-r/2;
  y = (v1.y)+sin(angle)*-r/2;
  
  v2 = new PVector(x, y);
  
  angle = atan2((v2.x), (v2.y));
  x = (v2.x)+cos(angle)*-r/4;
  y = (v2.y)+sin(angle)*-r/4;
  
  v3 = new PVector(x, y);
  
  angle = atan2((v3.x), (v3.y));
  x = (v3.x)+cos(angle)*-r/8;
  y = (v3.y)+sin(angle)*-r/8;
  
  v4 = new PVector(x, y);
  
  angle = atan2((v4.x), (v4.y));
  x = (v4.x)+cos(angle)*-r/16;
  y = (v4.y)+sin(angle)*-r/16;
  
  v5 = new PVector(x, y);
  
  angle = atan2((v5.x), (v5.y));
  x = (v5.x)+cos(angle)*-r/32;
  y = (v5.y)+sin(angle)*-r/32;
  
  v6 = new PVector(x, y);
  
  for (int i = 0; i <=5; i++) {
    float z= random(0,0.05);
    aniRotation = Ani.to(this,1, 0, "rotation"+i, z);
  }
  background(0,0,0);
}

void draw(){
  
  if (record) {
    // Note that #### will be replaced with the frame number. Fancy!
    beginRecord(PDF, "frame-####.pdf"); 
  }
  
  fill(255,100);
  blendMode(BLEND);
  rect(0,0,width,height);
  noStroke();
  translate(width/2,height/2);
  noFill();
  strokeWeight(5);
  strokeCap(ROUND);
  stroke(0);
  if (key == 'n'){
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
  }
  if (key == 'm'){
    beginShape();
    stroke(0);
    vertex(v2.x, v2.y);
    vertex(v3.x, v3.y);
    vertex(v4.x, v4.y);
    vertex(v5.x, v5.y);
    vertex(v6.x, v6.y);
    endShape(CLOSE);
  }
  strokeWeight(0);

  if (key != 'a'){
    v2.rotate(rotation1);
    v3.rotate(rotation2);
    v4.rotate(rotation3);
    v5.rotate(rotation4);
    v6.rotate(rotation5);
  }
  if (counter>=100&&counter<=200){
    for (int i = 0; i <=5; i++) {
      aniRotation = Ani.to(this,0.5, z, "rotation"+i, 0);
      println("NOGO");
    }
  }
  if (counter>=500){
   for (int i = 0; i <=5; i++) {
    counter=0;
    println("GO");
    float z= random(0,0.05);
    aniRotation = Ani.to(this,1, 0, "rotation"+i, z);
    
  }
}
counter++;
if (record) {
  endRecord();
  record = false;
}
}

void mousePressed() {
  record = true;
}
