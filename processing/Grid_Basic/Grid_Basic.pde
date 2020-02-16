import processing.svg.*;

// Setup sketch.

void setup()
{
  // Size of canvas.
  size(1000,800);
  // Background colour.
  background(255);
  // Freeze the frame.
  noLoop();
  // SVG render begins.
  beginRecord(SVG, "grid_basic.svg");
}

// Artwork function.

void draw()
{
  for(float x = 70; x < width-30; x +=50)
  {
    for(float y = 70; y < height-30; y +=50)
    {
      stroke(0);
      strokeWeight(1.1);
      
      // Grid disruption.
      float a = x + random(-30,30) * noise(0.3);
      float b = y + random(-30,30) * noise(0.8);
      
      line(x, y, a, b);
    }
  }
   // SVG render ends.
   endRecord();
}
