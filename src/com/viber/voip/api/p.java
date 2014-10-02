package com.viber.voip.api;

import android.content.Intent;

class p
  implements x
{
  p(o paramo, y paramy) {}
  
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
      localIntent = new Intent("com.viber.voip.action.VIEW_CONTACT");
      localIntent.putExtra("con_number", paramString);
    }
    y localy = this.a;
    if (localIntent != null) {
      i = 0;
    }
    localy.a(i, localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.p
 * JD-Core Version:    0.7.0.1
 */