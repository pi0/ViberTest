package com.viber.voip.block;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.a.bc;
import com.viber.voip.a.f;
import com.viber.voip.contacts.c.a.a;

final class k
  implements DialogInterface.OnClickListener
{
  k(String paramString1, Runnable paramRunnable, n paramn, String paramString2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    i.b().a(this.a);
    bc.a().a(i.c().e());
    if (this.b != null) {
      this.b.run();
    }
    if (this.c != null) {
      this.c.a(this.d);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.block.k
 * JD-Core Version:    0.7.0.1
 */