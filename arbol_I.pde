tree[] tr;

void TREE2() {
  if (Screen==2){  
  for (int i=0; i<tr.length; i++) {
    PVector arbol = tr[i].lugar;
    float tamao = tr[i].circuloA;
    ellipse(arbol.x, arbol.y, tamao, tamao);
    tr[i].generador();   
  }
} 
}
void mousePressed() {
  background(10);
  noStroke();
  tr = new tree[1];
  tr[0] = new tree();
}

class tree {
  PVector lugar;
  PVector velocidadC;
  float circuloA;
  tree() {
  lugar = new PVector(width/2, height);
  velocidadC = new PVector(0, -1);
  circuloA = 32;
  }
  
  tree(tree t) {
    lugar = t.lugar.get();
    velocidadC = t.velocidadC.get(); 
    float area = PI*sq(t.circuloA/2);
    float nC = sqrt(area/2/PI)*2;
    circuloA = nC;
    t.circuloA = nC;
  }
  
  void generador() {
    if (circuloA>1.5) {
      lugar.add(velocidadC);
      PVector p = new PVector(random(-1, 1), random(-1, 1));
      p.mult(0.1);
      velocidadC.add(p);
      velocidadC.normalize();
      if (random(0, 1)<0.02777) {
        tr = (tree[]) append(tr, new tree(this));
      }
    }
  }
}