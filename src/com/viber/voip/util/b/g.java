package com.viber.voip.util.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class g
  extends Handler
{
  public g()
  {
    super(Looper.getMainLooper());
  }
  
  public void handleMessage(Message paramMessage)
  {
    f localf = (f)paramMessage.obj;
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      a.c(localf.a, localf.b[0]);
      return;
    }
    localf.a.b(localf.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.b.g
 * JD-Core Version:    0.7.0.1
 */