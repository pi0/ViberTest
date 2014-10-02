package com.viber.voip.process;

import android.widget.Toast;
import com.viber.voip.ViberApplication;

class p
  implements Runnable
{
  p(o paramo) {}
  
  public void run()
  {
    l.a("ALERT!!! :browser process exists!!!");
    Toast.makeText(ViberApplication.getInstance(), "ALERT!!! :browser process exists!!!", 1).show();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.process.p
 * JD-Core Version:    0.7.0.1
 */