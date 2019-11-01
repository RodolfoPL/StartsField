class Estrella{
  private float x;
  private float y;
  private float z;
  private float pz;
  private float r;
  private float speed;
  private color c;
  public Estrella(){
    //se inicia con valores aleatorios
    x = random(-width/2, width/2);
    y = random(- height/2, height/2);
    z = random(width);
    pz = z;
    r = 10;
    speed = 10;
    c = color(random(100, 255), random(50), random(50,255));
  }
  
  //actualizar la profundidad de la estrella
  public void update(){
    speed = map(mouseX, 0, width, 5, 70);
    pz = z;
    z -= speed;
    if(z < 1){
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      z = random(width);
      pz = z;
      c = color(random(100, 255), random(50), random(50,255));
    }
    
  }
  
  //mostrar
  public void show(){
    r = map(z, 0, width, 5, 1);    //crece la estrella
    //perspectiva actual
    float sx = map(x/z, 0, 1, 0, width);    
    float sy = map(y/z, 0, 1, 0, height);
    
    //perspectiva anterior 
    float px = map(x/pz, 0, 1, 0, width);    
    float py = map(y/pz, 0, 1, 0, height);
    
    //color variante
    float b = map(z, 1, width, 0, 255); 
    
    fill(100);
    stroke(c);
    line(px, py, sx, sy);
    
  }
}
