PImage parrot;
PImage arrow;
Parrot p1= new Parrot();
Arrow a1 = new Arrow();
void setup()
{
  
  size(900,900);
  parrot = loadImage("Parrot.png");
  arrow = loadImage("Arrow.png");
}

void draw()
{
  background(#FFFFFF);
  p1.update();
  a1.update();
}
class Parrot
{
  void update()
  {
    image(parrot,mouseX,mouseY,100,100);
  }
}

class Arrow
{
  void update()
  {
   float imgx = 600;
   float imgy = 600;
   float angle = atan2(mouseY - imgy, mouseX - imgx);
   translate(imgx, imgy);
   rotate(angle);
   imageMode(CENTER);
   image(arrow, 0, 0, 100, 100);
  }
}
