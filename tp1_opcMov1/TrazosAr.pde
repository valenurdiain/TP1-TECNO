class TrazosAr {
  PImage [] imagenes;
  float ancho, alto;
  float estado;
  float posX = 380;
  float posY = map(amp, MIN_AMP, MAX_AMP, height, 0);
  float variacionVelocidad;
  float VELOCIDAD_VARIACION =10;
  Dir_y_Vel Di;

  TrazosAr () {
    Di=new Dir_y_Vel();
    Di.miDireccionY= 1;
    Di.vel=7;
    ancho = 550;
    alto = 230;

    estado= int(random(1, 8));
    imagenes= new PImage [9];
    for (int i=0; i < imagenes.length; i++) {
      imagenes[i]  = loadImage("trazo"+ nf(i, 2) +".png");
    }
  }

  void dibujar () {
    if (estado== 1) {
      image (imagenes[0], posX-250, posY-150, ancho, alto);
    } else if (estado==2) {
      image (imagenes[2], posX-250, posY-150, ancho, alto+100);
    } else if (estado==3) {
      image (imagenes[3], posX-250, posY-150, ancho, alto+60);
    } else if (estado==4) {
      image (imagenes[6], posX-250, posY-150, ancho+10, alto-20);
    } else if (estado==5) {
      image (imagenes[1], posX-250, posY-150, ancho, alto);
    } else if (estado==6) {
      image (imagenes[7], posX-300, posY-160, ancho+80, alto+130);
    } else if (estado==7) {
      image (imagenes[4], posX-230, posY-300, ancho, alto+100);
    } else if (estado==8) {
      image (imagenes[1], posX-250, posY-110, ancho, alto);
    }
  }

  void colores1Ar () { //colores saturados
    color[] colorTrazosAr = {
      color(#FFED03), (#FF0825), (#F7ED2B), (#EEEEED), (#B7102C), (#F0EF5A) };

    color coloresRandom = colorTrazosAr[(int) random (colorTrazosAr.length)];
    tint (coloresRandom);
  }

  void colores2Ar () { //colores opacos
    color[] colorTrazosAr2 = {
      color(#5B151A), (#B1302A), (#ECDE40), (#B4B139), (#4E0A06), (#8A2820), (#BEBEC0) };

    color coloresRandom2 = colorTrazosAr2[(int) random (colorTrazosAr2.length)];
    tint (coloresRandom2);
  }

  void mover() {
    if (amp <= 20) {
      Di.posY+=Di.miDireccionY+Di.vel;
    }
    if (amp<= 90 ) {
      Di.posY-=Di.miDireccionY+Di.vel;
    }
    if ((Di.posY>200)) {
      Di.posY=200;
    } else if ((Di.posY<20)) {
      Di.posY=20;
    }
    posX = 380;
    posY = map(gestorAmp.filtradoNorm(), 0, -1, height-380, 0);
    
    Di.vel += variacionVelocidad;
  }
  void velocidad() {
    variacionVelocidad = amp + VELOCIDAD_VARIACION;
    
    if(amp>=80) {
     Di.vel = Di.vel +30; 
    }
    if(amp<= 65) {
     Di.vel=Di.vel-20; 
    }
  }
}
