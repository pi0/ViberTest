package com.viber.voip.messages.conversation.a;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.block.i;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.registration.dj;
import com.viber.voip.widget.AutoFitButton;

class j
{
  private View b;
  private h c;
  
  private j(g paramg) {}
  
  private boolean c()
  {
    return (this.c != null) && (!this.c.l()) && (!this.c.n()) && (this.c.j() == 0L) && (!i.a(this.c.q()));
  }
  
  private void d()
  {
    if ((this.b != null) && (this.b.findViewById(2131165922) != null))
    {
      float f = ((TextView)this.b.findViewById(2131165922)).getTextSize();
      AutoFitButton localAutoFitButton = (AutoFitButton)this.b.findViewById(2131165923);
      localAutoFitButton.setDisableOnSizeChanged(true);
      localAutoFitButton.setTextSize(0, f);
    }
  }
  
  public void a()
  {
    this.b = g.a(this.a).findViewById(2131165919);
    this.b.findViewById(2131165923).setOnClickListener(new k(this));
    AutoFitButton localAutoFitButton = (AutoFitButton)this.b.findViewById(2131165922);
    localAutoFitButton.setOnClickListener(new l(this));
    localAutoFitButton.setOnSizeChangedListener(new m(this));
  }
  
  public void a(h paramh)
  {
    this.c = paramh;
    b();
  }
  
  public void a(boolean paramBoolean)
  {
    View localView;
    if (this.b != null)
    {
      localView = this.b;
      if (!paramBoolean) {
        break label24;
      }
    }
    label24:
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  public void b()
  {
    if ((c()) && (!dj.d())) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.j
 * JD-Core Version:    0.7.0.1
 */