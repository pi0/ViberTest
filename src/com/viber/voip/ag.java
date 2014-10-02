package com.viber.voip;

import com.actionbarsherlock.app.ActionBar;
import com.viber.voip.util.fz;

class ag
  implements Runnable
{
  ag(HomeActivity paramHomeActivity) {}
  
  public void run()
  {
    int i = 1;
    int j = this.a.getSupportActionBar().getSelectedNavigationIndex();
    HomeActivity.a("initBadges() tabIndex=" + j);
    int k = HomeActivity.e(this.a).g();
    HomeActivity.a(this.a, 0, k);
    int m = HomeActivity.e(this.a).d();
    HomeActivity.a(this.a, i, m);
    boolean bool = HomeActivity.e(this.a).e();
    HomeActivity localHomeActivity = this.a;
    if (bool) {}
    for (;;)
    {
      HomeActivity.a(localHomeActivity, 3, i);
      return;
      i = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ag
 * JD-Core Version:    0.7.0.1
 */