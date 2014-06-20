void coordinates() {
  r=200;
  d=r*2;
 
  punkte.add(new PVector(0,0));
  
    for(int i = 1; i< 6; i++) {
      angle = atan2((punkte.get(i-1).x),(punkte.get(i-1).y));
      x = (punkte.get(i-1).x)+cos(angle)*-r/(2*i);
      y = (punkte.get(i-1).y)+sin(angle)*-r/(2*i);
      punkte.add(new PVector(x,y));
    }
  }
