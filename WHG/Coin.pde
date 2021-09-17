public class Coin {
  private PVector pos;
  private final int SIZE = 20;
  
  public Coin(int x, int y) {
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(100,84,0);
    circle(pos.x,pos.y,SIZE);
  }
}
