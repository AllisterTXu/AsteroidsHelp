public class Star
{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*851);
    myY = (int)(Math.random()*851);
  }

  public void show()
  {
    fill((int)((Math.random()*256)+100), (int)((Math.random()*256)+100), (int)((Math.random()*256)+100));
    noStroke();
    ellipse(myX, myY, 2, 2);
  }
}
