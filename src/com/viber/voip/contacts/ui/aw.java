package com.viber.voip.contacts.ui;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import com.viber.voip.contacts.b.e;
import com.viber.voip.gallery.animation.b;
import com.viber.voip.ui.aa;

class aw
  implements b
{
  aw(ap paramap) {}
  
  public void a(View paramView, Object paramObject, int paramInt)
  {
    Pair localPair = ap.a(this.a).a(paramInt);
    if (localPair != null)
    {
      if ((localPair.second == null) && (!TextUtils.isEmpty(ap.b(this.a))))
      {
        ap.a(this.a, "");
        this.a.c.b();
      }
      this.a.a.a((e)localPair.second, (String)localPair.first);
    }
  }
  
  public void b(View paramView, Object paramObject, int paramInt) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.aw
 * JD-Core Version:    0.7.0.1
 */