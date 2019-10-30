Particle[] star;
void setup()
{
	noStroke();
	size(500,500);
	textAlign(CENTER,CENTER);
	star = new Particle[2000];
	for(int i = 0; i < star.length; i++)
		star[i] = new Particle();
	star[0] = new OddballParticle();
}
void draw()
{
	background(197);
	for(int i = 0; i < star.length; i++){
		star[i].show();
		star[i].move();
	}
}
class Particle
{
	double myX, myY, speed, angle;
	float sizzle;
	int[] colour = new int[4];
	Particle()
	{
		myX = width/2;
		myY = height/2;
		speed = (double)(Math.random() * 8) + Math.random();
		angle = Math.random() * 2 * Math.PI;
		colour[0] = (int)(Math.random() * 255);
 		colour[1] = (int)(Math.random() * 255);
 		colour[2] = (int)(Math.random() * 255);
 		colour[3] = (int)(Math.random() * 255);
		sizzle = 0.5;
	}

	void move(){
		myX += Math.cos(angle) * speed;
		myY += Math.sin(angle) * speed;
		sizzle += 0.1;
	}

	void show(){
		fill(colour[0], colour[1], colour[2], colour[3]);
		ellipse((float)myX, (float)myY, sizzle, sizzle);
	}
}

void mousePressed(){
	for(int i = 0; i < star.length; i++){
		for(int a =0; a < 4; a++)
			star[i].colour[a] = (int)(Math.random() * 255);
		star[i].myX = 250;
		star[i].myY = 250;
		star[i].speed = (double)(Math.random() * 5) + Math.random();
		star[i].angle = Math.random() * 2 * Math.PI;
		star[i].sizzle = 1;
	}
	star[0].sizzle = 250;
}
class OddballParticle extends Particle
{
	OddballParticle(){
		myX = width/2;
		myY = height/2;
		speed = Math.random() + Math.random();
		sizzle = 250;
	}

	//void move(){
		//myX += Math.cos(angle) * speed;
		//myY += Math.sin(angle) * speed;
	//}

	/*void show(){
		fill(colour[0], colour[1], colour[2], colour[3]);
	}*/

}


