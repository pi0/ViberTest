package com.viber.voip.messages.extras.image.imagezoom;

public class a
{
  public static float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f = paramFloat1 / paramFloat4 - 1.0F;
    return paramFloat2 + paramFloat3 * (1.0F + f * (f * f));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.imagezoom.a
 * JD-Core Version:    0.7.0.1
 */