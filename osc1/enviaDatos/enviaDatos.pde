// OSC envía
// para app en android, añadir el siguiente codigo en AndroidManifest.xml:
// <uses-permission android:name="android.permission.INTERNET"/>
// desde Android > Sketch Permissions: INTERNET

import oscP5.*;
import netP5.*;

OscP5 oscP5; // definición objeto
NetAddress direccionRemota;

int puerto;
String ip;

void setup() {
  
 // size(200,200);
 // frameRate(25);
 fullScreen();
// background(0);
 
 ip ="192.168.1.66"; // puerto ip donde se enviarán los datos, 127.0.0.1 es localhost
 puerto= 11112;
 
 oscP5 = new OscP5(this, puerto); // iniciamos objeto
 
 direccionRemota = new NetAddress(ip, puerto); // entrada de mensajes por el puerto;
}


void draw() {
  
 OscMessage mensaje = new OscMessage("/texto");

 mensaje.add("pepe"); // mensaje a enviar;
 
 oscP5.send(mensaje, direccionRemota);
  
}

void oscEvent(OscMessage theOscMessage){
  print("recibido");
  print(" addrpattern: " + theOscMessage.addrPattern());
  println(" typetag: " + theOscMessage.typetag());
}