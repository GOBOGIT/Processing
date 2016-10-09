/** 
* boton simple rectangular
*/
botRect BotRect1;   // constructor
botRect BotRect2;   // constructor


int rectX, rectY;  // posición del botón
int rectSize=90; 

void setup() {
  size(640,360);
  
  rectX = width/2 - rectSize/2;
  rectY = height/2 -rectSize /2;

  BotRect1 = new botRect(rectX, rectY, rectSize, rectSize);
  BotRect2 = new botRect(rectX+ 100, rectY, rectSize, rectSize);

}

void draw() {
  update();
  
  background(102);
  
  BotRect1.draw();
  BotRect2.draw();

}

void update() {
 println(BotRect1.getStatus()); 
}