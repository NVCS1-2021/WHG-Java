public class World {
  private PVector pos, size;
  private final int MARGIN = 30;
  
  public World() {
    size = new PVector(width-MARGIN*2,height-MARGIN*2);
    pos = new PVector(MARGIN,MARGIN);
  }
  
  public void show() {
    int row = 0, col = 0;
    final int SCALE = 20;
    for (int i = 0; i < 100; i++) {
      fill(80);
      square(row*SCALE,col*SCALE,SCALE);
      if (col > 3)
        row++;
      col++;
    }
  }
}
