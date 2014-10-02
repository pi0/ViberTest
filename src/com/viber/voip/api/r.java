package com.viber.voip.api;

import android.content.Intent;

class r
  implements x
{
  r(q paramq, String paramString, y paramy) {}
  
  public void a(int paramInt, String paramString)
  {
    int i = 1;
    Intent localIntent;
    if (paramInt != 0)
    {
      localIntent = null;
      if (i != paramInt) {}
    }
    else
    {
      localIntent = new Intent("com.viber.voip.action.DIALER");
      localIntent.addFlags(67108864);
      localIntent.putExtra("open_keypad_number", this.a);
    }
    y localy = this.b;
    if (localIntent != null) {
      i = 0;
    }
    localy.a(i, localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.r
 * JD-Core Version:    0.7.0.1
 */