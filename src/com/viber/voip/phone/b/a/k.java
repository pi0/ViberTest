package com.viber.voip.phone.b.a;

import android.os.Handler;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.dk;

class k
  implements Runnable
{
  k(j paramj) {}
  
  public void run()
  {
    j.a(this.a, j.b(this.a, j.a(this.a).queryVoiceQuality()));
    dk.a.a().post(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.a.k
 * JD-Core Version:    0.7.0.1
 */