package com.viber.voip;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class ao
  extends Handler
{
  protected String a;
  private boolean b;
  
  public ao(dk paramdk, Looper paramLooper)
  {
    super(paramLooper);
    this.a = (ao.class.getSimpleName() + '[' + paramdk.toString() + ']');
  }
  
  private boolean a(Message paramMessage)
  {
    return false;
  }
  
  public ao a(boolean paramBoolean)
  {
    this.b = paramBoolean;
    return this;
  }
  
  public void dispatchMessage(Message paramMessage)
  {
    long l1 = 0L;
    boolean bool = a(paramMessage);
    if (bool)
    {
      l1 = System.currentTimeMillis();
      ViberApplication.log(3, this.a, "dispatchMessage BEGIN: " + paramMessage.getCallback());
    }
    super.dispatchMessage(paramMessage);
    if (bool)
    {
      long l2 = System.currentTimeMillis() - l1;
      ViberApplication.log(3, this.a, "dispatchMessage END: " + paramMessage.getCallback() + " (" + l2 + "ms)");
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ao
 * JD-Core Version:    0.7.0.1
 */