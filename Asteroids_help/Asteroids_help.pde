//your variable declarations here
SpaceShip bob;
Star [] spaceStars = new Star[250];
Rocket rocket;
ArrayList <Asteroids> asteroidBelt;
ArrayList <Bullet> bullets;
int score = 0;
int health = 100;
Health pack;
boolean gameOver = false;
boolean win = false;

public void setup() {
  size(850, 850);
  bob = new SpaceShip();
  rocket = new Rocket();
  pack = new Health();
  for (int i = 0; i < spaceStars.length; i ++) {
    spaceStars[i] = new Star();
  }
  asteroidBelt = new ArrayList <Asteroids>(); 
  for (int i = 0; i < 20; i ++) {
    asteroidBelt.add(i, new Asteroids());
  }
  bullets = new ArrayList <Bullet>();
}

public void draw() {
  if (gameOver == true && win == false)
  {
    fill(0);
    rect(-5, -5, 1000, 1000);
    fill(255);
    textAlign(CENTER);
    textSize(80);
    text("Game Over", 425, 425);
    text("Score: " + score, 425, 500);
  } else if (win == true)
  {
    fill(0);
    rect(0, 0, 1000, 1000);
    fill(255);
    textAlign(CENTER);
    textSize(90);
    text("You win!", 425, 425);
    textSize(75);
    text("Score: " + score, 425, 525);
  } else {
    background(0);
    rocket.move();
    for (int i = 0; i < spaceStars.length; i ++)
    {
      spaceStars[i].show();
    }
    bob.move();
    bob.show(); 
    for (int nI = 0; nI < asteroidBelt.size(); nI++)
    {
      asteroidBelt.get(nI).show();
      asteroidBelt.get(nI).move();
    }
    //ship colliding with asteroids
    for (int nI = asteroidBelt.size()-1; nI >= 0; nI--)
    {
      if (dist(bob.getX(), bob.getY(), asteroidBelt.get(nI).getX(), asteroidBelt.get(nI).getY()) < 20)
      {
        health = health - 10;
        asteroidBelt.remove(nI);
      }
    }
    int healthColor;
    if (dist(bob.getX(), bob.getY(), pack.getX(), pack.getY()) < 20)
    {
      health = health + 20;
      pack.setX(900);
      pack.setY(900);
      pack.setDirectionX(0);
      pack.setDirectionY(0);
    }
    //bullet colliding with asteroids
    for (int aI = asteroidBelt.size()-1; aI >= 0; aI--)
    {
      for (int bI = bullets.size() - 1; bI >= 0; bI --)
      {
        if (dist(bullets.get(bI).getX(), bullets.get(bI).getY(), asteroidBelt.get(aI).getX(), asteroidBelt.get(aI).getY()) < 15)
        {
          score = score + 10;
          bullets.remove(bI);
          if (asteroidBelt.get(aI).getColor() == color(220))
          {
            asteroidBelt.get(aI).setColor(150);
          } else if (asteroidBelt.get(aI).getColor() == color(150))
          {
            asteroidBelt.get(aI).setColor(80);
          } else
          {
            asteroidBelt.remove(aI);
          }
          break;
        }
      }
    }
    for (int nI = 0; nI < bullets.size(); nI++)
    {
      bullets.get(nI).show();
      bullets.get(nI).move();
    }
    fill(255);
    textSize(24);
    int shipColor;
    text("Score: " + score, 10, 30);
    if (health > 50 )
    {
      shipColor = color(50, 255, 50);
    } else if (health >= 30)
    {
      shipColor = color(255, 255, 0);
    } else
    {
      shipColor = color(255, 50, 50);
    }
    fill(shipColor);
    text("Health: " + health, 705, 30);

    if (health <= 30)
    {
      pack.show();
      pack.move();
    }
    if (health <= 0)
    {
      gameOver = true;
    }

    if (asteroidBelt.size() == 0)
    {
      win = true;
    }
  }
  if (dIsPressed == true)
  {
    bob.rotate(10);
    rocket.rotate(10);
  }
  if (aIsPressed == true)
  {
    bob.rotate(-10);
    rocket.rotate(-10);
  }
  if (wIsPressed == true)
  {
    rocket.show();    
    rocket.accelerate(0.1);    
    bob.accelerate(0.1);
  }
}
boolean dIsPressed;
boolean aIsPressed;
boolean wIsPressed;
public void keyPressed()
{
  if (gameOver == false)
  {
    if (key == 'a')
    {
      aIsPressed = true;
    }
    if (key == 'd')
    {
      dIsPressed = true;
    }
    if (key == 'w')
    {
      wIsPressed = true;
    }
    if (key == 'h')
    {
      int randPointDirection = (int)(Math.random()*360);
      int randSetX = (int)(Math.random()*801);
      int randSetY = (int)(Math.random()*801);     
      bob.setDirectionX(0);
      bob.setDirectionY(0);    
      bob.setPointDirection(randPointDirection);
      bob.setX(randSetX);
      bob.setY(randSetY);
      rocket.setDirectionX(0);
      rocket.setDirectionY(0);    
      rocket.setPointDirection(randPointDirection);
      rocket.setX(randSetX);
      rocket.setY(randSetY);
    }
    if (key == 's')
    {
      bob.accelerate(-0.5);
      rocket.accelerate(-0.5);
    }
    if (key == ' ')
    {
      for (int i = 0; i < 1; i++)
      {
        bullets.add(i, new Bullet(bob));
      }
    }
  }
}

public void keyReleased()
{
  if (key == 'd')
  {
    dIsPressed = false;
  } 
  if (key == 'a')
  {
    aIsPressed = false;
  }
  if (key == 'w')
  {
    wIsPressed = false;
  }
}
