

import oscP5.*; // importacion de libreria
OscP5 osc; // declaracion del objeto osc

GestorSenial gestorAmp;
GestorSenial gestorPitch;

TrazosAr t1;
TrazosAb t2;

Fondo f;

//int randomC = int (random(4));


float amp, pitch;
boolean haySonido = false;
boolean haySonidoP= false;
boolean anteshabiaSonido= false;

//--- CALIBRACIÓN ---//

float MIN_AMP= 50;
float MAX_AMP= 90;
float MIN_PITCH = 50;
float MAX_PITCH = 80;

//amortiguación
float amortiguacion = 0.9;


void setup () {
  size (800, 600);
  colorMode (RGB);
  frameRate(10);

  //INICIALIZAR
  t1= new TrazosAr();
  t2 = new TrazosAb();
  f= new Fondo();

  osc = new OscP5(this, 12345); // parametros: puntero a processing y puerto

  gestorAmp = new GestorSenial( MIN_AMP, MAX_AMP, amortiguacion);
  gestorPitch = new GestorSenial( MIN_PITCH, MAX_PITCH, amortiguacion );
}

void draw () {
  background(0);

  gestorAmp.actualizar( amp );
  gestorPitch.actualizar( pitch );

  haySonido = gestorAmp.filtradoNorm() > 0;
  haySonidoP = gestorPitch.filtradoNorm() > 0;

  boolean empezoSonido= haySonido && !anteshabiaSonido;
  boolean empezoSonidoP= haySonidoP && !anteshabiaSonido;
  boolean terminoElSonido = !haySonido && anteshabiaSonido;

  float col = map (gestorAmp.filtradoNorm(), 0, 1, 0, 200);

  //--------------------------------------------------------------------------------
  f.dibujar();


  //AMP - SI EMPIEZA UN SONIDO DE MINIMO 45 AMP SE DIBUJAN EL FONDO ETC ETC, SI BAJA DE 45 SE BORRAN - ARREGLAR
  if (empezoSonido) {
    t1.mover();
    t2.mover();
  }
  t1.dibujar();
  t2.dibujar();
  if (empezoSonidoP) {
    f.cambiarTinte(col);
    t1.colores1Ar(); 
    t2.colores1Ab();
    f.pintar();
    
      if (pitch >= 80) {
   t1.velocidadMaxima(gestorPitch.derivadaNorm());
  }
  if (pitch <= 65) {
   t1.velocidadMinima(gestorPitch.derivadaNorm()); 
  }
    
  } else {
    t1.colores2Ar(); 
    t2.colores2Ab();
  }
  

  
}

void oscEvent( OscMessage m) {

  if (m.addrPattern().equals("/amp")) {
    amp = m.get(0).floatValue();
    println("amp: " + amp);
  }

  if (m.addrPattern().equals("/pitch")) {
    pitch = m.get(0).floatValue();
    println("pitch: " + pitch);
  }
}
