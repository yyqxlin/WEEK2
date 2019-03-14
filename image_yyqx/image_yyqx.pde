PImage image;
int smallPoint, largePoint;

void setup() {
  
//Example of loading an image from the date folder 
image = loadImage ("yyqx.jpg");
size (500, 500);
smallPoint=11;
largePoint=100;
imageMode (CENTER);
noStroke (); 
background(255);

}
void draw(){
  float pointillize = map (mouseX, 0, width, smallPoint, largePoint);
  int x = int(random (image.width)); 
  int y = int (random(image.height)); 
  color pix = image.get (x,y);
  fill (pix,128);

  ellipse (x,y,pointillize,pointillize);
  
}
void keyPressed() {
saveFrame("pointillize_###.jpg");
}
