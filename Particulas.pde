//PARTICULA ROSA
class Particulas1
{
  float t;
  color r,g,b;
  Body a;
  
   Particulas1(float x_, float y_)
  {
    //constructor
    t = T;
    this.r=252;
    this.g=189;
    this.b=189;
    
    BodyDef bodydef = new BodyDef();
    bodydef.type = BodyType.DYNAMIC;
    bodydef.position = box2d.coordPixelsToWorld(x_,y_);
    a = box2d.createBody(bodydef);
    CircleShape circleshape = new CircleShape();
    circleshape.m_radius = box2d.scalarPixelsToWorld(t/2);
    FixtureDef fixturedef = new FixtureDef();
    fixturedef.shape = circleshape;
    fixturedef.density = 1;
    fixturedef.friction = 0;
    fixturedef.restitution = 0.1;
    
    a.createFixture(fixturedef);
    a.setLinearVelocity(new Vec2(random(-5,5),random(-5,-5)));
    a.setAngularVelocity(random(-1,1));
  }
  
  void applyForce(Vec2 v) {
    a.applyForce(v, a.getWorldCenter());
  }
  
  void killBody() {
    box2d.destroyBody(a);
  }

  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(a);  
    if (pos.y > height+x*y) {
      killBody();
      return true;
    }
    return false;
  }
  
  void attract(float x,float y) {
    Vec2 worldTarget = box2d.coordPixelsToWorld(x,y);   
    Vec2 bodyVec = a.getWorldCenter();
    worldTarget.subLocal(bodyVec);
    worldTarget.normalize();
    worldTarget.mulLocal((float) 51);
    a.applyForce(worldTarget, bodyVec);
  }

  void display()
  {
    Vec2 pos = box2d.getBodyPixelCoord(a);
    
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    noStroke();
    fill(this.r,this.g,this.b);
    ellipse(0,0,t,t);
    popMatrix();
    posY1=pos.y;
  }
}

//PARTICULA MAGENTA
class Particulas2
{
  float t;
  color r,g,b;
  Body a;
  
   Particulas2(float x_, float y_)
  {
    //constructor
    t = T;
    this.r=252;
    this.g=189;
    this.b=229;
    
    BodyDef bodydef = new BodyDef();
    bodydef.type = BodyType.DYNAMIC;
    bodydef.position = box2d.coordPixelsToWorld(x_,y_);

    a = box2d.createBody(bodydef);

    CircleShape circleshape = new CircleShape();

    circleshape.m_radius = box2d.scalarPixelsToWorld(t/2);

    FixtureDef fixturedef = new FixtureDef();
    fixturedef.shape = circleshape;
    fixturedef.density = 1;
    fixturedef.friction = 0;
    fixturedef.restitution = 0.1;

    a.createFixture(fixturedef);
  }
  
    void killBody() {
    box2d.destroyBody(a);
  }

  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(a);  
    if (pos.y > height+x*y) {
      killBody();
      return true;
    }
    return false;
  }
  
    void attract(float x,float y) {
    // From BoxWrap2D example
    Vec2 worldTarget = box2d.coordPixelsToWorld(x,y);   
    Vec2 bodyVec = a.getWorldCenter();
    // First find the vector going from this body to the specified point
    worldTarget.subLocal(bodyVec);
    // Then, scale the vector to the specified force
    worldTarget.normalize();
    worldTarget.mulLocal((float) 51);
    // Now apply it to the body's center of mass.
    a.applyForce(worldTarget, bodyVec);
  }
  
  void display()
  {
    Vec2 pos = box2d.getBodyPixelCoord(a);
    
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    noStroke();
    fill(this.r,this.g,this.b);
    ellipse(0,0,this.t,this.t);
    popMatrix();
    posY2=pos.y;
  }
}

//PARTICULA LILA
class Particulas3
{
  float t;
  color r,g,b;
  Body a;
  
   Particulas3(float x_, float y_)
  {
    //constructor
    t = T;
    this.r=220;
    this.g=190;
    this.b=252;
    
    BodyDef bodydef = new BodyDef();
    bodydef.type = BodyType.DYNAMIC;
    
    bodydef.position = box2d.coordPixelsToWorld(x_,y_);

    a = box2d.createBody(bodydef);

    CircleShape circleshape = new CircleShape();

    circleshape.m_radius = box2d.scalarPixelsToWorld(t/2);

    FixtureDef fixturedef = new FixtureDef();
    fixturedef.shape = circleshape;
    fixturedef.density = 1;
    fixturedef.friction = 0;
    fixturedef.restitution = 0.1;

    a.createFixture(fixturedef);
  }
  
    void killBody() {
    box2d.destroyBody(a);
  }

  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(a);  
    if (pos.y > height+x*y) {
      killBody();
      return true;
    }
    return false;
  }
  
  void attract(float x,float y) {
    Vec2 worldTarget = box2d.coordPixelsToWorld(x,y);   
    Vec2 bodyVec = a.getWorldCenter();
    worldTarget.subLocal(bodyVec);
    worldTarget.normalize();
    worldTarget.mulLocal((float) 51);
    a.applyForce(worldTarget, bodyVec);
  }

  void display()
  {
    Vec2 pos = box2d.getBodyPixelCoord(a);
    
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    noStroke();
    fill(this.r,this.g,this.b);
    ellipse(0,0,t,t);
    popMatrix();
    posY3=pos.y;
  }
}

class Particulas4
{
  float t;
  color r,g,b;
  Body a;
  
   Particulas4(float x_, float y_)
  {
    //constructor
    t = T;
    this.r=190;
    this.g=215;
    this.b=252;
    
    BodyDef bodydef = new BodyDef();
    bodydef.type = BodyType.DYNAMIC;
    
    bodydef.position = box2d.coordPixelsToWorld(x_,y_);

    a = box2d.createBody(bodydef);

    CircleShape circleshape = new CircleShape();

    circleshape.m_radius = box2d.scalarPixelsToWorld(t/2);

    FixtureDef fixturedef = new FixtureDef();
    fixturedef.shape = circleshape;
    fixturedef.density = 1;
    fixturedef.friction = 0;
    fixturedef.restitution = 0.1;

    a.createFixture(fixturedef);
  }
  
    void killBody() {
    box2d.destroyBody(a);
  }

  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(a);  
    if (pos.y > height+x*y) {
      killBody();
      return true;
    }
    return false;
  }
  
  void attract(float x,float y) {
    Vec2 worldTarget = box2d.coordPixelsToWorld(x,y);   
    Vec2 bodyVec = a.getWorldCenter();
    worldTarget.subLocal(bodyVec);
    worldTarget.normalize();
    worldTarget.mulLocal((float) 50);
    a.applyForce(worldTarget, bodyVec);
  }

  void display()
  {
    Vec2 pos = box2d.getBodyPixelCoord(a);
    
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    noStroke();
    fill(this.r,this.g,this.b);
    ellipse(0,0,t,t);
    popMatrix();
    posY4=pos.y;
  }
}

class Particulas5
{
  float t;
  color r,g,b;
  Body a;
  
   Particulas5(float x_, float y_)
  {
    //constructor
    t = T;
    this.r=210;
    this.g=252;
    this.b=190;
    
    BodyDef bodydef = new BodyDef();
    bodydef.type = BodyType.DYNAMIC;
    
    bodydef.position = box2d.coordPixelsToWorld(x_,y_);

    a = box2d.createBody(bodydef);

    CircleShape circleshape = new CircleShape();

    circleshape.m_radius = box2d.scalarPixelsToWorld(t/2);

    FixtureDef fixturedef = new FixtureDef();
    fixturedef.shape = circleshape;
    fixturedef.density = 1;
    fixturedef.friction = 0;
    fixturedef.restitution = 0.1;

    a.createFixture(fixturedef);
  }
  
    void killBody() {
    box2d.destroyBody(a);
  }

  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(a);  
    if (pos.y > height+x*y) {
      killBody();
      return true;
    }
    return false;
  }
  
  void attract(float x,float y) {
    // From BoxWrap2D example
    Vec2 worldTarget = box2d.coordPixelsToWorld(x,y);   
    Vec2 bodyVec = a.getWorldCenter();
    worldTarget.subLocal(bodyVec);
    worldTarget.normalize();
    worldTarget.mulLocal((float) 50);
    a.applyForce(worldTarget, bodyVec);
  }

  void display()
  {
    Vec2 pos = box2d.getBodyPixelCoord(a);
    
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    noStroke();
    fill(this.r,this.g,this.b);
    ellipse(0,0,t,t);
    popMatrix();
    posY5=pos.y;
  }
}

class Particulas6
{
  float t;
  color r,g,b;
  Body a;
  
   Particulas6(float x_, float y_)
  {
    //constructor
    t = T;
    this.r=251;
    this.g=252;
    this.b=190;
    
    BodyDef bodydef = new BodyDef();
    bodydef.type = BodyType.DYNAMIC;
    
    bodydef.position = box2d.coordPixelsToWorld(x_,y_);

    a = box2d.createBody(bodydef);

    CircleShape circleshape = new CircleShape();

    circleshape.m_radius = box2d.scalarPixelsToWorld(t/2);

    FixtureDef fixturedef = new FixtureDef();
    fixturedef.shape = circleshape;
    fixturedef.density = 1;
    fixturedef.friction = 0;
    fixturedef.restitution = 0.1;

    a.createFixture(fixturedef);
  }
  
    void killBody() {
    box2d.destroyBody(a);
  }

  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(a);  
    if (pos.y > height+x*y) {
      killBody();
      return true;
    }
    return false;
  }
  
  void attract(float x,float y) {
    Vec2 worldTarget = box2d.coordPixelsToWorld(x,y);   
    Vec2 bodyVec = a.getWorldCenter();
    worldTarget.subLocal(bodyVec);
    worldTarget.normalize();
    worldTarget.mulLocal((float) 50);
    a.applyForce(worldTarget, bodyVec);
  }

  void display()
  {
    Vec2 pos = box2d.getBodyPixelCoord(a);
    
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    noStroke();
    fill(this.r,this.g,this.b);
    ellipse(0,0,t,t);
    popMatrix();
    posY6=pos.y;
  }
}
