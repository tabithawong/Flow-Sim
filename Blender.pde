class Blender {
  void drawBlender(){
    fill(0,0,0);
    quad((width/2)-150,height,width/2-100,600,(width/2)+100,600,(width/2)+150,height);
    fill(228,246,248);
    noStroke();
    quad(350,150,400,600,600,600,650,150);
    }
  }
