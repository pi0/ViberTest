package com.viber.voip;

import com.viber.voip.settings.l;

class dp
  implements Runnable
{
  dp(ViberApplication paramViberApplication) {}
  
  public void run()
  {
    ViberApplication.preferences().a("PREF_DELETE_EMPTY_FILES", false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.dp
 * JD-Core Version:    0.7.0.1
 */