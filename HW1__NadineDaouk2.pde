import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;


CustomEasing customEasing1 = CustomEasing.create("customEasing1", "[{s:0,cp:0.383,e:0.644},{s:0.644,cp:0.905,e:1.044},{s:1.044,cp:1.183,e:1.012},{s:1.012,cp:0.841,e:1}]");
CustomEasing customEasing2 = CustomEasing.create("myCustomEase3", "[{s:0,cp:-0.153,e:-0.08},{s:-0.08,cp:-0.007,e:0.29199},{s:0.29199,cp:0.591,e:-0.084},{s:-0.084,cp:-0.759,e:0.24},{s:0.24,cp:1.239,e:0.076},{s:0.076,cp:-1.087,e:0.28399},{s:0.28399,cp:1.655,e:0.78},{s:0.78,cp:-0.095,e:1}]");



float duration1 = 1.5; 
float duration2 = 3.5; 


float x; 
float y;


float rotation = 0;
float size = 0;

// RGB colors values
float red;
float green;
float blue;

void setup() {
  size(800, 600);
  background(255);

  Ani.init(this); 

   
  rectMode(CENTER);
  
  
  x = width/2;
  y = height/2;
  
}


void draw() {
 
  noStroke();

  fill(red, green, blue, 20);

  
  translate(x, y); 
  
  
  rotate(rotation);
  
 
  triangle(86, 75, 58, -20, 30, 75);
  triangle(86, 75, 28, -20, 30, 75);
  

 
}


void keyPressed() {
  background(255); 
}




void mouseMoved() {
  println("moving"); 


  
  Ani.to(this, duration2, "x", mouseX, Ani.LINEAR);
  Ani.to(this, duration1, "y", mouseY,  Ani.ELASTIC_OUT);

 

 
  Ani.to(this, duration2, "red", random(255), customEasing1);
  Ani.to(this, duration2, "green", random(255), customEasing1);
  Ani.to(this, duration2, "blue", random(255), customEasing1);


  size = 50;
  Ani.to(this, duration2, "size", 0, customEasing1);
}

void mousePressed() {
  println("pressed"); 
}

void mouseDragged() {
  println("dragged"); 
}

void mouseClicked() {
  println("clicked"); 
}

void mouseReleased() {
  println("released"); 
}