package com.viber.voip.messages.adapters.a.a;

import android.view.View;
import android.widget.TextView;
import com.viber.voip.messages.j;

public class e<T extends com.viber.voip.messages.adapters.a.a>
  extends com.viber.voip.ui.b.a<T, com.viber.voip.messages.adapters.a.b.a>
{
  protected final TextView a;
  
  protected e(View paramView)
  {
    super(paramView);
    this.a = ((TextView)paramView.findViewById(2131165414));
  }
  
  public void a(T paramT, com.viber.voip.messages.adapters.a.b.a parama)
  {
    int i = paramT.b();
    if (i == 0)
    {
      this.a.setVisibility(4);
      return;
    }
    this.a.setVisibility(0);
    this.a.setText(j.b(i));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.adapters.a.a.e
 * JD-Core Version:    0.7.0.1
 */