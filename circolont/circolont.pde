Camera worldCamera;

ArrayList<Circle>[] circles;
int frequenz;

final int N_CIRCLE = 24;

final int[][] CIRCLE = {        
        {200, 100},
        {226, 103},
        {250, 113},
        {271, 129},
        {287, 150},
        {296, 174},
        {300, 200},
        {296, 226},
        {287, 250},
        {271, 271},
        {250, 287},
        {226, 296},
        {200, 300},
        {174, 296},
        {150, 287},
        {129, 271},
        {113, 250},
        {103, 226},
        {100, 200},
        {103, 174},
        {113, 150},
        {129, 129},
        {150, 113},
        {174, 103}};

int i;
void setup() {
  worldCamera = new Camera();
  size(800, 600);
  //size(1280, 768);
  //frameRate(40);
  stroke(255);  
  strokeWeight(0.1);
    
  frequenz = 0;
  circles = (ArrayList<Circle>[])new ArrayList[N_CIRCLE];
  
  for (i=0; i < N_CIRCLE; i++) {
    circles[i] = new ArrayList<Circle>();
    circles[i].add(new Circle(i));
  }

  //loop();
  noFill();
}
int xshift = 450;
int yshift = 200;

int xshift1 = 800;
int yshift1 = 200;

int xshift2 = 100;
int yshift2 = 200;
int id_VALUE = 0;

int pos=0;

final float MIN_LEVEL = -70.000;
final float MAX_LEVEL = 6.000;

final int MAX_POS = 300; //500;
final int MAX_FREQ = 10000;


  float[] frequency = new float[24];
  float[] level = new float[24];
  
  String[] list;
void draw() {
  clear();
  scale (6+worldCamera.zoom); //3.5
  //translate(-470-worldCamera.pos.x, -290-worldCamera.pos.y);
  translate(-585-worldCamera.pos.x, -350-worldCamera.pos.y);
  worldCamera.draw();
  pos++;
  
//diminuire i loop for valutando prima l'arrayList con il maggior numero di cerchi
//poi fare il loop su tutti gli array controllando prima se è diverso da null
  
 String lines[] = loadStrings("a.txt");

 for (i=0; i < lines.length; i++) {

   list = split(lines[i], ' ');
   
   frequency[i] = float(list[0]);
   level[i] = float(list[1]);
   //println( i + " frequency " + frequency[i] );
   //println( i + " level " + level[i] );

 }
     
//forse è meglio fare il check del livello solo per i nuovi cerchi da generare
//in questo modo l'interfaccia risulta più fluida
//vedi circles1

       
  for(i=0; i < N_CIRCLE; i++) {
    if(level[i] > MIN_LEVEL  || circles[i].size() != 1)
      check(circles[i]); 
  }
      
  for(i=0; i < N_CIRCLE; i++) {
    frequenz = (int)(MAX_FREQ/frequency[i]);
    if(pos % frequenz == 0){
      if(level[i] > MIN_LEVEL){
        circles[i].add(new Circle(i));
      }
    }
  }

  //noFill();
  //noStroke();
  if (pos > MAX_POS) {
    pos = 0;
  }
  
  //saveFrame();
}



class Circle { 
  
  float id=id_VALUE;
  float xpos;
  float ypos;
  //float tempXspeed
  float plus=0;
  // The Constructor is defined with arguments.
  Circle( int index) { 
    stroke(255);  
    xpos = CIRCLE[index][0];
    ypos = CIRCLE[index][1];

    id_VALUE++;

  }

  void display() {
    ellipse(xshift+xpos,yshift+ypos,plus,plus);
  }

  int growth() {
    if (plus > MAX_POS) {
      return -1;
    }
      plus++;
      return 0;
  }

}


class Camera {
  PVector pos; //Camera's position 
  int zoom;
  //The Camera should sit in the top left of the window

  Camera() {
    pos = new PVector(0, 0);
    //You should play with the program and code to see how the staring position can be changed
    zoom = 0;
  }

  void draw() {

    if (keyPressed) {
      if (key == 'w') pos.y -= 1;
      if (key == 's') pos.y += 1;
      if (key == 'a') pos.x -= 1;
      if (key == 'd') pos.x += 1;
      if (key == 'p'){ 
        zoom += 1;
        pos.y += 20;
        pos.x += 30;
      }
      if (key == 'l') {
        zoom -= 1;
        pos.y -= 20;
        pos.x -= 30;
      }
    }
  }
}

Circle circle;
int ix;
void check (ArrayList circles)
{

   
   for (ix = circles.size()-1; ix >= 0; ix--) { 
       circle = (Circle) circles.get(ix);
      if(circle.growth()==-1){
        circles.remove(ix);
      }else{
          smooth();
          circle.display();
      }
    }
}