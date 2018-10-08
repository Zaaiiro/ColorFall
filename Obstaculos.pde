class Circulos
{
  Body c;
  
  Circulos(float x_, float y_, float r_, float r1_)
  {
    r=r_;
    r1=r1_;
    BodyDef bodydef = new BodyDef();
    bodydef.type = BodyType.STATIC;
    bodydef.position = box2d.coordPixelsToWorld(x_,y_);
    
    c = box2d.createBody(bodydef);
    
    CircleShape circleshape = new CircleShape();
    circleshape.m_radius = box2d.scalarPixelsToWorld(r/2);
    
    FixtureDef fixturedef = new FixtureDef();
    fixturedef.shape = circleshape;
    fixturedef.density = 1;
    fixturedef.friction = 0;
    fixturedef.restitution = 0.2;
    
    c.createFixture(fixturedef);
  }
  
  void display()
  {
    Vec2 pos = box2d.getBodyPixelCoord(c);
    
    pushMatrix();
    fill(100);
    noStroke();
    translate(pos.x,pos.y);
    ellipse(0,0,r,r1);
    popMatrix();
  }
}
