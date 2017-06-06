void keyReleased(){

  if (key == 'e' || key == 'E')
        {
          background(0);
         Screen=1;
         TREE1(); 
         font = loadFont("Constantia-18.vlw");
         textFont(font);       
         text("Presione la tecla 'R'",20,40);
         text("*Puede presionar la letra 'W'",20,67);
        }
  
    if (key == 'r' || key == 'R')
        {
         background(10);
         Screen=2;
         TREE2(); 
         font = loadFont("Constantia-18.vlw");
         textFont(font);       
         text("Presione la tecla 'R' nuevamente, o...",20,40);
         text("...Haga 'CLICK' en la pantalla",20,57);
         text("*Puede presionar la letra 'W'",20,74);
        }
  
 if (key == 'w' || key == 'W')
        {
         Screen=4;
         TREE3();   
        }
       
}