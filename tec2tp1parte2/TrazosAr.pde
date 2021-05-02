class TrazosAr {
  //int cantidad= 2;
  //PImage [] imagenes;
  PImage imagen1, imagen2;
  color[] colorTrazosAr = {
    color(#FFED03), color(#FFF63E),color(#AC1828),color(#C52D3D),color(#C52D3D),color(#D6C020),color(#CB4453)};

    
 Dir_y_Vel Di;
 
 TrazosAr() {
   Di=new Dir_y_Vel();
   
   //imagenes = new PImage[ cantidad ];
   imagen1 = loadImage ("trazo00.png");
   imagen2 = loadImage ("trazo01.png");
  
 }
 
 void dibujarT () {
  Di.calcularTodo (mouseX, mouseY);
  
  //hay que divirlo para que cuando se acerquen, se tinte de los colores random, capaz que con un if? 
    color coloresRandom = colorTrazosAr[(int) random (colorTrazosAr.length)];
    tint (coloresRandom); 
   // falta la otra foto, se podrá poner que sea random estas fotos? como juntarlas con los trazos de abajo...
   image (imagen1, 120, mouseY, 520, 230);
   
   //if (Di.miDireccionY > 350) {
     
   //}
 
 }
  
 
} 
