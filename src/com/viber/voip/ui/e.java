package com.viber.voip.ui;

import android.view.View;
import android.widget.ProgressBar;

public class e
{
  private View a;
  private ProgressBar b;
  
  public boolean a(View paramView)
  {
    if (f()) {
      return false;
    }
    this.a = paramView;
    this.b = ((ProgressBar)paramView.findViewById(2131165393));
    if (this.b != null) {
      this.b.setVisibility(8);
    }
    return true;
  }
  
  public void b(boolean paramBoolean)
  {
    if (this.b == null) {
      return;
    }
    if (paramBoolean)
    {
      this.b.setVisibility(0);
      return;
    }
    this.b.setVisibility(8);
  }
  
  public boolean e()
  {
    return (this.b != null) && (this.b.getVisibility() == 0);
  }
  
  public boolean f()
  {
    return this.a != null;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.e
 * JD-Core Version:    0.7.0.1
 */