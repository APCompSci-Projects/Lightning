void setup()
{
  size(500,500);
}
void draw()
{
  float endX = 250;
  float endY = 500;
  float startX = 250;
  float startY = 160;
  stroke(0,0,0);
  fill(255,255,200);
  line(250,0,250,90);
  strokeWeight(2);
  bezier(195,130,245,80,255,80,310,130);
  fill(255,255,255);
  rect(243,130,15,30);
  ellipse(250,150,30,30);
  fill(160,82,45);
  rect(165,400,180,30);
  rect(190,430,20,70);
  rect(300,430,20,70);
}

void mousePressed()
{
  float endX = 250;
  float endY = 500;
  float startX = 250;
  float startY = 160;
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  while(endX <= 280)
  {
    endX = (int)(startX) + ((int)(Math.random()*10));
    endY = (int)(startY) + (9 +(int)(Math.random()*19));
    startX = endX;
    startY = endY;
    line(startX,startY,endX,endY);
  }
}