//PImage fondo;
Fondo f;
TrazosAr t1; //trazo1 = los de arriba
TrazosAb t2; //trazo2 = los de abajo


//int r= int (random(4)); para que cambie de colores 

void setup() {
  size(800, 600);
  
  f=new Fondo ();
  t1= new TrazosAr();
  t2= new TrazosAb();
  
}

void draw() {
 f.dibujar();
 t1.dibujarT();
 //f.col();
}

//----- colores de fondo#A195A4 violeta claro ------
//#1A0F39 violeta oscuro
//#5B4E83 violeta clarito tirando a oscuro 
//#636161 gris oscuro 
//#B6B5B8 gris claro 
//#524E50 gris oscuro 
//#4F6A86 azul 
//#587B9B azul más claro
//#BCD3DF azul más clarito 
//#5D7589 azul tirando a oscuro
//#4E4F49 gris

//----------PALETA DE COLORES (TRAZOS):
//#FFED03 amarillo
//  #FFF63E un poco más claro
//  #AC1828 rojo
//  #C52D3D rojo más claro
//  #EACE01 amarillo
//  #D6C020 amarillo oscuro
//  #CB4453 rojo claro

// CONTADOR ?? 
 //if (contador == 0) {
 //background (0);  
 //} else if (contador >= 30) {
 // f.dibujar();
 // t1.dibujar();
 // t2.dibujar();
 //  if (r >= 2 && r <=0) {
 // cambiacolort1();
 // cambiacolort2();
 //} else if (r <= 2 && r => 4) {
 //  cambiacolort1();
 // cambiacolort2(); 
 //}
 //}
 
 
 


 
