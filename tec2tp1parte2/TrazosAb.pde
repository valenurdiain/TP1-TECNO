class TrazosAb {
  PImage imagen1, imagen2;
 Dir_y_Vel Di;
 
 TrazosAb() {
   Di=new Dir_y_Vel();
 }
 
 void dibujarT () {
  Di.calcularTodo (mouseX, mouseY); 
   
   
 }
 
}
