package com.viber.voip.phone.b;

import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.ImageView;
import com.viber.voip.util.b.a.a;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.util.gl;

class d
  implements Runnable
{
  d(c paramc, View paramView, int paramInt, Uri paramUri) {}
  
  public void run()
  {
    if ((this.a.getMeasuredWidth() > 0) || (this.a.getMeasuredHeight() > 0))
    {
      FragmentActivity localFragmentActivity = this.d.getActivity();
      z localz;
      if (localFragmentActivity != null)
      {
        localz = x.a(this.a.getMeasuredWidth(), this.a.getMeasuredHeight()).b();
        localz.b(this.b, localFragmentActivity);
        if ((this.a instanceof ImageView)) {
          c.a(this.d).a(this.c, (ImageView)this.a, localz.b());
        }
      }
      else
      {
        return;
      }
      c.a(this.d, new a(this.a));
      c.a(this.d).a(this.c, localz.b(), c.b(this.d));
      return;
    }
    gl.a(this.a, this);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.d
 * JD-Core Version:    0.7.0.1
 */