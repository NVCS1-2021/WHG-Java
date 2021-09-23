public class Enemy {
  private PVector pos, vel, acc;
  private final int SIZE = 10, SPEED = 5;
  
  public Enemy(int x, int y) {
    pos = new PVector(x,y);
    vel = new PVector(0,SPEED);
  }
  
  public void show() {
    fill(255,0,0);
    circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    pos.add(vel);
  }
  
  public void collideWorldBounds(World w) {
    if (pos.y + SIZE/2 >= w.size.y) {
      PVector bounce = new PVector(0,-SPEED);
      vel.add(bounce);
    }
    if (pos.y - SIZE/2 <= w.MARGIN) {
      PVector bounce = new PVector(0,SPEED);
      vel.add(bounce);
    }
  }
}
