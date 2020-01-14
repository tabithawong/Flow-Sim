class Substance {
  float vsco;
  float speed;
  boolean isstopped;
  int type;
  color colour;

  Substance(float v, float s, boolean i) {
    this.vsco = v;
    this.speed = s;
    this.isstopped = i;
  }

  void setcolour() {
      color[] defaultlist = {color(255,182,193), color(125),color(173,216,230)};
      color[] colourlist = {color(153, 204, 255), color(255, 153, 255), color(0, 204, 102), color(204, 0, 0), color(255, 178, 102), color(255, 255, 153)};
      if (hot == true){
        this.colour = color(255,112,52);
      }
      else{
        if (index == 0){
          this.colour = defaultlist[mode];
        }
        else{
          this.colour = colourlist[index-1];
        }
      } 
    }

  void drawSubstance(int mode){
    fill(sub.colour);
    if (mode == 0){
      quad(360,250,400,600,600,600,640,250);
    }
    else if (mode == 1){
      stroke(sub.colour);
      strokeWeight(8);
      line(480,555,495,480);
      //some sine wave that looks almost straight
    }
    else{
      stroke(sub.colour);
      int xr = 475;
      int yr = 293;
      rect(xr,yr,40,780);
      stroke(65,105,225);
      int xgap = 5;
      int ygap = 15;
      int lengthofline = 800;
      //laminae
      for (int p = 0; p < 4; p++){
        line(xr+p*xgap,yr+p*ygap,xr+p*xgap,yr+lengthofline);
        xr = xr+p*xgap;
        yr = yr+p*ygap;
      }
    }
  }
}
