var x,y,r,angle,d,x1,y1,rotation1,tempRotation1,rotation2,tempRotation2,rotaion3,tempRotation3,rotation4,tempRotation4,rotation5,tempRotation5;
var z=0;
var rSlider, gSlider, bSlider;
var v1,v2,v3,v4,v5,v6;
var r,g,b;
var lastTime=0;
var mySVG;
var input, button, generating;

function setup() {
	var myCanvas = createCanvas(window.innerWidth, window.innerHeight);
	myCanvas.parent('processing');
	background(255)

  // create sliders
  rSlider = createSlider(0, 255, 100);
  rSlider.position(20, 20);
  gSlider = createSlider(0, 255, 0);
  gSlider.position(20, 50);
  bSlider = createSlider(0, 255, 255);
  bSlider.position(20, 80);

  rotation1=random(0,0.05)
  tempRotation1=rotation1;
  rotation2=random(0,0.04)
  tempRotation2=rotation2;
  rotation3=random(0,0.03)
  tempRotation3=rotation3;
  rotation4=random(0,0.02)
  tempRotation4=rotation4;
  rotation5=random(0,0.01)
  tempRotation5=rotation5;

  button = createButton('Start/Stop');
  button.position(20, 150);
  button.mousePressed(stop);

  button = createButton('Generate SVG');
  button.position(20, 120);
  button.mousePressed(generate);

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

	r = rSlider.value();
	g = gSlider.value();
	b = bSlider.value();
	background(255);
	text("Red", 165, 35);
	text("Green", 165, 65);
	text("Blue", 165, 95);

	translate(width/2,height/2);
	smooth();
	stroke(r, g, b);
	strokeWeight(5);
	beginShape();
	vertex(v2.x, v2.y);
	vertex(v3.x, v3.y);
	vertex(v4.x, v4.y);
	vertex(v5.x, v5.y);
	vertex(v6.x, v6.y);
	endShape(CLOSE);
	//timeRotator();
	rotator();
}


function stop() {
	if (rotation1 == 0) {
		rotation1=random(0,0.05)
		rotation2=random(0,0.04)
		rotation3=random(0,0.03)
		rotation4=random(0,0.02)
		rotation5=random(0,0.01)
	} else {
		rotation1=0;
		rotation2=0;
		rotation3=0;
		rotation4=0;
		rotation5=0;

	}
}

function generate() {
		//mousePressed();
		var ctx = new C2S(width,height);
		ctx.translate(width/2,height/2);
		ctx.strokeStyle = 'rgb('+r+','+g+','+b+')';
		ctx.lineWidth = 5;
		ctx.lineJoin = "bevel";
		ctx.beginPath();
		ctx.moveTo(v2.x, v2.y);
		ctx.lineTo(v3.x, v3.y);
		ctx.moveTo(v3.x, v3.y);
		ctx.lineTo(v4.x, v4.y);
		ctx.moveTo(v4.x, v4.y);
		ctx.lineTo(v5.x, v5.y);	
		ctx.moveTo(v5.x, v5.y);
		ctx.lineTo(v6.x, v6.y);
		ctx.moveTo(v6.x, v6.y);
		ctx.lineTo(v2.x, v2.y);
		ctx.stroke();
		mySVG = ctx.getSerializedSvg(true);
		downloadAsSVG();
  return false; // prevent default
}

function rotator() {
	v2.rotate(rotation1);
	v3.rotate(rotation2);
	v4.rotate(rotation3);
	v5.rotate(rotation4);
	v6.rotate(rotation5);

}

var downloadAsSVG = function (fileName) {

	if(!fileName) {
		fileName = "dieflaeche"+second()+minute()+day()+year()+".svg"
	}

	var url = "data:image/svg+xml;charset=utf-8,"+encodeURIComponent(mySVG);

	var link = document.getElementById("download");
	link.download = fileName;
	link.href = url;
	link.click();
}