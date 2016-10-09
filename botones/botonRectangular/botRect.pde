class botRect {
 
  private int posX, posY, largo, ancho;
  private color colorBase;
  
  private boolean rectOver; 
  
 botRect(int x, int y, int l, int a) {
   posX = x;
   posY = y;
   largo = l;
   ancho = a;
   
   colorBase = color(230);
   rectOver = false;
 }
 
  void draw() {
    overRect();
    
   if(rectOver) {
     fill(128);
   } else {
    fill(colorBase);
   }
    
   rect(posX, posY, largo, ancho);
  }
  
  private void overRect() {
    if(mouseX >= posX && mouseX <= posX+largo && mouseY >= posY && mouseY <= posY+ancho) {
      rectOver = true;
    } else {
      rectOver = false;
    }
  }
  
  public boolean getStatus() {
    return rectOver;
  }
    
}