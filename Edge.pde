// Based on the Visualizing Data, First Edition.

class Edge {
  Node from;
  Node to;
  float len;
  int count;
  
  Edge(Node from, Node to){
    this.from = from;
    this.to = to;
    this.len = 250;
  }
  
  void increment(){
    count++; 
  }
  
  void relax(){
    float vx = to.x - from.x;
    float vy = to.y - from.y;
    float d = mag(vx, vy);
    if (d > 0){
      float f = (len - d) / (d * 3);
      float dx = f * vx;
      float dy = f * vy;
      to.dx += dx;
      to.dy += dy;
      from.dx -= dx;
      from.dy -= dy;
    }
  }
  
  void draw(){
    stroke(edgeColor);
    strokeWeight(0.15);
    line(from.x, from.y, to.x, to.y);
  }
}
