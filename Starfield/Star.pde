class Star {
  float x;
  float y; 
  float z; 
  float size; 
  
  float pz;
  
  
  Star(){
     spawn();
     z=random(width);
    size = 8; 
    pz = z; 
  }
  
  void spawn(){
    x = random(-width, width);
    y = random(-height, height);
  }
  
  void update (){
    z=z-speed; 
    if(z<1){
      spawn();
      z=width;
      pz=z; 
    }
  }
  
  void show(){
    fill(255); 
    
    float sx = map(x/z, 0, 1, 0 , width); 
    float sy = map(y/z, 0, 1, 0 , height); 
    size = map(z, 0, width, 16, 0); 
    //ellipse(sx,sy, size, size);
    
    float px = map(x/pz, 0, 1, 0 , width);
    float py = map(y/pz, 0, 1, 0 , height);
    
    pz=z;
    
    strokeWeight(1000/z);
    if(isRainbow){
    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
  }  
    stroke(r,g,b); 
    line(px, py, sx, sy); 
    
  }
}
