void setup()
{
  size(500,500);
  background(211,211,211);
}
void draw()
{
  stroke(0,0,0);
  //lamp shape
  fill(255,255,200);
  line(250,0,250,90);
  strokeWeight(2);
  //lamp cover
  bezier(195,130,245,80,255,80,310,130);
  fill(255,255,255);
  //lightbulb
  rect(243,130,15,30);
  ellipse(250,150,30,30);
  fill(160,82,45);
  rect(165,400,180,30);
  rect(190,430,20,70);
  rect(300,430,20,70);
  //random color 
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  if (keyPressed)
  {
   if (key == 'r')
   {
     background(211,211,211);
   }
  }
}

void mousePressed()
{
  float endX = 250;
  float endY = 0;
  float startX = 250;
  float startY = 160;
  fill(0,30);
  rect(0,0,width,height);
  //lightning bolts
  while (endY <= 395)
  {
    strokeWeight(2);
    endX = (int)(startX) + ((int)(Math.random()*10)-4.5);
    endY = (int)(startY) + (9 +(int)(Math.random()*17));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  redraw();
  fill(255);
  text("You must hate this table then. Shame on you.",300,300,90,90);
}