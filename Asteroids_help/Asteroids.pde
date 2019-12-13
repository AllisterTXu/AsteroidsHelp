public class Asteroids extends Floater
{
  private int rotSpeed;
  public Asteroids()
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = (int)(Math.random()*9)+6;
    yCorners[1] = -10;
    xCorners[2] = (int)(Math.random()*11)+9;
    yCorners[2] = 0;
    xCorners[3] = (int)(Math.random()*8)+5;
    yCorners[3] = (int)(Math.random()*10)+9;
    xCorners[4] = -11;
    yCorners[4] = (int)(Math.random()*9)+7;
    xCorners[5] = -13;
    yCorners[5] = 0;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myDirectionX = (Math.random()*3)-1;
    myDirectionY = (Math.random()*3)-1;
    myColor = color(220);
    myPointDirection = (int)(Math.random()*360);
    rotSpeed = (int)((Math.random()*2)-3);
  }
  public void setColor(int x) {
    myColor = color(x);
  }
  public int getColor() {
    return myColor;
  }

  public void setX(int x) {
    myCenterX = x;
  }    
  public int getX() {
    return (int)myCenterX;
  }   
  public void setY(int y) {
    myCenterY = y;
  }    
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }

  public void move()
  {
    rotate(rotSpeed);
    super.move();
  }
}
