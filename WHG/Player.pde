public class Player {
  private PVector pos, vel;
  private int hp, score;
  private final int SPEED = 5, SIZE = 20;
  
  public Player(int x, int y) {
    hp = 0;
    score = 0;
    pos = new PVector(x,y);
    vel = new PVector(0,0);
  }
  
  public void show() {
    fill(30,30,255);
    rect(pos.x,pos.y,SIZE,SIZE);
  }
  
  public void move() {
    pos.add(vel);
  }
}
