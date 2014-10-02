package com.viber.voip.sound;

import android.os.HandlerThread;
import android.os.Looper;

final class SoundServiceThreadSafeDelegate$DelegateHandlerThread
  extends HandlerThread
{
  private Looper _looper;
  
  public SoundServiceThreadSafeDelegate$DelegateHandlerThread()
  {
    super("SoundService handler thread");
    start();
    try
    {
      for (;;)
      {
        Looper localLooper = this._looper;
        if (localLooper != null) {
          break;
        }
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      return;
    }
    finally {}
  }
  
  public Looper getLooper()
  {
    return this._looper;
  }
  
  public boolean quit()
  {
    this._looper.quit();
    return true;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: invokestatic 37	android/os/Looper:prepare	()V
    //   3: aload_0
    //   4: invokestatic 40	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   7: putfield 20	com/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread:_looper	Landroid/os/Looper;
    //   10: aload_0
    //   11: monitorenter
    //   12: aload_0
    //   13: invokevirtual 43	java/lang/Object:notifyAll	()V
    //   16: aload_0
    //   17: monitorexit
    //   18: invokestatic 46	android/os/Looper:loop	()V
    //   21: return
    //   22: astore_2
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_2
    //   26: athrow
    //   27: astore_1
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	DelegateHandlerThread
    //   27	2	1	localObject1	Object
    //   22	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   12	18	22	finally
    //   23	25	22	finally
    //   3	12	27	finally
    //   18	21	27	finally
    //   25	27	27	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.SoundServiceThreadSafeDelegate.DelegateHandlerThread
 * JD-Core Version:    0.7.0.1
 */