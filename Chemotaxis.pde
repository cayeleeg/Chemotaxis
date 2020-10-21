Bacteria [] bb = new Bacteria[100];
//declare bacteria variables here
void setup() {
  size(600, 600);
  background(255);
  for (int i =0; i < bb.length; i++) {
    bb[i] = new Bacteria(250,250);
  }
}
//initialize bacteria variables here   
void draw() {
  background(255);
  for (int i = 0; i <bb.length; i++) {
    bb[i].move();
    bb[i].show();
  }
}
//move and show the bacteria   
class Bacteria {
  int myX, myY, myColor, mySpeed, mySize;
  Bacteria(int x, int y) {
    myX = x;
    myY = y;
    mySize = (int)(Math.random()*30)+20;
    //mySpeed = mySize/((int)(Math.random()*20)+1);
    myColor = color((int)(Math.random()*225), (int)(Math.random()*225), (int)(Math.random()*225));
  }
  void move() {
    myX = myX + (int)(Math.random()*20)-8;
    myY = myY + (int)(Math.random()*20)-8;
    if (mouseX > myX) {
      myX = myX + mySize/((int)(Math.random()*20)+10);
    }
    if (mouseX < myX) {
      myX = myX - mySize/((int)(Math.random()*20)+10);
    }
    if (mouseY > myY) {
      myY = myY + mySize/((int)(Math.random()*20)+10);
    }
    if (mouseY < myY) {
      myY = myY - mySize/((int)(Math.random()*20)+10);
    }
  }
  void show() {
    stroke(myColor);
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}

  
