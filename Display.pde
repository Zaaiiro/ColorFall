void generarParticulas()
{
    if (random(1) < 0.03) {
    Particulas1 a = new Particulas1(random(width),-10);
    particulas1.add(a);
    }
    
    if (random(1) < 0.03) {
    Particulas2 b = new Particulas2(random(width),-10);
    particulas2.add(b);
    }
    
    if (random(1) < 0.03) {
    Particulas3 c = new Particulas3(random(width),-10);
    particulas3.add(c);
    }
    
    if (random(1) < 0.03) {
    Particulas4 d = new Particulas4(random(width),-10);
    particulas4.add(d);
    }
    
    if (random(1) < 0.03) {
    Particulas5 e = new Particulas5(random(width),-10);
    particulas5.add(e);
    }
    
    if (random(1) < 0.03) {
    Particulas6 f = new Particulas6(random(width),-10);
    particulas6.add(f);
    }
}

void displays()
{
  for (Particulas1 a: particulas1){
    a.display();
  }
  
  for(Particulas2 b: particulas2){
    b.display();
  }
  
  for(Particulas3 c: particulas3){
    c.display();
  }
  
  for(Particulas4 d: particulas4){
    d.display();
  }
  
  for(Particulas5 e: particulas5){
    e.display();
  }
  
  for(Particulas6 f: particulas6){
    f.display();
  }
}

void KB()
{
  for (int i = particulas1.size()-1; i >= 0; i--) {
    Particulas1 a = particulas1.get(i);
    if (a.done()) {
      particulas1.remove(i);
    }
  }
  for (int i = particulas2.size()-1; i >= 0; i--) {
    Particulas2 b = particulas2.get(i);
    if (b.done()) {
      particulas2.remove(i);
    }
  }
  for (int i = particulas3.size()-1; i >= 0; i--) {
    Particulas3 c = particulas3.get(i);
    if (c.done()) {
      particulas3.remove(i);
    }
  }
  for (int i = particulas4.size()-1; i >= 0; i--) {
    Particulas4 d = particulas4.get(i);
    if (d.done()) {
      particulas4.remove(i);
    }
  }
  for (int i = particulas5.size()-1; i >= 0; i--) {
    Particulas5 e = particulas5.get(i);
    if (e.done()) {
      particulas5.remove(i);
    }
  }
  for (int i = particulas6.size()-1; i >= 0; i--) {
    Particulas6 f = particulas6.get(i);
    if (f.done()) {
      particulas6.remove(i);
    }
  }
}

void atraccion()
{
  for (Particulas1 a: particulas1){
    a.attract(35.0,500.0);
  }
  for (Particulas2 b: particulas2){
    b.attract(10.5*10,500.0);
  }
  for (Particulas3 c: particulas3){
    c.attract(17.5*10,500.0);
  }
  for (Particulas4 d: particulas4){
    d.attract(24.5*10,500.0);
  }
  for (Particulas5 e: particulas5){
    e.attract(31.5*10,500.0);
  }
  for (Particulas6 f: particulas6){
    f.attract(38.5*10,500.0);
  }
}

void atraccion1()
{
  for (Particulas1 a: particulas1){
    a.attract(35.0,200.0);
  }
  for (Particulas2 b: particulas2){
    b.attract(15.5*10,100.0);
  }
  for (Particulas3 c: particulas3){
    c.attract(17.5*10,200.0);    
  }
  for (Particulas4 d: particulas4){
    d.attract(24.5*10,200.0);
  }
  for (Particulas5 e: particulas5){
    e.attract(31.5*10,200.0);
  }
  for (Particulas6 f: particulas6){
    f.attract(38.5*10,200.0);
  }
}

void atraccion2()
{
  for (Particulas1 a: particulas1){
    a.attract(35.0,20.0);
  }
  for (Particulas2 b: particulas2){
    b.attract(10.5*10,20.0);
  }
  for (Particulas3 c: particulas3){
    c.attract(17.5*10,20.0);
  }
  for (Particulas4 d: particulas4){
    d.attract(24.5*10,20.0);
  }
  for (Particulas5 e: particulas5){
    e.attract(31.5*10,20.0);
  }
  for (Particulas6 f: particulas6){
    f.attract(38.5*10,20.0);
  }
}

void circles()
{
  circulos.add(new Circulos(35,260,R,R));
  circulos.add(new Circulos(35,300,R,R));
  circulos.add(new Circulos(35,340,R,R));
  circulos.add(new Circulos(35,380,R,R));
  circulos.add(new Circulos(35,420,R,R));
  circulos.add(new Circulos(35,460,R,R));
  circulos.add(new Circulos(35,500,R,R));
  circulos.add(new Circulos(70,180,R,R));
  circulos.add(new Circulos(70,220,R,R));
  circulos.add(new Circulos(70,260,R,R));
  circulos.add(new Circulos(70,300,R,R));
  circulos.add(new Circulos(70,340,R,R));
  circulos.add(new Circulos(70,380,R,R));
  circulos.add(new Circulos(70,420,R,R));
  circulos.add(new Circulos(70,460,R,R));
  circulos.add(new Circulos(70,500,R,R));  
  circulos.add(new Circulos(105,220,R,R));
  circulos.add(new Circulos(105,260,R,R));
  circulos.add(new Circulos(105,300,R,R));
  circulos.add(new Circulos(105,340,R,R));
  circulos.add(new Circulos(105,380,R,R));
  circulos.add(new Circulos(105,420,R,R));
  circulos.add(new Circulos(105,460,R,R));
  circulos.add(new Circulos(105,500,R,R));
  circulos.add(new Circulos(140,180,R,R));
  circulos.add(new Circulos(140,220,R,R));
  circulos.add(new Circulos(140,260,R,R));
  circulos.add(new Circulos(140,300,R,R));
  circulos.add(new Circulos(140,340,R,R));
  circulos.add(new Circulos(140,380,R,R));
  circulos.add(new Circulos(140,420,R,R));
  circulos.add(new Circulos(140,460,R,R));
  circulos.add(new Circulos(140,500,R,R));
  circulos.add(new Circulos(175,180,R,R));
  circulos.add(new Circulos(175,220,R,R));
  circulos.add(new Circulos(175,260,R,R));
  circulos.add(new Circulos(175,300,R,R));
  circulos.add(new Circulos(175,340,R,R));
  circulos.add(new Circulos(175,380,R,R));
  circulos.add(new Circulos(175,420,R,R));
  circulos.add(new Circulos(175,460,R,R));
  circulos.add(new Circulos(175,500,R,R));
  circulos.add(new Circulos(210,180,R,R));
  circulos.add(new Circulos(210,220,R,R));
  circulos.add(new Circulos(210,260,R,R));
  circulos.add(new Circulos(210,300,R,R));
  circulos.add(new Circulos(210,340,R,R));
  circulos.add(new Circulos(210,380,R,R));
  circulos.add(new Circulos(210,420,R,R));
  circulos.add(new Circulos(210,460,R,R));
  circulos.add(new Circulos(210,500,R,R));
  circulos.add(new Circulos(245,180,R,R));
  circulos.add(new Circulos(245,220,R,R));
  circulos.add(new Circulos(245,260,R,R));
  circulos.add(new Circulos(245,300,R,R));
  circulos.add(new Circulos(245,340,R,R));
  circulos.add(new Circulos(245,380,R,R));
  circulos.add(new Circulos(245,420,R,R));
  circulos.add(new Circulos(245,460,R,R));
  circulos.add(new Circulos(245,500,R,R));
  circulos.add(new Circulos(280,180,R,R));
  circulos.add(new Circulos(280,220,R,R));
  circulos.add(new Circulos(280,260,R,R));
  circulos.add(new Circulos(280,300,R,R));
  circulos.add(new Circulos(280,340,R,R));
  circulos.add(new Circulos(280,380,R,R));
  circulos.add(new Circulos(280,420,R,R));
  circulos.add(new Circulos(280,460,R,R));
  circulos.add(new Circulos(280,500,R,R));
  circulos.add(new Circulos(315,220,R,R));
  circulos.add(new Circulos(315,260,R,R));
  circulos.add(new Circulos(315,300,R,R));
  circulos.add(new Circulos(315,340,R,R));
  circulos.add(new Circulos(315,380,R,R));
  circulos.add(new Circulos(315,420,R,R));
  circulos.add(new Circulos(315,460,R,R));
  circulos.add(new Circulos(315,500,R,R));
  circulos.add(new Circulos(350,220,R,R));
  circulos.add(new Circulos(350,260,R,R));
  circulos.add(new Circulos(350,300,R,R));
  circulos.add(new Circulos(350,340,R,R));
  circulos.add(new Circulos(350,380,R,R));
  circulos.add(new Circulos(350,420,R,R));
  circulos.add(new Circulos(350,460,R,R));
  circulos.add(new Circulos(350,500,R,R));
  circulos.add(new Circulos(385,260,R,R));
  circulos.add(new Circulos(385,300,R,R));
  circulos.add(new Circulos(385,340,R,R));
  circulos.add(new Circulos(385,380,R,R));
  circulos.add(new Circulos(385,420,R,R));
  circulos.add(new Circulos(385,460,R,R));
  circulos.add(new Circulos(385,500,R,R));
  
  circulos.add(new Circulos(17.5,240,R,R));
  circulos.add(new Circulos(17.5,280,R,R));
  circulos.add(new Circulos(17.5,320,R,R));
  circulos.add(new Circulos(17.5,360,R,R));
  circulos.add(new Circulos(17.5,400,R,R));
  circulos.add(new Circulos(17.5,440,R,R));
  circulos.add(new Circulos(17.5,480,R,R));
  circulos.add(new Circulos(17.5,520,R,R));
  circulos.add(new Circulos(52.5,160,R,R));
  circulos.add(new Circulos(52.5,200,R,R));
  circulos.add(new Circulos(52.5,240,R,R));
  circulos.add(new Circulos(52.5,280,R,R));
  circulos.add(new Circulos(52.5,320,R,R));
  circulos.add(new Circulos(52.5,360,R,R));
  circulos.add(new Circulos(52.5,400,R,R));
  circulos.add(new Circulos(52.5,440,R,R));
  circulos.add(new Circulos(52.5,480,R,R));
  circulos.add(new Circulos(52.5,520,R,R));
  circulos.add(new Circulos(87.5,160,R,R));
  circulos.add(new Circulos(87.5,200,R,R));
  circulos.add(new Circulos(87.5,240,R,R));
  circulos.add(new Circulos(87.5,280,R,R));
  circulos.add(new Circulos(87.5,320,R,R));
  circulos.add(new Circulos(87.5,360,R,R));
  circulos.add(new Circulos(87.5,400,R,R));
  circulos.add(new Circulos(87.5,440,R,R));
  circulos.add(new Circulos(87.5,480,R,R));
  circulos.add(new Circulos(87.5,520,R,R));
  circulos.add(new Circulos(122.5,160,R,R));
  circulos.add(new Circulos(122.5,200,R,R));
  circulos.add(new Circulos(122.5,240,R,R));
  circulos.add(new Circulos(122.5,280,R,R));
  circulos.add(new Circulos(122.5,320,R,R));
  circulos.add(new Circulos(122.5,360,R,R));
  circulos.add(new Circulos(122.5,400,R,R));
  circulos.add(new Circulos(122.5,440,R,R));
  circulos.add(new Circulos(122.5,480,R,R));
  circulos.add(new Circulos(122.5,520,R,R));
  circulos.add(new Circulos(157.5,160,R,R));
  circulos.add(new Circulos(157.5,200,R,R));
  circulos.add(new Circulos(157.5,240,R,R));
  circulos.add(new Circulos(157.5,280,R,R));
  circulos.add(new Circulos(157.5,320,R,R));
  circulos.add(new Circulos(157.5,360,R,R));
  circulos.add(new Circulos(157.5,400,R,R));
  circulos.add(new Circulos(157.5,440,R,R));
  circulos.add(new Circulos(157.5,480,R,R));
  circulos.add(new Circulos(157.5,520,R,R));
  circulos.add(new Circulos(192.5,160,R,R));
  circulos.add(new Circulos(192.5,200,R,R));
  circulos.add(new Circulos(192.5,240,R,R));
  circulos.add(new Circulos(192.5,280,R,R));
  circulos.add(new Circulos(192.5,320,R,R));
  circulos.add(new Circulos(192.5,360,R,R));
  circulos.add(new Circulos(192.5,400,R,R));
  circulos.add(new Circulos(192.5,440,R,R));
  circulos.add(new Circulos(192.5,480,R,R));
  circulos.add(new Circulos(192.5,520,R,R));
  circulos.add(new Circulos(227.5,160,R,R));
  circulos.add(new Circulos(227.5,200,R,R));
  circulos.add(new Circulos(227.5,240,R,R));
  circulos.add(new Circulos(227.5,280,R,R));
  circulos.add(new Circulos(227.5,320,R,R));
  circulos.add(new Circulos(227.5,360,R,R));
  circulos.add(new Circulos(227.5,400,R,R));
  circulos.add(new Circulos(227.5,440,R,R));
  circulos.add(new Circulos(227.5,480,R,R));
  circulos.add(new Circulos(227.5,520,R,R));
  circulos.add(new Circulos(262.5,160,R,R));
  circulos.add(new Circulos(262.5,200,R,R));
  circulos.add(new Circulos(262.5,240,R,R));
  circulos.add(new Circulos(262.5,280,R,R));
  circulos.add(new Circulos(262.5,320,R,R));
  circulos.add(new Circulos(262.5,360,R,R));
  circulos.add(new Circulos(262.5,400,R,R));
  circulos.add(new Circulos(262.5,440,R,R));
  circulos.add(new Circulos(262.5,480,R,R));
  circulos.add(new Circulos(262.5,520,R,R));
  circulos.add(new Circulos(297.5,160,R,R));
  circulos.add(new Circulos(297.5,200,R,R));
  circulos.add(new Circulos(297.5,240,R,R));
  circulos.add(new Circulos(297.5,280,R,R));
  circulos.add(new Circulos(297.5,320,R,R));
  circulos.add(new Circulos(297.5,360,R,R));
  circulos.add(new Circulos(297.5,400,R,R));
  circulos.add(new Circulos(297.5,440,R,R));
  circulos.add(new Circulos(297.5,480,R,R));
  circulos.add(new Circulos(297.5,520,R,R));
  circulos.add(new Circulos(332.5,160,R,R));
  circulos.add(new Circulos(332.5,200,R,R));
  circulos.add(new Circulos(332.5,240,R,R));
  circulos.add(new Circulos(332.5,280,R,R));
  circulos.add(new Circulos(332.5,320,R,R));
  circulos.add(new Circulos(332.5,360,R,R));
  circulos.add(new Circulos(332.5,400,R,R));
  circulos.add(new Circulos(332.5,440,R,R));
  circulos.add(new Circulos(332.5,480,R,R));
  circulos.add(new Circulos(332.5,520,R,R));
  circulos.add(new Circulos(367.5,160,R,R));
  circulos.add(new Circulos(367.5,200,R,R));
  circulos.add(new Circulos(367.5,240,R,R));
  circulos.add(new Circulos(367.5,280,R,R));
  circulos.add(new Circulos(367.5,320,R,R));
  circulos.add(new Circulos(367.5,360,R,R));
  circulos.add(new Circulos(367.5,400,R,R));
  circulos.add(new Circulos(367.5,440,R,R));
  circulos.add(new Circulos(367.5,480,R,R));
  circulos.add(new Circulos(367.5,520,R,R));
  circulos.add(new Circulos(402.5,240,R,R));
  circulos.add(new Circulos(402.5,280,R,R));
  circulos.add(new Circulos(402.5,320,R,R));
  circulos.add(new Circulos(402.5,360,R,R));
  circulos.add(new Circulos(402.5,400,R,R));
  circulos.add(new Circulos(402.5,440,R,R));
  circulos.add(new Circulos(402.5,480,R,R));
  circulos.add(new Circulos(402.5,520,R,R));
}
