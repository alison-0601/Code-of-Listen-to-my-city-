
void setup() {
  size(1280, 1000, P2D);
  //fullScreen();
  fill(255);
}
  
 void draw() {    
  background(0);
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Guilin", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Li River", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Raining", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(60);
    text("Parents", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Mountains", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(60);
    text("Childhood", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Osmanthus", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Sorrow", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Naive", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Playmates", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Grandpa", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Lose", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Dream", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("Death", x, y);
  }
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    textSize(50);
    text("First love", x, y);
  }
  
  //if (frameCount % 10 == 0) println(frameRate);
  frameRate(15);
  //delay(80);
}
