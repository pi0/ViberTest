package com.android.camera;

import android.graphics.Bitmap;
import java.util.concurrent.CountDownLatch;

class h
  implements Runnable
{
  h(g paramg, Bitmap paramBitmap, CountDownLatch paramCountDownLatch) {}
  
  public void run()
  {
    if ((this.a != CropImage.c(this.c.a)) && (this.a != null))
    {
      CropImage.d(this.c.a).a(this.a, true);
      CropImage.c(this.c.a).recycle();
      CropImage.a(this.c.a, this.a);
    }
    if (CropImage.d(this.c.a).b() == 1.0F) {
      CropImage.d(this.c.a).a(true, true);
    }
    this.b.countDown();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.camera.h
 * JD-Core Version:    0.7.0.1
 */