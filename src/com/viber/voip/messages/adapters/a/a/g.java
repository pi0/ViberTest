package com.viber.voip.messages.adapters.a.a;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.viber.voip.messages.adapters.a.b;
import com.viber.voip.messages.adapters.a.b.a;
import com.viber.voip.messages.h;
import com.viber.voip.messages.ui.bb;

public class g
  extends c<b>
{
  private final TextView h;
  private final View i;
  
  protected g(View paramView, h paramh, bb parambb)
  {
    super(paramView, paramh, parambb);
    this.h = ((TextView)paramView.findViewById(2131165419));
    this.i = paramView.findViewById(2131165418);
  }
  
  @SuppressLint({"InlinedApi"})
  public void a(b paramb, a parama)
  {
    int j = 1;
    super.a(paramb, parama);
    TextView localTextView1 = this.h;
    Resources localResources = this.k.getResources();
    Object[] arrayOfObject = new Object[j];
    arrayOfObject[0] = Integer.valueOf(paramb.E());
    localTextView1.setText(localResources.getString(2131494514, arrayOfObject));
    int k;
    label89:
    View localView;
    int m;
    if (j == paramb.D())
    {
      boolean bool = paramb.H();
      TextView localTextView2 = this.a;
      if (!bool) {
        break label146;
      }
      k = 2130838559;
      localTextView2.setCompoundDrawablesWithIntrinsicBounds(0, 0, k, 0);
      localView = this.i;
      m = 0;
      if (j == 0) {
        break label152;
      }
    }
    for (;;)
    {
      localView.setVisibility(m);
      this.h.setTextColor(parama.b(paramb.d(), parama.h()));
      return;
      j = 0;
      break;
      label146:
      k = 0;
      break label89;
      label152:
      m = 4;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.a.a.g
 * JD-Core Version:    0.7.0.1
 */