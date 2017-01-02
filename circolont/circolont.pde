Camera worldCamera;

Circle circle;
int i;
ArrayList circles0;
ArrayList circles1;
ArrayList circles2;
ArrayList circles3;
ArrayList circles4;
ArrayList circles5;
ArrayList circles6;
ArrayList circles7;
ArrayList circles8;
ArrayList circles9;
ArrayList circles10;
ArrayList circles11;
ArrayList circles12;
ArrayList circles13;
ArrayList circles14;
ArrayList circles15;
ArrayList circles16;
ArrayList circles17;
ArrayList circles18;
ArrayList circles19;
ArrayList circles20;
ArrayList circles21;
ArrayList circles22;
ArrayList circles23;

void setup() {
  worldCamera = new Camera();
  size(1280, 768);
  //frameRate(1000000000);
  stroke(255);  
  strokeWeight(0.1);
circles0= new ArrayList();
circles1 = new ArrayList();  
circles2= new ArrayList();
circles3= new ArrayList();
circles4= new ArrayList();
circles5= new ArrayList();
circles6= new ArrayList();
circles7= new ArrayList();
circles8= new ArrayList();
circles9= new ArrayList();
circles10= new ArrayList();
circles11= new ArrayList();
circles12= new ArrayList();
circles13= new ArrayList();
circles14= new ArrayList();
circles15= new ArrayList();
circles16= new ArrayList();
circles17= new ArrayList();
circles18= new ArrayList();
circles19= new ArrayList();
circles20= new ArrayList();
circles21= new ArrayList();
circles22= new ArrayList();
circles23= new ArrayList();

        circles0.add(new  Circle(200, 100));
        circles1.add(new  Circle(226, 103)); 
        circles2.add(new  Circle(250, 113));
        circles3.add(new  Circle(271, 129));
        circles4.add(new  Circle(287, 150));
        circles5.add(new  Circle(296, 174));
        circles6.add(new  Circle(300, 200));
        circles7.add(new  Circle(296, 226)); 
        circles8.add(new  Circle(287, 250));
        circles9.add(new  Circle(271, 271));
        circles10.add(new Circle(250, 287));
        circles11.add(new Circle(226, 296));
        circles12.add(new Circle(200, 300));
        circles13.add(new Circle(174, 296)); 
        circles14.add(new Circle(150, 287));
        circles15.add(new Circle(129, 271));
        circles16.add(new Circle(113, 250));
        circles17.add(new Circle(103, 226));
        circles18.add(new Circle(100, 200));
        circles19.add(new Circle(103, 174)); 
        circles20.add(new Circle(113, 150));
        circles21.add(new Circle(129, 129));
        circles22.add(new Circle(150, 113));
        circles23.add(new Circle(174, 103));


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


void draw() {
  clear();
  scale (3.5+worldCamera.zoom);
  translate(-470-worldCamera.pos.x, -290-worldCamera.pos.y);
  worldCamera.draw();
  pos++;

  float[] frequency = new float[24];
  float[] level = new float[24];
  
//diminuire i loop for valutando prima l'arrayList con il maggior numero di cerchi
//poi fare il loop su tutti gli array controllando prima se è diverso da null
  
 String lines[] = loadStrings("a.txt");

 for (int i=0; i < lines.length; i++) {

   String[] list = split(lines[i], ' ');
   
   frequency[i] = float(list[0]);
   level[i] = float(list[1]);
   //println( i + " frequency " + frequency[i] );
   //println( i + " level " + level[i] );

 }
     
//forse è meglio fare il check del livello solo per i nuovi cerchi da generare
//in questo modo l'interfaccia risulta più fluida
//vedi circles1

  if(level[0] > MIN_LEVEL || circles0.size() != 1)
  check(circles0); 
  if(level[1] > MIN_LEVEL || circles1.size() != 1)
  check(circles1);
  if(level[2] > MIN_LEVEL || circles2.size() != 1)
  check(circles2);
  if(level[3] > MIN_LEVEL || circles3.size() != 1)
  check(circles3);
  if(level[4] > MIN_LEVEL || circles4.size() != 1)
  check(circles4);
  if(level[5] > MIN_LEVEL || circles5.size() != 1)
  check(circles5);
  if(level[6] > MIN_LEVEL || circles6.size() != 1)
  check(circles6);
  if(level[7] > MIN_LEVEL || circles7.size() != 1)
  check(circles7);
  if(level[8] > MIN_LEVEL || circles8.size() != 1)
  check(circles8);
  if(level[9] > MIN_LEVEL || circles9.size() != 1)
  check(circles9);
  if(level[10] > MIN_LEVEL || circles10.size() != 1)
  check(circles10);
  if(level[11] > MIN_LEVEL || circles11.size() != 1)
  check(circles11);

  if(level[12] > MIN_LEVEL|| circles12.size() != 1)
  check(circles12);
  if(level[13] > MIN_LEVEL|| circles13.size() != 1)
  check(circles13);
  if(level[14] > MIN_LEVEL|| circles14.size() != 1)
  check(circles14);
  if(level[15] > MIN_LEVEL|| circles15.size() != 1)
  check(circles15);
  if(level[16] > MIN_LEVEL|| circles16.size() != 1)
  check(circles16);
  if(level[17] > MIN_LEVEL|| circles17.size() != 1)
  check(circles17);
  if(level[18] > MIN_LEVEL|| circles18.size() != 1)
  check(circles18);
  if(level[19] > MIN_LEVEL|| circles19.size() != 1)
  check(circles19);
  if(level[20] > MIN_LEVEL|| circles20.size() != 1)
  check(circles20);
  if(level[21] > MIN_LEVEL|| circles21.size() != 1)
  check(circles21);
  if(level[22] > MIN_LEVEL || circles22.size() != 1)
  check(circles22);
  if(level[23] > MIN_LEVEL || circles23.size() != 1)
  check(circles23);
    
  int frequenz = (int)(MAX_FREQ/frequency[0]);
  if(pos % frequenz == 0){
    if(level[0] > MIN_LEVEL)
    circles0.add(new Circle(200, 100));
  }
  frequenz = (int)(MAX_FREQ/frequency[1]);
  if(pos % frequenz == 0){
    if(level[1] > MIN_LEVEL)
    circles1.add(new Circle(226, 103));
  }
  frequenz = (int)(MAX_FREQ/frequency[2]);
  if(pos % frequenz == 0){
    if(level[2] > MIN_LEVEL)
    circles2.add(new  Circle(250, 113));
  }
  frequenz = (int)(MAX_FREQ/frequency[3]);
  if(pos % frequenz == 0){
    if(level[3] > MIN_LEVEL)
    circles3.add(new  Circle(271, 129));
  }
  frequenz = (int)(MAX_FREQ/frequency[4]);
  if(pos % frequenz == 0){
    if(level[4] > MIN_LEVEL)
    circles4.add(new  Circle(287, 150));
  }
  frequenz = (int)(MAX_FREQ/frequency[5]);
  if(pos % frequenz == 0){
    if(level[5] > MIN_LEVEL)
    circles5.add(new  Circle(296, 174));
  }
  frequenz = (int)(MAX_FREQ/frequency[6]);
  if(pos % frequenz == 0){
    if(level[6] > MIN_LEVEL)
    circles6.add(new  Circle(300, 200));
  }
  frequenz = (int)(MAX_FREQ/frequency[7]);
  if(pos % frequenz == 0){
    if(level[7] > MIN_LEVEL)
    circles7.add(new  Circle(296, 226)); 
  }
  frequenz = (int)(MAX_FREQ/frequency[8]);
  if(pos % frequenz == 0){
    if(level[8] > MIN_LEVEL)
    circles8.add(new  Circle(287, 250));
  }
  frequenz = (int)(MAX_FREQ/frequency[9]);
  if(pos % frequenz == 0){
    if(level[9] > MIN_LEVEL)
    circles9.add(new  Circle(271, 271));
  }
  frequenz = (int)(MAX_FREQ/frequency[10]);
  if(pos % frequenz == 0){
    if(level[10] > MIN_LEVEL)
    circles10.add(new Circle(250, 287));
  }
  frequenz = (int)(MAX_FREQ/frequency[11]);
  if(pos % frequenz == 0){
    if(level[11] > MIN_LEVEL)
    circles11.add(new Circle(226, 296));
  }
  frequenz = (int)(MAX_FREQ/frequency[12]);
  if(pos % frequenz == 0){
    if(level[12] > MIN_LEVEL)
    circles12.add(new Circle(200, 300));
  }
  frequenz = (int)(MAX_FREQ/frequency[13]);
  if(pos % frequenz == 0){
    if(level[13] > MIN_LEVEL)
    circles13.add(new Circle(174, 296)); 
  }
  frequenz = (int)(MAX_FREQ/frequency[14]);
  if(pos % frequenz == 0){
    if(level[14] > MIN_LEVEL)
    circles14.add(new Circle(150, 287));
  }
  frequenz = (int)(MAX_FREQ/frequency[15]);
  if(pos % frequenz == 0){
    if(level[15] > MIN_LEVEL)
    circles15.add(new Circle(129, 271));
  }
  frequenz = (int)(MAX_FREQ/frequency[16]);
  if(pos % frequenz == 0){
    if(level[16] > MIN_LEVEL)
    circles16.add(new Circle(113, 250));
  }
  frequenz = (int)(MAX_FREQ/frequency[17]);
  if(pos % frequenz == 0){
    if(level[17] > MIN_LEVEL)
    circles17.add(new Circle(103, 226));
  }
  frequenz = (int)(MAX_FREQ/frequency[18]);
  if(pos % frequenz == 0){
    if(level[18] > MIN_LEVEL)
    circles18.add(new Circle(100, 200));
  }
  frequenz = (int)(MAX_FREQ/frequency[19]);
  if(pos % frequenz == 0){
    if(level[19] > MIN_LEVEL)
    circles19.add(new Circle(103, 174)); 
  }
  frequenz = (int)(MAX_FREQ/frequency[20]);
  if(pos % frequenz == 0){
    if(level[20] > MIN_LEVEL)
    circles20.add(new Circle(113, 150));
  }
  frequenz = (int)(MAX_FREQ/frequency[21]);
  if(pos % frequenz == 0){
    if(level[21] > MIN_LEVEL)
    circles21.add(new Circle(129, 129));
  }
  frequenz = (int)(MAX_FREQ/frequency[22]);
  if(pos % frequenz == 0){
    if(level[22] > MIN_LEVEL)
    circles22.add(new Circle(150, 113));
  }
  frequenz = (int)(MAX_FREQ/frequency[23]);
  if(pos % frequenz == 0){
    if(level[23] > MIN_LEVEL)
    circles23.add(new Circle(174, 103));
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
  Circle(float tempXpos, float tempYpos/*, float tempXspeed*/) { 
    stroke(255);  
    xpos = tempXpos;
    ypos = tempYpos;
    //xspeed = tempXspeed;
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
    //I used the mouse to move the camera
    //The mouse's position is always relative to the screen and not the camera's position
    //E.g. if the mouse is at 1000,1000 then the mouse's position does not add 1000,1000 to keep up with the camera
    //if (mouseX < 100) pos.x-=5;
    //else if (mouseX > width - 100) pos.x+=5;
    // if (mouseY < 100) pos.y-=5;
    //else if (mouseY > height - 100) pos.y+=5;
    //I noticed on the web the program struggles to find the mouse so I made it key pressed
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


void check (ArrayList circles)
{

   for ( i = circles.size()-1; i >= 0; i--) { 
       circle = (Circle) circles.get(i);
      if(circle.growth()==-1){
        circles.remove(i);
      }else{
          smooth();
          circle.display();
      }
    }
}