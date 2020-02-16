function setup()
{
  createCanvas(800, 800);
  colorMode(HSB, 360, 100, 100, 100);
  angleMode(DEGREES);
}

function draw()
{
  background(255);

	let a = width / 2;
	let b = height / 2;
  let radius = width / 2 * 0.6;

	push();
	translate(a, b);
	rotate(-90);

	let lines = 20;
  let factor = radius / lines;
	let initial = - radius + factor;

  // Start at initial line and iterate by factor until it reaches radius limit.
	for (let x = initial; x < radius; x += factor)
  {
    // Outline of circle.
		let y = sqrt(sq(radius) - sq(x));
		line(x, -y, x, y);
  }

  pop();
  noLoop();
  save("circleAsLines.png");
}
