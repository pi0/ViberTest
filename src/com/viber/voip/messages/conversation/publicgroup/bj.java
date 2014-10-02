package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.b.l;

class bj
  implements l
{
  private final int a;
  private final int b;
  
  bj(Context paramContext, int paramInt)
  {
    Resources localResources = paramContext.getResources();
    this.b = paramInt;
    this.a = localResources.getDimensionPixelSize(2131362318);
  }
  
  public Bitmap a(Bitmap paramBitmap)
  {
    Bitmap localBitmap = h.b(h.a(paramBitmap), this.b, 3, false);
    Path localPath = new Path();
    localPath.addRoundRect(new RectF(0.0F, 0.0F, localBitmap.getHeight(), localBitmap.getWidth()), this.a, this.a, Path.Direction.CCW);
    return h.a(localBitmap, localPath);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.bj
 * JD-Core Version:    0.7.0.1
 */