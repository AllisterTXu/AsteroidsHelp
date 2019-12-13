class SpaceShip extends Floater  
{
  public SpaceShip()
  {
    corners = 9;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]= -6;
    yCorners[0] = -10;
    xCorners[1]= -10;
    yCorners[1] = -10;
    xCorners[2]= -10;
    yCorners[2] = -8;
    xCorners[3]= -8;
    yCorners[3] = -8;
    xCorners[4]= -8;
    yCorners[4] = 8;
    xCorners[5]= -10;
    yCorners[5] = 8;
    xCorners[6]= -10;
    yCorners[6] = 10;
    xCorners[7]= -6;
    yCorners[7] = 10;
    xCorners[8]= 16;
    yCorners[8] = 0;

    myCenterX = 425;
    myCenterY = 425;

    myDirectionX = 0;
    myDirectionY = 0;

    myColor = color(255);

    myPointDirection = 0;
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
}
