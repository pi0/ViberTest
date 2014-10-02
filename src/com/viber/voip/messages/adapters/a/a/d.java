package com.viber.voip.messages.adapters.a.a;

import android.view.View;
import android.widget.TextView;
import com.viber.voip.messages.j;

public class d<T extends com.viber.voip.messages.adapters.a.a>
  extends e<T>
{
  private final View b;
  
  protected d(View paramView)
  {
    super(paramView);
    this.b = paramView.findViewById(2131165413);
  }
  
  public void a(T paramT, com.viber.voip.messages.adapters.a.b.a parama)
  {
    boolean bool = paramT.d();
    int i = paramT.b();
    int j = paramT.c();
    View localView;
    int k;
    if (bool)
    {
      this.a.setVisibility(0);
      this.a.setText(j.b(i + j));
      localView = this.b;
      k = 0;
      if (j == 0) {
        break label83;
      }
    }
    for (;;)
    {
      localView.setVisibility(k);
      return;
      this.a.setVisibility(4);
      break;
      label83:
      k = 4;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.adapters.a.a.d
 * JD-Core Version:    0.7.0.1
 */