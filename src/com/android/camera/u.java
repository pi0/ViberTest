package com.android.camera;

import android.os.Handler;

class u
  implements Runnable
{
  u(s params, float paramFloat1, long paramLong, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    float f1 = Math.min(this.a, (float)(l - this.b));
    float f2 = this.c + f1 * this.d;
    this.g.a(f2, this.e, this.f);
    if (f1 < this.a) {
      this.g.l.post(this);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.u
 * JD-Core Version:    0.7.0.1
 */