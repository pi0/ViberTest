package com.viber.voip.stickers.f;

import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.drawable.PictureDrawable;

public class b
  extends PictureDrawable
{
  public static final String a = b.class.getSimpleName();
  private boolean b = false;
  
  public b(Picture paramPicture)
  {
    super(paramPicture);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
  }
  
  public boolean isStateful()
  {
    return true;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int j = 0;
    if (j < i)
    {
      int k = paramArrayOfInt[j];
      if (16842910 == k) {}
      for (;;)
      {
        j++;
        break;
        if ((16842919 == k) || (16842908 != k)) {}
      }
    }
    return super.onStateChange(paramArrayOfInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.f.b
 * JD-Core Version:    0.7.0.1
 */