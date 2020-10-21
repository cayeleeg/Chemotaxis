Bacteria [] bb = new Bacteria[100];
void setup() {
  size(600, 600);
  background(255);
  for (int i =0; i < bb.length; i++) {
    bb[i] = new Bacteria();
  }
}
void draw() {
  background(255);
  for (int i = 0; i <bb.length; i++) {
    bb[i].move();
    bb[i].show();
  }
}
class Bacteria {
  int myX, myY, myColor, mySpeed, mySize;
  Bacteria() {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    mySize = (int)(Math.random()*20)+10;
    //mySpeed = mySize/((int)(Math.random()*20)+1);
    myColor = color((int)(Math.random()*225), (int)(Math.random()*225), (int)(Math.random()*225));
  }
  void move() {
    myX = myX + (int)(Math.random()*20)-8;
    myY = myY + (int)(Math.random()*20)-10;
    if (mouseX > myX) {
      myX = myX + mySize/((int)(Math.random()*10)+5);
    }
    if (mouseX < myX) {
      myX = myX - mySize/((int)(Math.random()*10)+5);
    }
    if (mouseY > myY) {
      myY = myY + mySize/((int)(Math.random()*10)+5);
    }
    if (mouseY < myY) {
      myY = myY - mySize/((int)(Math.random()*10)+5);
    }
  }
  void show() {
    stroke(myColor);
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
