Camera worldCamera;

ArrayList<Circle>[] circles;
int frequenz;

final int N_CIRCLE = 24;

final int[][] CIRCLE12 = {        
        {200, 100},
        {250, 113},
        {287, 150},
        {300, 200},
        {287, 250},
        {250, 287},
        {200, 300},
        {150, 287},
        {113, 250},
        {100, 200},
        {113, 150},
        {150, 113}};
        
final int[][] CIRCLE6 = {        
        {200, 100},
        {287, 150},
        {287, 250},
        {200, 300},
        {113, 250},
        {113, 150}};

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
  size(800, 600,P2D);
  //size(1280, 768,P2D);
  frameRate(35);
  stroke(255);  
  strokeWeight(0.1);
  scale (6+worldCamera.zoom); //3.5
  translate(-585-worldCamera.pos.x, -350-worldCamera.pos.y);
    
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

//int id_VALUE = 0;

int pos=0;

final float MIN_LEVEL = -70.000;
final float MAX_LEVEL = 6.000;

final int MAX_POS = 500; //1000; //500;
final int MAX_FREQ = 10000;


float[] frequency = new float[24];
float[] level = new float[24];
  
String lines[];
String[] list;
  
  
void draw() {
  clear();
  scale (6+worldCamera.zoom); //3.5
  translate(-585-worldCamera.pos.x, -350-worldCamera.pos.y);
  worldCamera.draw();
  pos++;
 
 //update from file every 100 frames
 //if(pos == 1){
 lines = loadStrings("a.txt");

 for (i=0; i < lines.length; i++) {

   list = split(lines[i], ' ');
   
   frequency[i] = float(list[0]);
   level[i] = float(list[1]);
   //println( i + " frequency " + frequency[i] );
   //println( i + " level " + level[i] );

 }
 //}
     
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
    pos = 1;
  }

  //saveFrame();
}



class Circle { 
  
  //float id=id_VALUE;
  float xpos;
  float ypos;
  //float tempXspeed
  float plus=0;
  // The Constructor is defined with arguments.
  Circle( int index) { 
    //stroke(255);  
    xpos = CIRCLE[index][0];
    ypos = CIRCLE[index][1];

    //id_VALUE++;

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
        //smooth();
        circle.display();
    }
  }
}