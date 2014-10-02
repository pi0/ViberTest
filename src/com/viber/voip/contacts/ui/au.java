package com.viber.voip.contacts.ui;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.gallery.animation.SwipeableHListView;
import com.viber.voip.ui.aa;

class au
  implements View.OnClickListener
{
  au(ap paramap) {}
  
  @SuppressLint({"NewApi"})
  public void onClick(View paramView)
  {
    paramView.requestFocusFromTouch();
    Integer localInteger = (Integer)paramView.getTag();
    if (localInteger == null) {}
    Pair localPair;
    do
    {
      return;
      localPair = ap.a(this.a).b(localInteger.intValue());
      if ((localPair != null) && (localPair.second != null))
      {
        if ((!TextUtils.isEmpty(this.a.c.a())) && (TextUtils.isEmpty(ap.b(this.a)))) {}
        for (int i = 500;; i = 0)
        {
          ap.a(this.a, "");
          this.a.c.a("");
          if (ap.c(this.a) == 0) {
            ap.a(this.a, this.a.getResources().getDimensionPixelSize(2131362025));
          }
          ap.e(this.a).postDelayed(new av(this, localPair), i);
          return;
        }
      }
    } while (localPair == null);
    this.a.c.a("");
    ap.a(this.a, (String)localPair.first);
    this.a.c.a(ap.b(this.a));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.au
 * JD-Core Version:    0.7.0.1
 */