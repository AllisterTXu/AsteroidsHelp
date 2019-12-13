public class Rocket extends Floater
{
  public Rocket()
  {
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]= -13;
    yCorners[0] = -7;
    xCorners[1]= -13;
    yCorners[1] = 7;      
    xCorners[2]= -20;
    yCorners[2] = 0;

    myCenterX = 425;
    myCenterY = 425;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    myColor = color(255, 0, 0);
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
