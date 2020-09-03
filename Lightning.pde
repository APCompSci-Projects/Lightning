void setup()
{
  size(500,500);
}
void draw()
{
  //int lineColor = ((int)(Math.random()*250));
  //lamp shape
  fill(255,255,200);
  line(250,0,250,90);
  strokeWeight(2);
  bezier(195,130,245,80,255,80,310,130);
  fill(255,255,255);
  rect(243,130,15,30);
  ellipse(250,150,30,30);
  //stroke((float)(lineColor),(float)(lineColor),(float)(lineColor));
  //the "lightning"
  float endX = 205;
  float endY = 500;
  float startX = 260;
  float startY = 160;
  while(endX <= 500)
  {
    endX = (int)(startX) + (int)(Math.random()*10);
    endY = (int)(startY) + (int)(Math.random()*9);
    startX = endX;
    startY = endY;
    line(startX,startY,endX,endY);
  }
}

void mousePressed()
{
}