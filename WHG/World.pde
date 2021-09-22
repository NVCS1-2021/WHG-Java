public class World {
  private PVector pos, size;
  private final int MARGIN = 30;
  
  public World() {
    size = new PVector(width-MARGIN*2,height-MARGIN*2);
    pos = new PVector(MARGIN,MARGIN);
  }
  
  public void show() {
    int row = 0, col = 0;
    final int SCALE = 20,
      MAX_COLS = (int) (size.x / SCALE),
      MAX_ROWS = (int) (size.y / SCALE);
    for (int i = 0; i < MAX_COLS * MAX_ROWS; i++) {
      if (i % 2 == 0) 
        fill(192);
      else
        fill(220);
      square(col*SCALE+pos.x,row*SCALE+pos.y,SCALE);
      col++;
      if (col >= MAX_COLS) {
        row++;
        col = 0;
      }      
    }
  }
}
