package com.viber.voip;

import android.graphics.Bitmap;
import android.net.Uri;
import com.viber.voip.util.o;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;

class ay
  implements Runnable
{
  final Uri a;
  final int b;
  
  public ay(as paramas, int paramInt, Uri paramUri)
  {
    this.a = paramUri;
    this.b = paramInt;
  }
  
  public void run()
  {
    Lock localLock = as.e(this.c).readLock();
    try
    {
      localLock.lock();
      Bitmap localBitmap = (Bitmap)as.f(this.c).get(this.a);
      localLock.unlock();
      if (localBitmap == null) {
        localBitmap = as.a(this.c, this.a, as.d(), false);
      }
      aw localaw = new aw(localBitmap, false);
      as.a(this.c, this.a, localaw);
      as.a(this.c, this.b, localaw);
      return;
    }
    finally
    {
      localLock.unlock();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ay
 * JD-Core Version:    0.7.0.1
 */