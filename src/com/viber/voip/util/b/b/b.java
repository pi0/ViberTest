package com.viber.voip.util.b.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.b.l;

public class b
  implements l
{
  private final int a;
  private final int b;
  
  public b(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    this.b = localResources.getDimensionPixelSize(2131362307);
    this.a = localResources.getDimensionPixelSize(2131362308);
  }
  
  public Bitmap a(Bitmap paramBitmap)
  {
    Bitmap localBitmap = h.b(h.a(paramBitmap), this.b, 4, false);
    Path localPath = new Path();
    localPath.addRoundRect(new RectF(0.0F, 0.0F, this.b, this.b), this.a, this.a, Path.Direction.CCW);
    return h.a(localBitmap, localPath);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.b.b
 * JD-Core Version:    0.7.0.1
 */