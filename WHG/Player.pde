public class Player {
  private PVector pos, vel;
  private int hp, score;
  private final int SPEED = 5, SIZE = 20;
  
  public Player(int x, int y) {
    hp = 100;
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
  
  public void collides(Enemy e) {
    double dist = PVector.sub(this.pos,e.pos).mag();
    if (dist <= this.SIZE / 2 + e.SIZE / 2) {
      hp--;
      System.out.println("HP: "+hp);
    }
  }
}
