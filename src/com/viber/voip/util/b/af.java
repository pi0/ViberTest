package com.viber.voip.util.b;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.WeakReference;

class af
  extends BitmapDrawable
{
  private final WeakReference<ag> a;
  
  public af(Resources paramResources, Bitmap paramBitmap, ag paramag)
  {
    super(paramResources, paramBitmap);
    this.a = new WeakReference(paramag);
  }
  
  public ag a()
  {
    return (ag)this.a.get();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.af
 * JD-Core Version:    0.7.0.1
 */