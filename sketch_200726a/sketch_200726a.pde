float x0, y0; //<>// //<>//
float m1, n1, m2, n2, r0;
float time;
float r1, w1, r2, w2;
int t=0;
float i, j;
float a[][]={
  {1, 2}, {1, 3}, {1, 4}, {1, 5}, {1, 6}, {1, 7}, {1, 8}, 
  {2, 3}, {2, 4}, {2, 5}, {2, 6}, {2, 7}, {2, 8}, 
  {3, 4}, {3, 5}, {3, 6}, {3, 7}, {3, 8}, 
  {4, 5}, {4, 6}, {4, 7}, {4, 8}, 
  {5, 6}, {5, 7}, {5, 8}, 
  {6, 7}, {6, 8}, 
  {7, 8},{1,1}
};
void setup() {
  size(displayWidth, displayHeight);//size setting
  x0=width/2;//center x
  y0=height/2;//center y
  background(255, 255, 255);
  r0=100;
  textSize(55);
}
void draw() {
  i=a[t][0];
  j=a[t][1];
  text(i+":"+j, 0, 50);
  r1=i*r0;
  r2=j*r0;
  w1=i;
  w2=1/j;
  time=time+0.06;//time add rate
  m1=x0+cos(w1*time)*r1;
  n1=y0+sin(w1*time)*r1;
  fill(0, 0, 0);//fill ellipse with white
  ellipse(m1, n1, 8, 8);//print e1
  m2=x0+cos(w2*time)*r2;
  n2=y0+sin(w2*time)*r2;
  fill(0, 0, 0);//fill ellipse with white
  ellipse(m2, n2, 8, 8);//print e1
  line(m1, n1, m2, n2);
  if ((w2*time>=PI*2&&w2<=w1)||(w1*time>=PI&&w1<w2)) {
    time=0;
    println("down");
    saveFrame("photo-#####.png");
    fill(255, 255, 255);
    rect(0, 0, width, height);
    t++;
  }
  if(j<=1){
    noLoop();
  }
}
