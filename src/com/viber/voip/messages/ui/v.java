package com.viber.voip.messages.ui;

import android.view.View;
import android.widget.TextView;
import com.viber.voip.messages.extras.image.h;

class v
{
  private View b;
  private View c;
  private TextView d;
  
  public v(k paramk, View paramView1, View paramView2)
  {
    this.b = paramView1;
    this.c = paramView2;
    this.d = ((TextView)this.c.findViewById(2131166144));
    a();
  }
  
  public void a()
  {
    if (h.a())
    {
      b();
      return;
    }
    c();
  }
  
  public void b()
  {
    if (this.a.e.getVisibility() != 0)
    {
      this.b.setVisibility(0);
      this.c.setVisibility(8);
    }
  }
  
  public void c()
  {
    this.b.setVisibility(8);
    this.c.setVisibility(0);
    this.d.setText(2131494345);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.v
 * JD-Core Version:    0.7.0.1
 */