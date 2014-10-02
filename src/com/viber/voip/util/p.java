package com.viber.voip.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;

public class p
  extends BitmapDrawable
{
  protected static final String a = p.class.getSimpleName();
  
  public p() {}
  
  public p(Resources paramResources, Bitmap paramBitmap)
  {
    super(paramResources, paramBitmap);
  }
  
  public p(Bitmap paramBitmap)
  {
    super(paramBitmap);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
  }
  
  protected void finalize()
  {
    super.finalize();
    setCallback(null);
    Bitmap localBitmap = getBitmap();
    if ((localBitmap != null) && (localBitmap.isRecycled())) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.p
 * JD-Core Version:    0.7.0.1
 */