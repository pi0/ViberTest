package com.viber.voip.messages.extras.image.imagezoom;

import android.os.Handler;

class h
  implements Runnable
{
  h(e parame, float paramFloat1, long paramLong, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    float f1 = Math.min(this.a, (float)(l - this.b));
    float f2 = this.c + f1 * this.d;
    this.g.b(f2, this.e, this.f);
    if (f1 < this.a) {
      this.g.o.post(this);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.imagezoom.h
 * JD-Core Version:    0.7.0.1
 */