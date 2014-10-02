package com.viber.voip;

import android.util.Log;

class dt
  implements Runnable
{
  dt(ViberApplication.KillReceiver paramKillReceiver) {}
  
  public void run()
  {
    Log.d("ViberApplication", "Viber exiting");
    ViberApplication.getInstance().finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.dt
 * JD-Core Version:    0.7.0.1
 */