package com.viber.voip.phone;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.e.q;
import com.viber.voip.widget.PausableChronometer;

class j
  extends q
{
  j(i parami) {}
  
  private void a(int paramInt)
  {
    if (i.e(this.a) != null)
    {
      i.h(this.a).setImageResource(2130837634);
      i.a(this.a).setText(paramInt);
    }
    i.a(this.a, false);
  }
  
  private void a(String paramString1, String paramString2, int paramInt)
  {
    i.a(this.a, true);
    i.b(this.a);
    boolean bool = paramString1.equals(i.c(this.a).getString(2131493744));
    TextView localTextView = i.d(this.a);
    if (bool) {}
    for (;;)
    {
      localTextView.setText(paramString2);
      i.a(this.a).setText(paramInt);
      return;
      paramString2 = paramString1;
    }
  }
  
  public void a()
  {
    a(2131493720);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int i = 2131493718;
    if (3 == paramInt2) {
      i = 2131493719;
    }
    for (;;)
    {
      a(i);
      return;
      if (1 == paramInt1) {
        i = 2131493716;
      }
    }
  }
  
  public void a(long paramLong)
  {
    i.a(this.a).setBase(SystemClock.elapsedRealtime() - paramLong);
  }
  
  public void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, 2131493808);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      i.a(this.a).setText(2131494226);
    }
  }
  
  public void b()
  {
    a(2131493720);
    if (i.e(this.a) != null)
    {
      i.e(this.a).setOnClickListener(null);
      dc.a(dk.a).postDelayed(new k(this), 5000L);
    }
  }
  
  public void b(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, 2131493809);
  }
  
  public void b(boolean paramBoolean)
  {
    ImageView localImageView;
    if (i.h(this.a) != null)
    {
      localImageView = i.h(this.a);
      if (!paramBoolean) {
        break label47;
      }
    }
    label47:
    for (int i = 2130838515;; i = 2130837635)
    {
      localImageView.setImageResource(i);
      if (paramBoolean) {
        i.a(this.a).setText(2131493906);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.j
 * JD-Core Version:    0.7.0.1
 */