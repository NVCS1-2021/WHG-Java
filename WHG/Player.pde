public class Player {
  private int x, y, vx, vy, hp, score;
  private final int SPEED = 5, SIZE = 20;
  
  public Player(int x, int y) {
    hp = 0;
    score = 0;
    this.x = x;
    this.y = y;
  }
  
  public void show() {
    fill(30,30,255);
    rect(x,y,SIZE,SIZE);
  }
  
  public void move() {
    y += vy;
  }
}
