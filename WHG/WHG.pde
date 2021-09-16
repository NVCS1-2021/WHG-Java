Player player;

public void setup() {
  size(800,400);
  player = new Player(50,height/2);
}

public void draw() {
  background(200);
  player.show();
  player.move();
}

public void keyPressed() {
  if (key == 'w') {
    player.vy = -player.SPEED;
  }
}
