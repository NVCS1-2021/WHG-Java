Player player;
Enemy[] enemies = new Enemy[50]; //initialized array
Coin[] coins = new Coin[10];
Finish finish;
World world;

public void setup() {
  size(800,400);
  player = new Player(50,height/2);
  finish = new Finish(width,height);
  world = new World();
  spawnEnemies();
  spawnCoins();
}

public void draw() {
  background(200);
  world.show();
  finish.show();
  player.show();
  player.move();
  player.collides(finish);
  for (int i = 0; i < enemies.length; i++) {
    player.collides(enemies[i]);
    enemies[i].show();    
    enemies[i].move();
    enemies[i].collideWorldBounds(world);
  }
  for (int i = 0; i < coins.length; i++) {
    if (coins[i].active == false) //coins[i] thisCoin
      continue; //skip this iteration
    coins[i].show();
    player.collides(coins[i]);
  }
}

public void keyPressed() {
  if (key == 'w') {
    player.vel.y = -player.SPEED;
  }
  if (key == 'a') {
    player.vel.x = -player.SPEED;
  }
  if (key == 's') {
    player.vel.y = player.SPEED;
  }
  if (key == 'd') {
    player.vel.x = player.SPEED;
  }
}

public void keyReleased() {
  if (key == 'w') {
    player.vel.y = 0;
  }
  if (key == 'a') {
    player.vel.x = 0;
  }
  if (key == 's') {
    player.vel.y = 0;
  }
  if (key == 'd') {
    player.vel.x = 0;
  }
}

private void spawnEnemies() {
  for (int i = 0; i < enemies.length; i++) {
    enemies[i] = new Enemy((int)(Math.random()*world.size.x + world.MARGIN),(int)(Math.random()*world.size.y + world.MARGIN));
  }
}

private void spawnCoins() {
  for (int i = 0; i < coins.length; i++) {
    coins[i] = new Coin((int)(Math.random()*world.size.x + world.MARGIN),(int)(Math.random()*world.size.y + world.MARGIN));
  }
}
