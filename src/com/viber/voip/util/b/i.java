package com.viber.voip.util.b;

class i
  implements Runnable
{
  i(h paramh, Runnable paramRunnable) {}
  
  public void run()
  {
    try
    {
      this.a.run();
      return;
    }
    finally
    {
      this.b.a();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.i
 * JD-Core Version:    0.7.0.1
 */