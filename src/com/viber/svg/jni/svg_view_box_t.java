package com.viber.svg.jni;

public class svg_view_box_t
{
  int aspect_ratio;
  public double height;
  int meet_or_slice;
  public double width;
  public double x;
  public double y;
  
  public svg_view_box_t(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, int paramInt1, int paramInt2)
  {
    this.x = paramDouble1;
    this.y = paramDouble2;
    this.height = paramDouble4;
    this.width = paramDouble3;
    this.aspect_ratio = paramInt1;
    this.meet_or_slice = paramInt2;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.svg.jni.svg_view_box_t
 * JD-Core Version:    0.7.0.1
 */