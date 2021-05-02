class Fondo{
PImage imagen;
Dir_y_Vel Di;

Fondo(){
  Di=new Dir_y_Vel();
imagen=loadImage("fondo cir.jpg");

}

void dibujar(){
  
  Di.calcularTodo (mouseX, mouseY); 
  
  pushStyle();
   colorMode(HSB,207,57,53);
   tint (127,Di.direccionPolar(),random(100),Di.direccionPolar());
   image(imagen ,0,0);
  popStyle();
}
}
