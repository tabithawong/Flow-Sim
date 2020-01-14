class Faucet {
 void drawFaucet(){
    background(255,255,255);
    int Fx = 450;
    int Fy = 500;
    image(faucet, Fx,Fy*(-0.05), Fx, Fy+90);
    fill(0,0,0);
    stroke(0);
    strokeWeight(4);
    line(0,538,width,538);
 }
}
