class Fondo {
  PImage imagen;
  //Dir_y_Vel Di;
  int value = #96A7B3;
  float col = 255;

  Fondo() {
    //Di=new Dir_y_Vel();
    imagen=loadImage("fondo cir.jpg");
  }

  void pintar () {
    //suma 5 valores del color principal??
    value=value+5;
  }

  void cambiarTinte (float valor) {
    col = valor;
  }

  void dibujar() {
    //Di.calcularTodo (mouseX, mouseY); 

    pushStyle();
    colorMode(HSB);
    //127, Di.direccionPolar(), random(100), Di.direccionPolar()
    tint (value);
    image(imagen, 0, 0);
    popStyle();
  }
}
