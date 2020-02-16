// Setup sketch.

void setup()
{
  // Canvas size.
  size(900, 700);
  // Background colour.
  background(245);
  // Freeze frame.
  noLoop();
}

// Artwork function.

void draw()
 { 
   for (float x = 65; x < width-50; x +=45)
   {
      for(float y = 70; y < height-50; y +=42)
      {
        stroke(0);
        strokeWeight(1);
        
        // Grid disruption.
        float a = x + (random(-30, 30) * noise(0.3));
        float b = y + (random(-30, 30) * noise(0.8));
        
        line(x, y, a, b);
      }
    }
}
