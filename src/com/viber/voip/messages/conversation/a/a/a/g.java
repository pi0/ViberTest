package com.viber.voip.messages.conversation.a.a.a;

import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import com.viber.voip.messages.conversation.a.a.b.a.b;

class g
  extends com.viber.voip.ui.b.a<com.viber.voip.messages.conversation.a.a.a, b>
{
  private View a;
  private View b;
  private TextView c;
  private ViewStub d;
  
  public g(View paramView)
  {
    super(paramView);
    this.d = ((ViewStub)paramView.findViewById(2131165959));
  }
  
  private void a()
  {
    this.a = this.d.inflate();
    this.b = this.a.findViewById(2131165970);
    this.c = ((TextView)this.a.findViewById(2131165411));
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, b paramb)
  {
    if ((parama.i()) || (parama.j()))
    {
      if (this.a == null) {
        a();
      }
      if (this.a.getVisibility() != 4) {
        this.a.setVisibility(0);
      }
      if (parama.j())
      {
        if (this.c.getVisibility() != 4)
        {
          this.c.setVisibility(0);
          this.c.setText(parama.O());
          this.c.setTextColor(paramb.b());
          this.c.setGravity(17);
        }
        if (!parama.i()) {
          break label139;
        }
        this.b.setVisibility(0);
      }
    }
    label139:
    while (this.a == null)
    {
      for (;;)
      {
        return;
        this.c.setVisibility(8);
      }
      this.b.setVisibility(8);
      return;
    }
    this.a.setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.g
 * JD-Core Version:    0.7.0.1
 */