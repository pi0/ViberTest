package com.viber.voip.ui.call.a;

public abstract class a
  implements d
{
  protected float a;
  protected float b;
  
  public a(float paramFloat1, float paramFloat2)
  {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }
  
  public float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat3 - paramFloat1) / (paramFloat2 - paramFloat1);
  }
  
  public float b(float paramFloat)
  {
    return a(this.a, this.b, paramFloat);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.call.a.a
 * JD-Core Version:    0.7.0.1
 */