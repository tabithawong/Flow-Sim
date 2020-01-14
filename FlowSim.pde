import g4p_controls.*;
PImage candle, faucet;
int mode;
int v;
int s;
int index;
boolean isstopped;
boolean ispulsed;
boolean hot;
Substance sub;
void setup(){
  size(1000,800);
  mode = 1;
  candle = loadImage("candle.jpg");
  faucet = loadImage("faucet.jpg");
  createGUI();
}

void draw(){
  createMech();
  createSub();
  if (isstopped == false){
    pause.setText("Pause");
  }
  else{
    pause.setText("Resume");
  }
  hotchange();
}

void gridLines(boolean candle){
  color linecolor;
  if (candle == false){
    linecolor = color(0);
  }
  else {
    linecolor = color(255,255,255);
  }
  fill(linecolor);
  stroke(linecolor);
  strokeWeight(1);
  int step = 100;
  for (int i = 0; i<width/step; i ++){
    line(i*step, 0, i*step, height);
    text(i*step, 0, i*step);
    text(i*step, i*step-20, 10);
    text(1000, 980, 10);
    line(0,i*step,width,i*step);
  }
}

void createMech(){
  if (mode == 0){
    background(255,255,255);
  //  gridLines(false);
    Blender b = new Blender();
    b.drawBlender();
  }
  else if (mode == 1){
    Candle c = new Candle();
    c.drawCandle();
  //  gridLines(true);
  }
  else{
    Faucet f = new Faucet();
    f.drawFaucet();
   // gridLines(false);
  }
}

void createSub(){
  sub = new Substance(v,s,false);
  sub.setcolour();
  sub.drawSubstance(mode);
}
void hotchange(){
  if (hot == true){
    temp.setText("Change to Water");
  }
  else{
    temp.setText("Change to Lava");
  }
}
