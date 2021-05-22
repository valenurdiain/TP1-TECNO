class TrazosAr {
  PImage [] imagenes;
  float ancho, alto;
  float estado;
  float posX = 380;
  float posY = map(amp, MIN_AMP, MAX_AMP, height, 0);
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
  void colores2Ar () { //colores opacos
    color[] colorTrazosAr2 = {
      color(#5B151A), (#6A1511), (#ECDE40), (#B6AA1D), (#4E0A06), (#8A2820), (#BEBEC0), (#901A10), (#E5C623)};

    color coloresRandom2 = colorTrazosAr2[(int) random (colorTrazosAr2.length)];
    tint (coloresRandom2);
  }
  void colores1Ar () { //colores saturados
    color[] colorTrazosAr = {
      color(#FFED03), (#FF0825), (#F7F7F7)  };

    color coloresRandom = colorTrazosAr[(int) random (colorTrazosAr.length)];
    tint (coloresRandom);
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
  }
  void velocidad() {

    if (pitch >=80) {
      Di.vel=Di.vel+20;
    }
    if (pitch<=65) {
      Di.vel=Di.vel-10;
      println("Di.vel", Di.vel);
    }
  }
  void colorInicial () {
    tint (#F7F7F7);
  }
}
