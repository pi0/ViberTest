package com.viber.voip;

import com.viber.voip.widget.MessageBar;

class af
  implements Runnable
{
  af(HomeActivity paramHomeActivity) {}
  
  public void run()
  {
    HomeActivity.a("onServiceStateChanged state:Connecting");
    if (HomeActivity.b(this.a) != null)
    {
      HomeActivity.b(this.a).b();
      HomeActivity.b(this.a).a(this.a.getString(2131494382), "", 2130837874, 2130837643, true, true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.af
 * JD-Core Version:    0.7.0.1
 */