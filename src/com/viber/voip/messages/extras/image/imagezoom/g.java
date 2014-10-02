package com.viber.voip.messages.extras.image.imagezoom;

import android.graphics.RectF;
import android.os.Handler;

class g
  implements Runnable
{
  float a = 0.0F;
  float b = 0.0F;
  
  g(e parame, float paramFloat1, long paramLong, float paramFloat2, float paramFloat3) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    float f1 = Math.min(this.c, (float)(l - this.d));
    float f2 = a.a(f1, 0.0F, this.e, this.c);
    float f3 = a.a(f1, 0.0F, this.f, this.c);
    this.g.e(f2 - this.a, f3 - this.b);
    this.a = f2;
    this.b = f3;
    if (f1 < this.c) {
      this.g.o.post(this);
    }
    RectF localRectF;
    do
    {
      return;
      localRectF = this.g.b(true, true);
    } while ((localRectF.left == 0.0F) && (localRectF.top == 0.0F));
    this.g.d(localRectF.left, localRectF.top);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.imagezoom.g
 * JD-Core Version:    0.7.0.1
 */