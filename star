function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(255);
  
  stroke(0);
  noFill();
  nPointedStar(width / 2, height / 2, 5, 200, 50, 0);
}

function nPointedStar(x, y, n, outerRadius, innerRadius, rotation){
  let theta = TAU / n;
  beginShape();
 
  for (let i = 0; i < n; i++){
  vertex(x + cos(i * theta) * outerRadius, y + sin(i* theta) * outerRadius);
    vertex(x + cos((i + 0.5) * theta) * innerRadius, y + sin((i + 0.5) * theta) * innerRadius);
  }
 
  endShape(CLOSE);
}
