class Faucet {
 void drawFaucet(){
    background(255,255,255);
    int Fx = 450;
    int Fy = 500;
    image(faucet, Fx,Fy*(-0.1), Fx, Fy);
    fill(0,0,0);
    stroke(0);
    strokeWeight(4);
    line(0,428,width,428);
 }
}
