import processing.serial.*;
 
Serial serie;
int pos=0;
void setup() {
size(300, 300);
background(255);
smooth();

// Relleno azul
fill (0,20);                 // ( 20 es alpha, la transparencia, de 0 a 255)
fill (0,0,255,30);     // azul con transparencia
rect(0,0,300,300);


  frameRate(10); // Llama a draw 10 veces por segundo
//  serie = new Serial(this,"/dev/ttyUSB0",9600);
printArray(Serial.list());
serie = new Serial(this, Serial.list()[0], 9600);
}

void draw() {
stroke(0);
// Dibuja una linea entre la posición anterior y la actual del cursor

point(5,5); // un punto

 

line(10,10,50,40); // (10,10) es el punto inicial, (90,90) el punto final

 

ellipse(50,50,30,10); // (50,50) es el centro,

// 30 el diámetro horizontal y 10 el diámetro vertical

 

rect(10,70,80,200); // (10,70) es la esquina superior izquierda, 80 el ancho y 20 el alto

  if(serie.available()>0)
  {
  pos= serie.read();
    println(serie.read());
  }
}
