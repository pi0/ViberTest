package com.viber.voip.util;

import java.util.concurrent.Semaphore;

class fi
  extends Semaphore
{
  public fi(int paramInt)
  {
    super(paramInt);
  }
  
  public void acquireUninterruptibly() {}
  
  public void release() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.fi
 * JD-Core Version:    0.7.0.1
 */