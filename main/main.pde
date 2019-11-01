//variables
Estrella estrellas[];
int noEstrellas = 1000;
//configurar el programa y solo se ejecuta una vez
void setup(){
  estrellas = new Estrella[noEstrellas];
  fullScreen(); //pantalla completa
  for(int i = 0; i<noEstrellas; i++){
    estrellas[i] =  new Estrella();
  }
}

//se ejeuta infinitamente
void draw(){
  background(18, 10, 43);
  //dibuje desde el centro 
  translate(width/2, height/2);

  for(int i = 0; i < noEstrellas; i++){
    estrellas[i].update();
    estrellas[i].show();
  }
}
