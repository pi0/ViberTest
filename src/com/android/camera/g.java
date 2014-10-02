package com.android.camera;

import android.graphics.Bitmap;
import android.os.Handler;
import java.util.concurrent.CountDownLatch;

class g
  implements Runnable
{
  g(CropImage paramCropImage) {}
  
  public void run()
  {
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    Bitmap localBitmap = CropImage.a(this.a, CropImage.b(this.a), CropImage.c(this.a));
    CropImage.e(this.a).post(new h(this, localBitmap, localCountDownLatch));
    try
    {
      localCountDownLatch.await();
      this.a.d.run();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new RuntimeException(localInterruptedException);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.g
 * JD-Core Version:    0.7.0.1
 */