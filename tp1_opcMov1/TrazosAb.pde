class TrazosAb {
  PImage imagen2, imagen5, imagen6, imagen7, imagen1, imagen4, imagen8, imagen3;
  float alto, ancho;
  Dir_y_Vel Di;
  float posX = 380;
  float posY = map(amp, MIN_AMP, MAX_AMP, height, 0);
  TrazosAb() {
    Di=new Dir_y_Vel();
    Di.miDireccionY= 1;
    Di.vel=7;
    ancho = 550;
    alto = 230;
    imagen2 = loadImage ("trazo01.png");
    imagen5 = loadImage("trazo04.png");
    imagen6=loadImage("trazo05.png");
    imagen7=loadImage("trazo07.png");
    imagen1 = loadImage ("trazo03.png");
    imagen4 = loadImage ("trazo00.png");
    imagen8=loadImage("trazo06.png");
    imagen3=loadImage("trazo08.png");
  }

  void dibujar() {
    if (t1.estado== 1) {
      image (imagen2, posX-250, posY+80, ancho, alto);
    } else if (t1.estado==2) {
      image (imagen5, posX-250, posY-80, ancho, alto+80);
    } else if (t1.estado==3) {
      image (imagen6, posX-250, posY+70, ancho-20, alto+50);
    } else if (t1.estado==4) {
      image (imagen7, posX-280, posY+50, ancho+80, alto+130);
    } else if (t1.estado==5) {
      image (imagen1, posX-250, posY+70, ancho, alto+60);
    } else if (t1.estado==6) {
      image (imagen4, posX-250, posY+60, ancho, alto);
    } else if (t1.estado==7) {
      image (imagen8, posX-250, posY+50, ancho, alto-30);
    } else if (t1.estado==8) {
      image (imagen3, posX-250, Di.posY+10, ancho+100, alto+150);
    }
  }

  void colores1Ab () { //colores saturados
    color[] colorTrazosAb = {
      color(#FFED03), (#FF0825), (#F7ED2B), (#EEEEED), (#B7102C), (#F0EF5A) };

    color coloresRandom = colorTrazosAb[(int) random (colorTrazosAb.length)];
    tint (coloresRandom);
  }
  void colores2Ab () { //colores opacos
    color[] colorTrazosAb2 = {
      color(#5B151A), (#B1302A), (#ECDE40), (#B4B139), (#4E0A06), (#8A2820), (#BEBEC0) };

    color coloresRandom2 = colorTrazosAb2[(int) random (colorTrazosAb2.length)];
    tint (coloresRandom2);
  }
  void velocidad() {

    if (pitch >=80) {
      Di.vel=Di.vel+10;
    }
    if (pitch<=65) {
      Di.vel=Di.vel-10;
    }
  }
  void mover() {
    if (amp <= 20) {
      Di.posY-=Di.miDireccionY+Di.vel;
    }
    if (amp<= 90 ) {
      Di.posY+=Di.miDireccionY+Di.vel;
    }
    if ((Di.posY>330)) {
      Di.posY=330;
    } else if ((Di.posY<130)) {
      Di.posY=130;
    }
    posX =380;
    posY = map(gestorAmp.filtradoNorm(), 0, 1, height-280, 0);
  }
}
