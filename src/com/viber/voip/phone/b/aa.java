package com.viber.voip.phone.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;

class aa
  implements DialogInterface.OnClickListener
{
  aa(y paramy) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String[] arrayOfString = this.a.getResources().getStringArray(2131623937);
    if (paramInt == 4) {
      this.a.a(null, paramInt + 1);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      this.a.a(arrayOfString[paramInt], paramInt + 1);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.aa
 * JD-Core Version:    0.7.0.1
 */