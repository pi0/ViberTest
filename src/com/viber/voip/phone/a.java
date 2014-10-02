package com.viber.voip.phone;

import android.content.Context;
import com.viber.voip.contacts.b.b;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;

class a
  implements Runnable
{
  a(CallCard paramCallCard, b paramb) {}
  
  public void run()
  {
    Context localContext = this.b.getContext();
    w localw = w.a(localContext);
    x localx = new z().a(true).a(2130837615, localContext).b(2130837615, localContext).b();
    localw.a(null, this.a.b(), CallCard.a(this.b), localx);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.a
 * JD-Core Version:    0.7.0.1
 */