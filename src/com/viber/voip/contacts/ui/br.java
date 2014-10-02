package com.viber.voip.contacts.ui;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.f.a;

class br
  implements Runnable
{
  br(bp parambp) {}
  
  public void run()
  {
    try
    {
      Thread.sleep(3000L);
      label6:
      a.a(ViberApplication.getInstance()).a(0, false);
      Intent localIntent = new Intent("com.viber.voip.action.VIBER_SERVICE_EXIT");
      try
      {
        bp.a(this.a).startActivity(localIntent);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        bp.a(this.a).sendBroadcast(localIntent);
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      break label6;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.br
 * JD-Core Version:    0.7.0.1
 */