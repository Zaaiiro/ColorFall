void Pantalla()
{
  switch(pantalla){
    case 1:
      imageMode(CORNER);
      image(imagen1,0,0);
      textSize(17);
      fill(255);
      text("Iniciar",190,417);
      text("Salir", 198, 475);
      textSize(15);
      fill(200);
      text("Disfruta viendo a las pelotitas\n        ordenarse solas ;3",100,600);
      boton();
    break;
    
    case 2:
      generarParticulas();
      displays();
      surface.display();
      for(Circulos c: circulos){
        c.display();
      }
      textSize(10);
      fill(200);
      text("Presiona ESC para finalizar",10,10);
      if(keyPressed)
      {
        if(key == ESC)
        exit();
      }
      atraccion2();
      atraccion1();
      atraccion();
      KB();
    break;
  }
}
void boton()
  {
    if((mouseX>125) && 
    (mouseX<296) && 
    (mouseY>395) && 
    (mouseY<429) && 
    (mousePressed) && 
    (mouseButton==LEFT))
    {
      pantalla=2;
    }
    if((mouseX>125) && 
    (mouseX<296) && 
    (mouseY>451) && 
    (mouseY<485) && 
    (mousePressed) && 
    (mouseButton==LEFT))
    {
      exit();
    }
    else
    {
      mousePressed = false;
    }
  }
