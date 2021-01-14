float x0, y0;
float x1, y1;
float x2, y2;
float a[];
float b[];
int i=0;
void setup() {
  size(2000, 1000);
  background(255, 255, 255);
  for (x0=0.001; x0<1; x0=x0+0.001) {
    for (y0=0.001; y0<1; y0=y0+0.001) {
      x2=(sq(x1)-sq(y1))+x0;
      y2=2*(x1*y1)+y0;
      println(x2);
      a[i]=x2;
      b[i]=y2;
      for (int m=0; m<a.length; m++) {
        for (int n=0; n<b.length; n++) {
          if ((a[m]==a[i])&&(b[n]==b[i])) {
            stroke(0);
            point(a[i]*100+1000, b[i]*100+500);
            for (int w=0; w<a.length; w++) {
              for (int e=0; e<b.length; e++) {
                a[w]=0;
                b[e]=0;
              }
            }
          }
        }
        i++;
        x1=x2;
        y1=y2;
      }
    }
    println("down");
  }
}
