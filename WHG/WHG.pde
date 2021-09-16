Player player;
Enemy[] enemies = new Enemy[50]; //initialized array

public void setup() {
  size(800,400);
  player = new Player(50,height/2);
  spawnEnemies();
}

public void draw() {
  background(200);
  player.show();
  player.move();
  for (int i = 0; i < enemies.length; i++) {
    enemies[i].show();
    enemies[i].move();
    enemies[i].collideWorldBounds();
  }
}

public void keyPressed() {
  if (key == 'w') {
    player.vy = -player.SPEED;
  }
}

private void spawnEnemies() {
  for (int i = 0; i < enemies.length; i++) {
    enemies[i] = new Enemy((int)(Math.random()*width),(int)(Math.random()*height));
  }
}
