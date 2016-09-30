import oscP5.*;
import netP5.*;

OscP5 oscP5;

int puerto; // puerto de entrada
String texto;

void setup() {
  size(400,400);
  background(255);
  
  puerto = 11112; // debe ser el mismo que el configurado como envio
  oscP5 = new OscP5(this, puerto); // entrada de mensajes por puerto seleccionado;
}

void draw() {
  
 // println(texto);
  
}


void oscEvent(OscMessage theOscMessage) {
  
  println("entra fnc");
  
  if(theOscMessage.checkAddrPattern("/texto")) {
    
    println("entra en pitch");
    println(theOscMessage.get(0).stringValue());
    
  }
}