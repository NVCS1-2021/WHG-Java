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
  
  public void collides(Coin c) {
    double dist = PVector.sub(this.pos,c.pos).mag();
    if (dist <= this.SIZE / 2 + c.SIZE / 2) {
      score++;
      c.active = false;
      System.out.println("Score: "+score);
    }
  }
  
  public void collides(Finish f) {
    if (this.pos.x >= f.pos.x) {
      textAlign(CENTER,CENTER);
      textSize(48);
      text("You win!",width/2,height/2);
      noLoop();
    }
  }
}
