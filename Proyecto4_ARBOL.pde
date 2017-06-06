  int Screen;
  float pasto;
  float Pasto;
  float cr = random(width);
  float y = random(477, 193);
  float PX = cr;
  float b = random(150, 284);
  PFont font;
void setup() {
  size(500, 500);
  ellipseMode(CENTER); 
  fill(#836510);
  stroke(5);
  background(0);
  font = loadFont("Constantia-28.vlw");
  textFont(font);
  text("OPCIONES",30,40);
  font = loadFont("Constantia-18.vlw");
  textFont(font);
  text("*Puede presionar la tecla 'W'",20,57);
  text("+Puede presionar la tecla 'R'",20,77);
  text("- Puede presionar la tecla 'E'",20,97);
  tr = new tree[1];
  tr[0] = new tree();
}
 
void draw() {
  TREE1();
  TREE2();
  TREE3();
 
}