package com.viber.voip.contacts.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import java.util.Map;

final class bs
  implements DialogInterface.OnMultiChoiceClickListener
{
  bs(Map paramMap, String[] paramArrayOfString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt, boolean paramBoolean)
  {
    this.a.put(this.b[paramInt], Boolean.valueOf(paramBoolean));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bs
 * JD-Core Version:    0.7.0.1
 */