package com.viber.voip.util.b.a;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import com.viber.voip.util.b.al;
import com.viber.voip.util.gl;

public class a
  implements al
{
  private View a;
  
  public a(View paramView)
  {
    this.a = paramView;
  }
  
  public void a(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean)
  {
    BitmapDrawable localBitmapDrawable = null;
    if (paramBitmap != null)
    {
      localBitmapDrawable = new BitmapDrawable(this.a.getResources(), paramBitmap);
      localBitmapDrawable.setDither(true);
    }
    gl.a(this.a, localBitmapDrawable);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.a.a
 * JD-Core Version:    0.7.0.1
 */