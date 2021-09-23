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
    if (canMove())
      pos.add(vel);
  }
  
  public boolean canMove() {
    boolean canMove;
    PVector newPos = PVector.add(pos, vel);
    if (newPos.y < world.MARGIN || newPos.y + SIZE > world.size.y + world.MARGIN || newPos.x < world.MARGIN) {
      canMove = false;
    }
    else {
      canMove = true;
    }
    return canMove;
  }
  
  public void collides(Enemy e) {
    double dist = PVector.sub(this.pos,e.pos).mag();
    if (dist <= this.SIZE / 2 + e.SIZE / 2) {
      hp--;
      if (hp <= 0) {
        youLose();
      }
      System.out.println("HP: "+hp);
    }
  }
  
  private void youLose() {
    textAlign(CENTER,CENTER);
    textSize(48);
    text("GAME OVER!",width/2,height/2);
    pos = new PVector(50,height/2);
    hp = 50;
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
    if (this.pos.x >= f.pos.x && score >= 10) {
      textAlign(CENTER,CENTER);
      textSize(48);
      text("You win!",width/2,height/2);
      noLoop();
    }
  }
}
