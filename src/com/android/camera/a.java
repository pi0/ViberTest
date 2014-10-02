package com.android.camera;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.util.Log;
import java.io.FileDescriptor;
import java.util.WeakHashMap;

public class a
{
  private static a b = null;
  private final WeakHashMap<Thread, d> a = new WeakHashMap();
  
  public static a a()
  {
    try
    {
      if (b == null) {
        b = new a();
      }
      a locala = b;
      return locala;
    }
    finally {}
  }
  
  private void a(Thread paramThread, BitmapFactory.Options paramOptions)
  {
    try
    {
      c(paramThread).b = paramOptions;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private d c(Thread paramThread)
  {
    try
    {
      d locald = (d)this.a.get(paramThread);
      if (locald == null)
      {
        locald = new d(null);
        this.a.put(paramThread, locald);
      }
      return locald;
    }
    finally {}
  }
  
  public Bitmap a(FileDescriptor paramFileDescriptor, BitmapFactory.Options paramOptions)
  {
    if (paramOptions.mCancel) {
      return null;
    }
    Thread localThread = Thread.currentThread();
    if (!b(localThread))
    {
      Log.d("BitmapManager", "Thread " + localThread + " is not allowed to decode.");
      return null;
    }
    a(localThread, paramOptions);
    Bitmap localBitmap = BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, paramOptions);
    a(localThread);
    return localBitmap;
  }
  
  void a(Thread paramThread)
  {
    try
    {
      ((d)this.a.get(paramThread)).b = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public boolean b(Thread paramThread)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 21	com/android/camera/a:a	Ljava/util/WeakHashMap;
    //   8: aload_1
    //   9: invokevirtual 37	java/util/WeakHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   12: checkcast 30	com/android/camera/d
    //   15: astore 4
    //   17: aload 4
    //   19: ifnonnull +7 -> 26
    //   22: aload_0
    //   23: monitorexit
    //   24: iload_2
    //   25: ireturn
    //   26: aload 4
    //   28: getfield 100	com/android/camera/d:a	Lcom/android/camera/c;
    //   31: astore 5
    //   33: getstatic 103	com/android/camera/c:a	Lcom/android/camera/c;
    //   36: astore 6
    //   38: aload 5
    //   40: aload 6
    //   42: if_acmpeq +12 -> 54
    //   45: iload_2
    //   46: istore 7
    //   48: iload 7
    //   50: istore_2
    //   51: goto -29 -> 22
    //   54: iconst_0
    //   55: istore 7
    //   57: goto -9 -> 48
    //   60: astore_3
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_3
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	a
    //   0	65	1	paramThread	Thread
    //   1	50	2	bool1	boolean
    //   60	4	3	localObject	Object
    //   15	12	4	locald	d
    //   31	8	5	localc1	c
    //   36	5	6	localc2	c
    //   46	10	7	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   4	17	60	finally
    //   26	38	60	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.camera.a
 * JD-Core Version:    0.7.0.1
 */