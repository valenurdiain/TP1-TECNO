Trazos t;
Paleta p;
Fondo f;
void setup () {
  size (800, 600);
  colorMode (RGB);
  //INICIALIZAR
  p = new Paleta(); 
  t= new Trazos();
  f= new Fondo();
}

void draw () {
  background(0);
  f.dibujar();
  t.dibujar();
}
