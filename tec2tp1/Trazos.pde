class Trazos {
 Dir_y_Vel Di;
 
 Trazos() {
   Di=new Dir_y_Vel();
 }
 
 void dibujarT () {
  Di.calcularTodo (mouseX, mouseY); 
   
   
 }
 
}
