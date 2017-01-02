void setup() {
  size(1280, 768);
  frameRate(2000);
  background(255);
  stroke(0);  
  
  //loop();
  //noFill();
}
int xshift = 450;
int yshift = 200;

int xshift1 = 800;
int yshift1 = 200;

int xshift2 = 100;
int yshift2 = 200;
int pos = 0;

final float MIN_LEVEL = -70.000;
final float MAX_LEVEL = 6.000;

final int MAX_POS = 2000;



void draw() {
  pos++;

  float[] frequency = new float[24];
  float[] level = new float[24];
  
  fill(255, 255, 255, 5);
  
  //ellipse(200,200,pos,pos);
  
 String lines[] = loadStrings("a.txt");


 for (int i=0; i < lines.length; i++) {

   String[] list = split(lines[i], ' ');
   
   frequency[i] = float(list[0]);
   level[i] = float(list[1]);
   println( i + " frequency " + frequency[i] );
   println( i + " level " + level[i] );


 }
  
  if(level[0] == MIN_LEVEL){
    ellipse(xshift+200,yshift+300,pos,pos);
    stroke(255);
  }
  else{
    stroke(0);
    ellipse(xshift+200,yshift+300,pos,pos);
  }
  
  if(level[1] == MIN_LEVEL){
  stroke(255);
  ellipse(xshift+300,yshift+200,pos,pos);
  }else{
  stroke(0);
  ellipse(xshift+300,yshift+200,pos,pos);
  }
  
  
  if(level[2] == MIN_LEVEL){
    ellipse(xshift+250,yshift+287,pos,pos);
    stroke(255);
  }else{
    stroke(0);
    ellipse(xshift+250,yshift+287,pos,pos);
  }
  
  if(level[3] > MIN_LEVEL)
  ellipse(xshift+287,yshift+250,pos,pos);
  
  if(level[4] > MIN_LEVEL)
  ellipse(xshift+226,yshift+296,pos,pos);
  if(level[5] > MIN_LEVEL)
  ellipse(xshift+296,yshift+226,pos,pos);
  
  if(level[6] > MIN_LEVEL)
  ellipse(xshift+271,yshift+129,pos,pos);
  if(level[7] > MIN_LEVEL)
  ellipse(xshift+271,yshift+271,pos,pos);
  
  if(level[8] > MIN_LEVEL)
  ellipse(xshift+287,yshift+150,pos,pos);
  if(level[9] > MIN_LEVEL)
  ellipse(xshift+150,yshift+287,pos,pos);

  if(level[10] > MIN_LEVEL)
  ellipse(xshift+296,yshift+174,pos,pos);
  if(level[11] > MIN_LEVEL)
  ellipse(xshift+174,yshift+296,pos,pos);
  
  
  
  
  
  
  //ellipse(xshift+129,yshift+271,pos,pos);
  
  //ellipse(xshift+103,yshift+174,pos,pos);
  //ellipse(xshift+174,yshift+103,pos,pos);
  
  //ellipse(xshift+113,yshift+150,pos,pos);  
  //ellipse(xshift+150,yshift+113,pos,pos);
  
  //ellipse(xshift+226,yshift+103,pos,pos);
  //ellipse(xshift+103,yshift+226,pos,pos);
  
  //ellipse(xshift+250,yshift+113,pos,pos);
  //ellipse(xshift+113,yshift+250,pos,pos);
  
  //ellipse(xshift+100,yshift+200,pos,pos);
  //ellipse(xshift+200,yshift+100,pos,pos);
 
  //ellipse(xshift+129,yshift+129,pos,pos);

  //////////////////////////////////////
  //ellipse(xshift1+200,yshift1+300,pos,pos);
  //ellipse(xshift1+100,yshift1+200,pos,pos);
  //ellipse(xshift1+200,yshift1+100,pos,pos);
  //ellipse(xshift1+300,yshift1+200,pos,pos);
  //ellipse(xshift1+271,yshift1+271,pos,pos); 
  //ellipse(xshift1+250,yshift1+287,pos,pos);
  //ellipse(xshift1+287,yshift1+250,pos,pos);
  //ellipse(xshift1+226,yshift1+296,pos,pos);
  //ellipse(xshift1+296,yshift1+226,pos,pos);
  //ellipse(xshift1+271,yshift1+129,pos,pos);
  //ellipse(xshift1+287,yshift1+150,pos,pos);
  //ellipse(xshift1+150,yshift1+287,pos,pos);
  //ellipse(xshift1+296,yshift1+174,pos,pos);
  //ellipse(xshift1+174,yshift1+296,pos,pos);
  //ellipse(xshift1+103,yshift1+174,pos,pos);
  //ellipse(xshift1+174,yshift1+103,pos,pos);
  //ellipse(xshift1+113,yshift1+150,pos,pos);  
  //ellipse(xshift1+150,yshift1+113,pos,pos);
  //ellipse(xshift1+129,yshift1+129,pos,pos);
  //ellipse(xshift1+129,yshift1+271,pos,pos);
  //ellipse(xshift1+174,yshift1+296,pos,pos);
  //ellipse(xshift1+296,yshift1+174,pos,pos); 
  //ellipse(xshift1+226,yshift1+103,pos,pos);
  //ellipse(xshift1+103,yshift1+226,pos,pos);
  //ellipse(xshift1+250,yshift1+113,pos,pos);
  //ellipse(xshift1+113,yshift1+250,pos,pos);
  
  //////////////////////
  //ellipse(xshift2+200,yshift2+300,pos,pos);
  //ellipse(xshift2+100,yshift2+200,pos,pos);
  //ellipse(xshift2+200,yshift2+100,pos,pos);
  //ellipse(xshift2+300,yshift2+200,pos,pos);
  //ellipse(xshift2+271,yshift2+271,pos,pos); 
  //ellipse(xshift2+250,yshift2+287,pos,pos);
  //ellipse(xshift2+287,yshift2+250,pos,pos);
  //ellipse(xshift2+226,yshift2+296,pos,pos);
  //ellipse(xshift2+296,yshift2+226,pos,pos);
  //ellipse(xshift2+271,yshift2+129,pos,pos);
  //ellipse(xshift2+287,yshift2+150,pos,pos);
  //ellipse(xshift2+150,yshift2+287,pos,pos);
  //ellipse(xshift2+296,yshift2+174,pos,pos);
  //ellipse(xshift2+174,yshift2+296,pos,pos);
  //ellipse(xshift2+103,yshift2+174,pos,pos);
  //ellipse(xshift2+174,yshift2+103,pos,pos);
  //ellipse(xshift2+113,yshift2+150,pos,pos);  
  //ellipse(xshift2+150,yshift2+113,pos,pos);
  //ellipse(xshift2+129,yshift2+129,pos,pos);
  //ellipse(xshift2+129,yshift2+271,pos,pos);
  //ellipse(xshift2+174,yshift2+296,pos,pos);
  //ellipse(xshift2+296,yshift2+174,pos,pos); 
  //ellipse(xshift2+226,yshift2+103,pos,pos);
  //ellipse(xshift2+103,yshift2+226,pos,pos);
  //ellipse(xshift2+250,yshift2+113,pos,pos);
  //ellipse(xshift2+113,yshift2+250,pos,pos);
  
  //noFill();
  //noStroke();
  if (pos > MAX_POS) {
    pos = 0;
  }
}

//PrintWriter positions; 
//int cycles = 100; //number of circles 


//void setup() { 
//  size(600, 600); 
//  smooth(); 
//  background(0); 
//  noStroke(); 
//  fill(226); 
  
//  positions = createWriter("positions.txt"); 
//  noLoop(); 
//} 

//void draw() { 
//  for (int i = 0; i < cycles; i++) { 
//    int xLength = int(random(25,25)); 
//    int yHeight = int(random(25,25)); 
//    int xPos = int(random(0 + xLength, width - xLength)); 
//    int yPos = int(random(0 + yHeight, width - yHeight)); 
//    ellipse(xPos, yPos, xLength, yHeight); 
//    positions.println(xLength + " " + yHeight + " " + xPos + " " + yPos); 
//  } 
//  positions.flush(); 
//  positions.close(); 
//} 