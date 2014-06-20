import processing.pdf.*;

import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;

ArrayList<PVector> punkte;

Ani aniRotation,newRotation,rotate;

boolean record;
int number;

float x,y,r,angle,d,x1,y1,rotation1,rotation2,rotation3,rotation4,rotation5;
float z=0;

float counter=0;
void setup(){
  size(500,600,OPENGL);
  smooth();
  punkte = new ArrayList<PVector>(); 
  Ani.setDefaultEasing(Ani.QUAD_IN_OUT);
  Ani.init(this);
  coordinates();
  
  for (int i = 0; i <=5; i++) {
    float z= random(0,0.05);
    aniRotation = Ani.to(this,1, 0, "rotation"+i, z);
  }
}

void draw(){ 
 if (record) {
    beginRaw(PDF, "poly"+number+".pdf");
  } 
  //polyFarbe();
  polySiebdruck();
  counter++;
  if (record) {
    endRaw();
    number++;
    record = false;
  }
}

void mousePressed() {
  record = true;
}
