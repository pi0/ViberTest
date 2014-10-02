package com.viber.voip.contacts.ui;

import android.app.Activity;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.ui.ViberTextView;

class bv
  implements Runnable
{
  bv(bu parambu, int paramInt, Activity paramActivity) {}
  
  public void run()
  {
    int i = 1;
    int j;
    if ((this.c.q.getVisibility() == 8) && (this.a != 4))
    {
      j = i;
      label27:
      if ((this.c.q.getVisibility() != 0) || (this.a != 4)) {
        break label114;
      }
      label48:
      if (!ViberApplication.isTablet())
      {
        if (j == 0) {
          break label119;
        }
        this.c.q.setVisibility(0);
      }
    }
    for (;;)
    {
      switch (this.a)
      {
      default: 
        return;
        j = 0;
        break label27;
        label114:
        i = 0;
        break label48;
        label119:
        if (i != 0)
        {
          this.c.q.setVisibility(8);
          this.c.q.startAnimation(AnimationUtils.loadAnimation(this.b, 2130968601));
        }
        break;
      }
    }
    this.c.r.setText(2131493685);
    this.c.o.setVisibility(8);
    this.c.p.setVisibility(0);
    return;
    this.c.r.setText(2131493687);
    this.c.o.setVisibility(0);
    this.c.p.setVisibility(8);
    return;
    this.c.r.setText(2131493686);
    this.c.o.setVisibility(8);
    this.c.p.setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bv
 * JD-Core Version:    0.7.0.1
 */