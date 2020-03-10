

Planeta sol;
Planeta mercurio;
Planeta venus;
Planeta tierra;
Planeta marte;
Planeta jupiter;
Planeta saturno;
Planeta urano;
Planeta neptuno;

int modoCamara=0;
/*
Cámara fija por defecto
*/
int x=0,y=0,z=0;
int eyeX,eyeY,eyeZ,centerX,centerY,centerZ,upX,upY,upZ;
int marioX=0,marioY=0,marioZ=0;
int ultimoPuntoX,ultimoPuntoY,ultimoPuntoZ,ultimoCenterX,ultimoCenterY;
float anguloMario=0;

PImage texturaSol;
PImage espacio;

PShape mario;
PImage marioImg;

void setup(){
  size(1080,600,P3D);
  creaPlanetas();
  espacio  = loadImage("espacio.jpg");
  tierra.apareceLuna(1,3.4,loadImage("luna.jpg"));
  marte.apareceLuna(2,5,loadImage("luna.jpg"));
  textFont(createFont("Arial Black",16));
  
  marioImg=loadImage("metal_mario.png");
  mario = loadShape("mario.obj");
  mario.setTexture(marioImg);
  mario.scale(0.125,-0.125,-0.125);
  centerX= 0;
  centerY=0;
  centerZ=0;
  ultimoPuntoX=0;
  ultimoPuntoY=0;
  ultimoPuntoZ=780;
  ultimoCenterX=0;
  ultimoCenterY=0;
}

void draw(){
  espacio.resize(width,height);
  background(espacio);
  fill(255);
  camera();
  if(modoCamara==1){
    instruccionesCamara();
    marioX=x;
    marioY=y+30;
    marioZ=z-80;
  } else {
    defaultMode();

  }
    camera(x,y,z,
    centerX,centerY,centerZ,
    0,1,0);
  
    
    pushMatrix();
    translate(marioX,marioY,marioZ);
    rotateY(anguloMario);
    shape(mario);
    popMatrix();
    
    lights();
    pointLight(255,255,255,0,0,0);
    muestraPlanetas(); 
    teclaPulsada(); 
}



void creaPlanetas(){
  sol = new Planeta(150,0,0,loadImage("sol.png"),"Sol");
  mercurio = new Planeta(8,250,0.005,loadImage("mercurio.jpg"),"Mercurio");
  venus = new Planeta(16,300,0.002,loadImage("venus.jpg"), "Venus");
  tierra = new Planeta(16.7,350,0.001,loadImage("tierra.jpg"), "Tierra");
  marte = new Planeta(20,450,0.0005,loadImage("marte.jpg"), "Marte");
  jupiter = new Planeta(60,600,0.0007,loadImage("jupiter.jpg"),"Júpiter");
  /*saturno = new Planeta(50, 900, 0.0003,loadImage("saturno.jpg"),"Saturno");
  urano = new Planeta(30, 1000, 0.0001, loadImage("urano.jpg"),"Urano");
  neptuno = new Planeta(35, 1100, 0.00005, loadImage("neptuno.jpg"),"Neptuno");*/
}



void muestraPlanetas(){
  sol.muestra();
  sol.orbita();
  
  mercurio.muestra();
  mercurio.orbita();
  
  venus.muestra();
  venus.orbita();
  
  tierra.muestra();
  tierra.orbita();
  
  marte.muestra();
  marte.orbita();
  
  jupiter.muestra();
  jupiter.orbita();
  
  /*saturno.muestra();
  saturno.orbita();
  
  urano.muestra();
  urano.orbita();
  
  neptuno.muestra();
  neptuno.orbita();*/


}


void instruccionesCamara(){
    text("Modo libre", width-100,16);
    text("Eje x: "+x, 16,15);
    text("Eje y: "+y, 16,30);
    text("Eje z: "+z, 16,45);
    text("Centro X: "+centerX, 16,60);
    text("centro Y: "+centerY, 16,75);
    
    text("Tecla O - Pasa a cámara fija", 16,height-160);
    text("Barra espaciadora - Teletransporte", 16,height-144);
    
    text("Rotaciones:", 16,height-112);
    text("4 - Rota la nave hacia la izquierda", 16,height-96);
    text("6 - Rota la nave hacia la derecha", 16,height-80);
    text("→ - Rota la camara hacia la derecha", 16,height-64);
    text("← - Rota la camara hacia la izquierda", 16,height-48);
    text("↑ - Rota la camara hacia arriba", 16,height-32);
    text("↓ - Rota la camara hacia abajo", 16,height-16);
    
    text("Modificar los ejes:", width-textWidth("Modificar los ejes:   "),height-112);
    text("Tecla T - Para ir arriba", width-textWidth("Tecla T - Para ir arriba   "),height-96);
    text("Tecla G - Para ir abajo", width-textWidth("Tecla G - Para ir abajo   "),height-80);
    text("Tecla W - Para ampliar", width-textWidth("Tecla W - Para ampliar   "),height-64);
    text("Tecla S - Para alejar", width-textWidth("Tecla S - Para alejar   "),height-48);
    text("Tecla A - Para ir a la izquierda", width-textWidth("Tecla A - Para ir a la izquierda   "),height-32);
    text("Tecla D - Para ir a la derecha", width-textWidth("Tecla D - Para ir a la derecha   "),height-16);
}

void teclaPulsada(){

if(keyPressed){
    if(modoCamara==1){
      if(key=='w' || key=='W'){
        z-=10;
        centerZ-=10;
      } else if (key=='s' || key=='S'){
        z+=10; 
        centerZ+=10;
      } else if (key=='t' || key=='T'){
        y-=10;
        centerY-=10;
      } else if (key=='g' || key=='G'){
        y+=10;
        centerY+=10;
      } else if(key=='a' || key=='A'){
        x-=10;
        centerX-=10;
      } else if(key=='d' || key=='D'){
        x+=10;
        centerX+=10;
      } else if(keyCode==LEFT){
        centerX-=25;
      } else if(keyCode==RIGHT){
        centerX+=25;
      } else if(keyCode==UP){
        centerY-=25;
      } else if(keyCode==DOWN){
        centerY+=25;
      } else if(key==' '){
        x=0;
        y=0;
        z=780;
        marioX=x;
        marioY=y+30;
        marioZ=z-80;
        centerX= 0;
        centerY=0;
        centerZ=0;
        anguloMario=0;
      } else if(key=='o'||key=='O'){
        modoCamara=0;
        ultimoPuntoX=x;
        ultimoPuntoY=y;
        ultimoPuntoZ=z;
        ultimoCenterX=centerX;
        ultimoCenterY=centerY;
      } else if(key =='4'){
          anguloMario += PI/32;
      } else if(key == '6'){
            anguloMario -= PI/32;
      } 
    } else if(key=='k'||key=='K'){
        modoCamara=1;
        x=ultimoPuntoX;
        y=ultimoPuntoY;
        z=ultimoPuntoZ;
        centerX=ultimoCenterX;
        centerY=ultimoCenterY;
        marioX=x;
        marioY=y+30;
        marioZ=z-80;
    }
  }
}



void defaultMode(){
    text("Modo fijo", width-100,16);
    text("Pulse la tecla ", 16,height-16);
    fill(255,0,0);
    text(" K ",16+textWidth("Pulse la tecla"),height-16);
    fill(255);
    text(" para pasar al modo libre.",16+textWidth("Pulse la tecla K"),height-16);
    x=410;
    y=-770;
    z=780;
    centerX=0;
    centerY=0;
    centerZ=0;
}
