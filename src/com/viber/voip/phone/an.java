package com.viber.voip.phone;

import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.viber.voip.util.b.a.a;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.util.gl;

class an
  implements Runnable
{
  an(al paramal, View paramView, Uri paramUri) {}
  
  public void run()
  {
    if ((this.a.getMeasuredWidth() > 0) || (this.a.getMeasuredHeight() > 0))
    {
      z localz = x.a(this.a.getMeasuredWidth(), this.a.getMeasuredHeight()).b();
      if ((this.a instanceof ImageView))
      {
        al.b(this.c).a(this.b, (ImageView)this.a, localz.b());
        return;
      }
      al.a(this.c, new a(this.a));
      al.b(this.c).a(this.b, localz.b(), al.c(this.c));
      return;
    }
    gl.a(this.a, this);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.an
 * JD-Core Version:    0.7.0.1
 */