class Trazos {
  PImage ptrazos[];
  float x, y, z, w, dir, ancho, alto;
  float estado;
  int tiempo=1;
  Trazos () {
    x= 120; 
    y=50; 
    z=350;
    w= 200;
    ancho = 550;
    alto = 230;
    ptrazos =  new PImage[5];
    for ( int j = 0; j < ptrazos.length; j++ ) {
      ptrazos [j]  = loadImage("trazo"+ nf(j, 2) +".png");
    }
    estado= int(random(1, 4));
  }
  void dibujar () {
    //Se escribe el tiempo para saber cuando llega a 300
    fill(#FFFFFF);
    text ("Tiempo:", 10, 20);
    tiempo=tiempo+1;
    text(tiempo, 70, 20);
    if (estado== 1) {
      if (tiempo>=00) {
        image (ptrazos[0], x, y, ancho, alto); 
        image (ptrazos[1], x, z, ancho, alto);
      }
      if (y >= 0) {
        y++;
        if (y==150) {
          y=50;
        } 
        z--; 
        if (z==250) {
          z=350;
        }
      }
    }
    if (estado==2) {
      if (tiempo>=300) {
        image (ptrazos[2], width-680, w, ancho, alto+100);
      }
      if (w>= 0) {
        w--;
        if (w==150) {
          w=200;
        }
      }
    }
    if (estado==3) {
      if (tiempo>=300) {
        image (ptrazos[3], x, y+30, ancho, alto+60); 
        image (ptrazos[4], x, z-30, ancho, alto+60);
      }
      if (y>=0) {
        y++;
        if (y==150) {
          y=50;
        } 
        z--; 
        if (z==250) {
          z=350;
        }
      }
    }
    color coloresRandom = p.colorTrazosAr[(int) random (p.colorTrazosAr.length)];
    tint (coloresRandom);
  }
}
