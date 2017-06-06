int Cantidaddelluvia=220;
int mx =500;
int mn=100;
int ll,h1;
lluvia[] lluviatusbesosfrioscomolalluvia=new lluvia[mx];

void setup(){
  size(500,500);
  smooth();
  frameRate(30);
  ll = abs(height/3);
  h1=ll*2;
  for (int i = 0; i < mx; i++){
    lluviatusbesosfrioscomolalluvia[i] = new lluvia(int(random(width)),-int(random(height*2)),(int)map((ll+int(random(h1))),height*.35,height,0,height),1200); 
  }
 
}

void draw(){
  hamburgerrain();   
   for (int i=0;i<Cantidaddelluvia;i++){
    lluviatusbesosfrioscomolalluvia[i].elcielosecae();
  }
}

void hamburgerrain(){  
  noStroke();
  beginShape(QUADS);
  fill(#36F2D7); 
  vertex(0,0); 
  vertex(width,0);
  fill(#078976); 
  vertex(width,height); 
  vertex(0,height);
  endShape(); 
}

class lluvia{
  int rainx,rainy,nino,danonino,dino,dano,danoninorecargado;
  float AntesdelaComedia;
  boolean s;
  lluvia(int rainx,int rainy, int danonino, int nino){
    this.rainx=rainx;
    this.rainy=rainy;
    this.nino=dino;
    this.danonino=danonino;
    dino=0;
    dano=nino;
    AntesdelaComedia=0;
    danoninorecargado=rainy;
  }

  void elcielosecae(){
    if(rainy>0)AntesdelaComedia+=0.2;
    stroke(20,200,180);
    strokeWeight(2);
    if (rainy<danonino){
      rainy=int(rainy+4+AntesdelaComedia);
      line(rainx,danoninorecargado,rainx,rainy);
      danoninorecargado=rainy;
    }
    else{
      noFill();
      stroke(#26A593);
      strokeWeight(2);
      nino=dano+(rainy-height)*4;
      ellipse(rainx,rainy,dino/5,dino/20);
      dino=dino+7;
      if(dino>nino){
        dino=0;
        AntesdelaComedia=0;
        rainx=int(random(width));
        rainy=-int(random(height*2));
        danoninorecargado=rainy;
        nino=dano;
      }
    }
  }
}