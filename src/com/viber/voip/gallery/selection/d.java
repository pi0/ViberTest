package com.viber.voip.gallery.selection;

import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.gallery.a.b;

class d
  implements View.OnClickListener
{
  d(c paramc) {}
  
  public void onClick(View paramView)
  {
    b localb = (b)paramView.getTag();
    if (localb != null) {
      c.a(this.a).a(localb);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.selection.d
 * JD-Core Version:    0.7.0.1
 */