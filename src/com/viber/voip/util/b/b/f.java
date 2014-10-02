package com.viber.voip.util.b.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.b.l;

public class f
  implements l
{
  private final int a;
  
  public f(Context paramContext)
  {
    this.a = paramContext.getResources().getDimensionPixelSize(2131362321);
  }
  
  public Bitmap a(Bitmap paramBitmap)
  {
    Path localPath = new Path();
    localPath.addRoundRect(new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight()), this.a, this.a, Path.Direction.CCW);
    return h.a(paramBitmap, localPath);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.b.b.f
 * JD-Core Version:    0.7.0.1
 */