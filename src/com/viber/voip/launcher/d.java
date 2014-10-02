package com.viber.voip.launcher;

class d
  implements Runnable
{
  d(c paramc, int paramInt1, int paramInt2) {}
  
  public void run()
  {
    RecentCallsWidget.a(this.c.c, "onReceive(ACTION_UPDATE_WIDGETS): " + this.a + ", messagesCount:" + this.b);
    RecentCallsWidget.a(this.c.c, this.c.b, this.a, this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.launcher.d
 * JD-Core Version:    0.7.0.1
 */