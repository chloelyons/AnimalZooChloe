class Pumpkin {
 color pumpkinColor;
 color pumpkinStrokeColor;
 color stemColor;
 color faceColor;
 color faceStrokeColor;
 int xLoc;
 int yLoc;
 int size;
 
 public Pumpkin(color pc, color psc, color sc, color fc, color fsc, int x, int y, int size) {
   this.pumpkinColor = pc;
   this.pumpkinStrokeColor = psc;
   this.stemColor = sc;
   this.faceColor = fc;
   this.faceStrokeColor = fsc;
   this.xLoc = x;
   this.yLoc = y;
   this.size = size;
 }
 
 public void draw() {
   strokeWeight(3);
   stroke(pumpkinStrokeColor);
   rectMode(CENTER);
   fill(stemColor);
   rect(xLoc, yLoc - 75, 50 * size, 60 * size);
   fill(pumpkinColor);
   ellipse(xLoc - 60, yLoc, 35 * size, 100 * size);
   ellipse(xLoc + 60, yLoc, 35 * size, 100 * size);
   ellipse(xLoc - 35, yLoc, 50 * size, 125 * size);
   ellipse(xLoc + 35, yLoc, 50 * size, 125 * size);
   ellipse(xLoc, yLoc, 75 * size, 150 * size);
   stroke(faceStrokeColor);
   fill(faceColor);
   ellipse(xLoc - 17, yLoc - 20, 15 * size, 15 * size);
   ellipse(xLoc + 17, yLoc - 20, 15 * size, 15 * size);
   ellipse(xLoc, yLoc + 20, 20 * size, 40 * size);
 }
 
 void move(int x, int y) {
   this.xLoc = x;
   this.yLoc = y;
 }
}
