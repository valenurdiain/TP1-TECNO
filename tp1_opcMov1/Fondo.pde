class Fondo {
  PImage imagen;
  int value = #969798;
  float col = 255;

  Fondo() {
    imagen=loadImage("fondo cir.jpg");
  }

  void pintar () {
    //suma 5 valores del color principal
    value=value+5;
  }

  void cambiarTinte (float valor) {
    col = valor;
  }

  void dibujar() {
    pushStyle();
    tint (value);
    image(imagen, 0, 0);
    popStyle();
  }
}
