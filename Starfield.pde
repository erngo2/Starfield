Particle star;
void setup()
{
	size(500,500);
	textAlign(CENTER,CENTER);
	star = new Particle();

}
void draw()
{
	star.show();
	star.move();
}
class Particle
{
	double myX, myY, speed, angle;
	int colour;
	Particle()
	{
		myX = width/2;
		myY = height/2;
		speed = (double)(Math.random() * 10);
		angle = Math.random() * 2 * Math.PI;
		colour = (int)(Math.random() * 255);
	}

	void move(){
		myX += Math.cos(angle) * speed;
		myY += Math.sin(angle) * speed;
	}

	void show(){
		fill(colour);
		ellipse((float)myX, (float)myY, 10, 10);
	}
}

void mousePressed(){
	star.myX = 250;
	star.myY = 250;
	star.speed = (double)(Math.random() * 10);
	star.angle = Math.random() * 2 * Math.PI;
}
class OddballParticle //inherits from Particle
{
	//your code here
}