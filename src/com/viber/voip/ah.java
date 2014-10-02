package com.viber.voip;

import android.view.View;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.ActionBar.Tab;
import com.viber.voip.messages.j;

class ah
  implements Runnable
{
  ah(HomeActivity paramHomeActivity, int paramInt1, int paramInt2) {}
  
  public void run()
  {
    HomeActivity.a("setBadgesOnTab() tabIndex=" + this.a + ", count=" + this.b);
    int i = this.a;
    if (i >= this.c.getSupportActionBar().getTabCount()) {}
    for (int j = 0;; j = i)
    {
      View localView = this.c.getSupportActionBar().getTabAt(j).getCustomView().findViewById(2131165486);
      if (localView == null) {
        return;
      }
      if (3 == j)
      {
        int k = this.b;
        int m = 0;
        if (k > 0) {}
        for (;;)
        {
          localView.setVisibility(m);
          return;
          m = 8;
        }
      }
      TextView localTextView = (TextView)localView;
      if (this.b > 0)
      {
        if (j == 0) {}
        for (String str = j.b(this.b);; str = String.valueOf(this.b))
        {
          localTextView.setText(str);
          localTextView.setVisibility(0);
          return;
        }
      }
      localTextView.setText("");
      localTextView.setVisibility(8);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ah
 * JD-Core Version:    0.7.0.1
 */