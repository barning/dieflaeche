var x,y,r,angle,d,x1,y1,rotation1,rotation2,rotaion3,rotation4,rotation5;
var z=0;
var v1,v2,v3,v4,v5,v6;
var lastTime=0;

function setup() {
	var myCanvas = createCanvas(window.innerWidth, 400);
	myCanvas.parent('processing');
	background(255)
	r=200;
	d=r*2;  

	v1 = createVector(0, 0);

	angle = atan2((v1.x), (v1.y));
	x = (v1.x)+cos(angle)*-r/2;
	y = (v1.y)+sin(angle)*-r/2;

	v2 = createVector(x, y);

	angle = atan2((v2.x), (v2.y));
	x = (v2.x)+cos(angle)*-r/4;
	y = (v2.y)+sin(angle)*-r/4;

	v3 = createVector(x, y);

	angle = atan2((v3.x), (v3.y));
	x = (v3.x)+cos(angle)*-r/8;
	y = (v3.y)+sin(angle)*-r/8;

	v4 = createVector(x, y);

	angle = atan2((v4.x), (v4.y));
	x = (v4.x)+cos(angle)*-r/16;
	y = (v4.y)+sin(angle)*-r/16;

	v5 = createVector(x, y);

	angle = atan2((v5.x), (v5.y));
	x = (v5.x)+cos(angle)*-r/16;
	y = (v5.y)+sin(angle)*-r/16;

	v6 = createVector(x, y);
}

function draw() {

	background(255);
	translate(width/2,height/2);
	smooth();
	beginShape(LINES);
	stroke(0);
	vertex(v2.x, v2.y);
	vertex(v3.x, v3.y);
	vertex(v4.x, v4.y);
	vertex(v5.x, v5.y);
	vertex(v6.x, v6.y);
	endShape(CLOSE);
	timeRotator();
	//rotator();
}

function timeRotator() {

	if( millis() - lastTime >= 2000){
		lastTime = millis();
		v2.rotate(random(0,2));
		v3.rotate(random(0,2));
		v4.rotate(random(0,2));
		v5.rotate(random(0,2));
		v6.rotate(random(0,2));
	}

}

function rotator() {

	v2.rotate(random(0,0.05));
	v3.rotate(random(0,0.04));
	v4.rotate(random(0,0.03));
	v5.rotate(random(0,0.02));
	v6.rotate(random(0,0.01));

}