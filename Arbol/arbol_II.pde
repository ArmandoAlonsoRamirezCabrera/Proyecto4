float ramas;   
void TREE3() {
  if (Screen==4){
   background(0);
   frameRate(100);  
   fill(#A22300);
   rect(194,430,80,100);
   translate(110,-120);
   translate(width/4,height+50);
   strokeWeight(2);
   strokeJoin(MITER);
   stroke(#21830C);  
  float a = (mouseX / (float) width) * 20f; 
  ramas = radians(a); 
  rzb(40);
  font = loadFont("Constantia-18.vlw");
         textFont(font);
         text("Mueva su mouse",-220,-410);
         text("+Puede presionar la letra 'R'",-220,-360);  
         text("- Puede presionar la tecla 'E'",-220,-391);
  }
}

void rzb(float z) {  
  z *= 0.76; 
  if (z > 2) {
    pushMatrix();    
    rotate(ramas); 
    line(0, 0, 0, -z);  
    translate(0, -z); 
    rzb(z);       
    popMatrix();    
    pushMatrix();
    rotate(-ramas);
    line(0, 0, 0, -z);
    translate(0, -z);
    rzb(z);
    popMatrix();
  }
}