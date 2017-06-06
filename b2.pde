void TREE1() {
  if (Screen==1){
  strokeWeight(1.5);
  stroke(120, b, 180-b, 20);
  for (float x=cr; y<=height + 2;
     x += pasto, y += Pasto) {
      pasto = noise(3);
      Pasto = noise(1)+ random(29);
      line(x, y, PX, random(515, 529));
      PX = x;    
  }    
  }  
}