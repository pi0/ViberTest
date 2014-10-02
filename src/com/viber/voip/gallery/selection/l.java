package com.viber.voip.gallery.selection;

import android.view.View;
import android.view.View.OnLongClickListener;
import com.viber.voip.gallery.a.d;

class l
  implements View.OnLongClickListener
{
  l(j paramj) {}
  
  public boolean onLongClick(View paramView)
  {
    d locald = j.a(this.a, paramView);
    if (locald != null)
    {
      j.a(this.a).b(locald);
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.selection.l
 * JD-Core Version:    0.7.0.1
 */