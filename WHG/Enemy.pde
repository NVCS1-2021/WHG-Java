public class Enemy {
  private PVector pos, vel, acc;
  private final int SIZE = 10, SPEED = 5;
  
  public Enemy(int x, int y) {
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(255,0,0);
    circle(pos.x,pos.y,SIZE);
  }
}
