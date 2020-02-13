HScrollbar slider1, sliderr, sliderg, sliderb;
Star[] stars = new Star[10000];

float speed;
float r; 
float g; 
float b; 
float sliderw; 

boolean isRainbow = false; 

void setup(){
  
  sliderw = 300;
  
  slider1 = new HScrollbar(0, height-10, (int)sliderw, 20, 10);
  sliderr = new HScrollbar(0, height-100, (int)sliderw, 20, 10);
  sliderg = new HScrollbar(0, height-70, (int)sliderw, 20, 10);
  sliderb = new HScrollbar(0, height-40, (int)sliderw, 20, 10);
  
  size(900, 900);
  
  for (int i = 0; i < stars.length; i++){
   stars[i] = new Star(); 
  }
}

void draw(){
  
  speed = map(slider1.getPos(), 0, sliderw, 10, 80); 
  r = map(sliderr.getPos(), 0, sliderw, 0, 255);
  g = map(sliderg.getPos(), 0, sliderw, 0, 255);
  b = map(sliderb.getPos(), 0, sliderw, 0, 255);
   
  background(0);
  stroke(255); 
  text("Press x for rainbow", 10, height-125); 
  text("Speed", sliderw+10, height-5); 
  text("R", sliderw+10, height-95); 
  text("G", sliderw+10, height-65); 
  text("B", sliderw+10, height-35); 
  
  slider1.update();
  slider1.display();
  sliderr.update();
  sliderr.display();
  sliderg.update();
  sliderg.display();
  sliderb.update();
  sliderb.display();
 
  translate(width/2, height/2);
  for (int i = 0; i < stars.length; i++){
   stars[i].update(); 
   stars[i].show();
  }
  
}

void keyPressed(){
  if(key == 'x')
    isRainbow = !isRainbow; 
}
