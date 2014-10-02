package com.viber.voip.util;

import android.content.ContentResolver;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicInteger;

public class fp
  extends Handler
{
  public fp(fe paramfe, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    ContentResolver localContentResolver = (ContentResolver)this.a.a.get();
    if (localContentResolver == null) {
      return;
    }
    fo localfo = (fo)paramMessage.obj;
    int i = paramMessage.what;
    switch (paramMessage.arg1)
    {
    }
    Message localMessage;
    for (;;)
    {
      localMessage = localfo.b.obtainMessage(i);
      localMessage.obj = localfo;
      localMessage.arg1 = paramMessage.arg1;
      if ((!localfo.k) && (!localfo.m)) {
        break;
      }
      localMessage.getTarget().sendMessageAtFrontOfQueue(localMessage);
      return;
      for (;;)
      {
        try
        {
          fe.a().acquireUninterruptibly();
          Cursor localCursor3 = localContentResolver.query(localfo.a, localfo.c, localfo.d, localfo.e, localfo.f);
          localCursor2 = localCursor3;
          if (localCursor2 == null) {}
        }
        catch (Exception localException5)
        {
          try
          {
            localCursor2.getCount();
            fe.a(this.a).incrementAndGet();
            localfo.g = localCursor2;
          }
          catch (Exception localException6)
          {
            for (;;)
            {
              Cursor localCursor2;
              fj localfj;
              Object localObject1;
              fe localfe;
              Object[] arrayOfObject;
              Cursor localCursor1 = localCursor2;
              Object localObject2 = localException6;
            }
          }
          localException5 = localException5;
          localCursor1 = null;
        }
        Log.w(fe.b(), localException5.toString());
        al.a(localCursor1);
        fe.a().release();
        localCursor2 = null;
      }
      if (localfo.o == null)
      {
        localfo.g = localContentResolver.insert(localfo.a, localfo.i);
      }
      else
      {
        try
        {
          localfo.g = localContentResolver.insert(localfo.a, localfo.i);
        }
        catch (Exception localException4)
        {
          localfo.j = localException4;
        }
        continue;
        localfo.g = Integer.valueOf(localContentResolver.update(localfo.a, localfo.i, localfo.d, localfo.e));
        continue;
        localfo.g = Integer.valueOf(localContentResolver.delete(localfo.a, localfo.d, localfo.e));
        continue;
        try
        {
          localfo.g = localContentResolver.applyBatch(localfo.d, localfo.t);
        }
        catch (Exception localException3)
        {
          localfo.j = localException3;
        }
        continue;
        try
        {
          localfo.g = Integer.valueOf(localContentResolver.bulkInsert(localfo.a, localfo.u));
        }
        catch (Exception localException2)
        {
          localfo.j = localException2;
        }
        continue;
        try
        {
          localfj = localfo.w;
          localObject1 = localfo.h;
          localfe = this.a;
          arrayOfObject = new Object[1];
          arrayOfObject[0] = localfo.v;
          localfo.g = localfj.a(i, localObject1, localfe, localContentResolver, arrayOfObject);
        }
        catch (Exception localException1)
        {
          localfo.j = localException1;
        }
      }
    }
    localMessage.sendToTarget();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.fp
 * JD-Core Version:    0.7.0.1
 */