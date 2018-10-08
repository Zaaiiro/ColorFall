class Surface {
  
  ArrayList<Vec2> surface;


  Surface() {
    surface = new ArrayList<Vec2>();

    surface.add(new Vec2(430,620));
    surface.add(new Vec2(430,0));
    //surface.add(new Vec2(280,50));
    surface.add(new Vec2(225,50));
    surface.add(new Vec2(225,130));
    surface.add(new Vec2(425,240));
    surface.add(new Vec2(425,530));
    
    surface.add(new Vec2(400,570));
    surface.add(new Vec2(400,770));
    
    surface.add(new Vec2(370,770));
    surface.add(new Vec2(370,570));
    surface.add(new Vec2(350,530));
    surface.add(new Vec2(330,570));
    surface.add(new Vec2(330,770));
    
    surface.add(new Vec2(300,770));
    surface.add(new Vec2(300,570));
    surface.add(new Vec2(280,530));
    surface.add(new Vec2(260,570));
    surface.add(new Vec2(260,770));
    
    surface.add(new Vec2(230,770));
    surface.add(new Vec2(230,570));
    surface.add(new Vec2(210,530));
    surface.add(new Vec2(190,570));
    surface.add(new Vec2(190,770));
    
    surface.add(new Vec2(160,770));
    surface.add(new Vec2(160,570));
    surface.add(new Vec2(140,530));
    surface.add(new Vec2(120,570));
    surface.add(new Vec2(120,770));
    
    surface.add(new Vec2(90,770));
    surface.add(new Vec2(90,570));
    surface.add(new Vec2(70,530));
    surface.add(new Vec2(50,570));
    surface.add(new Vec2(50,770));
    
    surface.add(new Vec2(20,770));
    surface.add(new Vec2(20,720));
    surface.add(new Vec2(20,570));
    surface.add(new Vec2(-5,530));
    surface.add(new Vec2(-5,240));
    surface.add(new Vec2(195,130));
    //surface.add(new Vec2(195,100));
    surface.add(new Vec2(195,50));
    //surface.add(new Vec2(140,50));
    surface.add(new Vec2(0,0));

    ChainShape chain = new ChainShape();

    Vec2[] vertices = new Vec2[surface.size()];
    for (int i = 0; i < vertices.length; i++) {
      vertices[i] = box2d.coordPixelsToWorld(surface.get(i));     
    }
    
    chain.createChain(vertices,vertices.length);
 

    BodyDef bd = new BodyDef();
    Body body = box2d.world.createBody(bd);
    body.createFixture(chain,1);
  }

  void display() {
    noStroke();
    fill(100);
    beginShape();
    for (Vec2 v: surface) {
      vertex(v.x,v.y);
    }
    vertex(0,height);
    vertex(width,height);
    endShape();
  }
}
