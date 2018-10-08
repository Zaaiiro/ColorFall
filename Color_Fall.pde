import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;
float x = round(random(1,399));
float y = 0;
float rgb;
float r, r1;
float A;
float T=13.5;
int R=13;
int pantalla=1;
float posY1,posY2,posY3,posY4,posY5,posY6;
ArrayList <Particulas1> particulas1;
ArrayList <Particulas2> particulas2;
ArrayList <Particulas3> particulas3;
ArrayList <Particulas4> particulas4;
ArrayList <Particulas5> particulas5;
ArrayList <Particulas6> particulas6;
ArrayList <Circulos> circulos;
Surface surface;
PImage imagen1;


void setup()
{
  size(420,750);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -110);
  
  imagen1 = loadImage("colorfall.png");
  
  particulas1 = new ArrayList<Particulas1>();
  particulas2 = new ArrayList<Particulas2>();
  particulas3 = new ArrayList<Particulas3>();
  particulas4 = new ArrayList<Particulas4>();
  particulas5 = new ArrayList<Particulas5>();
  particulas6 = new ArrayList<Particulas6>();  
  circulos = new ArrayList <Circulos>();
  surface = new Surface();
  circles();

}

void draw()
{
  background (80);
  box2d.step();
  Pantalla();
}
