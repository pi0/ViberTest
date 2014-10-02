package com.viber.voip.messages.adapters;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView;
import com.viber.voip.stickers.ba;
import com.viber.voip.stickers.bb;
import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.f.b;

class d
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  d(MediaLayout paramMediaLayout, View paramView, int paramInt, a parama, boolean paramBoolean) {}
  
  @SuppressLint({"NewApi"})
  public void onGlobalLayout()
  {
    boolean bool;
    label48:
    int i;
    label60:
    int j;
    label72:
    bb localbb;
    if (this.a.getHeight() != 0)
    {
      if (Build.VERSION.SDK_INT < 16) {
        break label144;
      }
      this.e.getViewTreeObserver().removeOnGlobalLayoutListener(this);
      if (this.a.getHeight() <= this.c.q) {
        break label158;
      }
      bool = true;
      if (!bool) {
        break label163;
      }
      i = this.c.p;
      if (!bool) {
        break label194;
      }
      j = this.c.q;
      localbb = this.e.getStickerSvgController();
      if (this.d) {
        break label205;
      }
    }
    label144:
    label158:
    label163:
    label194:
    label205:
    for (String str = this.c.v;; str = this.c.u)
    {
      b localb = new b(localbb.a(i, j, str, true, ba.b, bool));
      bb.a(this.e.a, false);
      this.e.a.setImageDrawable(localb);
      return;
      this.e.getViewTreeObserver().removeGlobalOnLayoutListener(this);
      break;
      bool = false;
      break label48;
      i = (int)(this.c.p * (this.a.getHeight() / this.c.q));
      break label60;
      j = this.a.getHeight();
      break label72;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.d
 * JD-Core Version:    0.7.0.1
 */