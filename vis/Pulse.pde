import java.util.*;

class Pulse 
{
  int radius = 0;
  int col;
  int stroke = 4;
  int alphaVal = 100;
  int shape = 1;
  int radInc;
  
  Pulse(int s)
  {
    shape = s;
    if(s == 2)
    {
      stroke = 1;
      radInc = 2;
    }
  }
  
  Pulse(int sh, int st, int r)
  {
    shape = sh;
    stroke = st;
    radInc = r;
  }
  void pulsing()
  {
    fill(#676E81); 
    strokeWeight(stroke);
    if(col == 1)
      stroke(#ffffff);
    else if(col == 2)
      stroke(#ff0000);
    else if(col == 3)
      stroke(#ff0000,100);
    ellipse(width/2, height/2, radius, radius);
    radius+=10;
  }
  void pulsing_chords()
  {
    if(shape == 1)        // major
    {
      fill(#676E81); stroke(#E7AF7E); strokeWeight(4);
      ellipse(width/2, height/2, radius, radius);
      radius+=5;
    }
    else if(shape == 2)    // minor
    { 
      fill(#676E81); stroke(#A0ECD0, alphaVal--); strokeWeight(stroke);
      ellipse(width/2, height/2, radius, radius);
      radius+=radInc;
    }
    else if(shape == 3)    // major 7th - soft and thoughtful 
    {
      fill(#676E81); stroke(#E7AF7E, alphaVal--); strokeWeight(4);
      ellipse(width/2, height/2, radius, radius);
      radius++;
    }
    else if(shape == 4)    // minor 7th - edit 
    { 
      background(#676E81);
      fill(color(#676E81));  
      stroke(#C62620, alphaVal--); strokeWeight(10);
      polygon(width/2, height/2,radius,3);
      radius+=10;
    }
    else if(shape == 5)    // domainant - strong powerful 
    { 
      fill(#676E81); stroke(#E7AF7E); strokeWeight(10);
      ellipse(width/2, height/2, radius, radius);
      radius+=20;
    }
    else if(shape == 6)    // major 6th - playful and fun 
    { 
      background(#676E81);
      fill(#676E81); stroke(#E7AF7E, alphaVal); strokeWeight(5);
      ellipse(random(0,width), random(0,height), 100, 100);
      alphaVal -= 10;
    }
    else if(shape == 7) { // suspended 4th - majestic/proud
      fill(#676E81); stroke(#E7AF7E); strokeWeight(10);
      ellipse(width/2, height/2, radius, radius);
      radius+=10;
    }
    else if(shape == 8) { // ninth - energetic/full of life
      fill(color(255, 204, 0)); noStroke();
      ellipse(width/2, height/2, radius, radius);
      radius+=10;
    }
    else if(shape == 9) { // diminished - nervous/anxiety
      background(#676E81);
      fill(color(#676E81));
      colorMode(RGB);
      stroke(color(94,48,224)); strokeWeight(10);
      // ellipse(250, 250, radius, radius);
      float randomx = random(width), randomy = random(height);
      polygon(randomx,randomy,70,7);
      radius+=10;
    }
   else if(shape == 10) { // augmented - suspenseful
      background(#676E81);
      fill(color(#676E81));
      colorMode(RGB);
      //stroke(color(94,48,224)); 
      strokeWeight(10);
      stroke(color(94,48,224), alphaVal--);
      polygon(width/2, height/2,radius,7);
      radius+=5;
    }
    else if(shape == 11) { // minor 6th - mysterious
      background(#676E81);
      fill(color(#676E81));
      colorMode(RGB);
      //stroke(color(94,48,224)); 
      strokeWeight(10);
      stroke(color(94,48,224), alphaVal--);
      polygon(width/2, height/2,radius,5);
      radius++;
    }
  }
}

void polygon(float x, float y, float radius, int npoints) 
{
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) 
  {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}