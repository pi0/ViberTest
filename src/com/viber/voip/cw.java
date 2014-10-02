package com.viber.voip;

import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

class cw
  implements Runnable
{
  cw(SystemDialogActivity paramSystemDialogActivity) {}
  
  public void run()
  {
    ViberApplication.preferences().a(j.am(), false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.cw
 * JD-Core Version:    0.7.0.1
 */