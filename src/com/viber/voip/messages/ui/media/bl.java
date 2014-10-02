package com.viber.voip.messages.ui.media;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

class bl
{
  public final ProgressBar a;
  public final TextView b;
  public final ImageView c;
  public final View d;
  private Runnable f = new bm(this);
  
  protected bl(bj parambj, View paramView)
  {
    this.a = ((ProgressBar)paramView.findViewById(2131166229));
    this.b = ((TextView)paramView.findViewById(2131166230));
    this.c = ((ImageView)paramView.findViewById(2131165841));
    this.d = paramView.findViewById(2131165712);
  }
  
  private void b()
  {
    this.b.removeCallbacks(this.f);
    this.b.postDelayed(this.f, 200L);
  }
  
  public void a()
  {
    this.b.removeCallbacks(this.f);
    this.a.setVisibility(8);
    this.b.setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.bl
 * JD-Core Version:    0.7.0.1
 */