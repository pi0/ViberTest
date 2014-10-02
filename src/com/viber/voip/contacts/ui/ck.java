package com.viber.voip.contacts.ui;

import android.os.Handler;
import android.view.View;
import com.viber.voip.util.hj;

class ck
  implements hj
{
  ck(cb paramcb, View paramView) {}
  
  public void a(boolean paramBoolean, int paramInt, String paramString)
  {
    cb.a(this.b, "addNewNumber status = " + paramInt + ", number = " + paramString);
    String str;
    switch (paramInt)
    {
    case 1: 
    case 3: 
    default: 
      str = "com.viber.voip.action.NUMBER_NOT_VIBER_DIALOG";
    }
    for (;;)
    {
      cb.b(this.b).post(new cl(this, str, paramString));
      return;
      str = null;
      continue;
      str = "com.viber.voip.action.CONNECTION_PROBLEM";
      continue;
      str = "com.viber.voip.action.NO_SERVICE_DIALOG";
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ck
 * JD-Core Version:    0.7.0.1
 */