package com.viber.voip.block;

import android.os.Parcelable;
import com.viber.voip.a.bc;
import com.viber.voip.a.f;
import com.viber.voip.contacts.c.a.a;
import com.viber.voip.widget.a.d;
import java.util.Set;

final class l
  implements d
{
  l(Set paramSet, Runnable paramRunnable) {}
  
  public void a(Parcelable paramParcelable)
  {
    i.b().b(this.a);
    bc.a().a(i.c().f());
    if (this.b != null) {
      this.b.run();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.block.l
 * JD-Core Version:    0.7.0.1
 */