package com.viber.voip.settings.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ListView;

class bx
  implements DialogInterface.OnClickListener
{
  bx(SettingsHeadersFragment paramSettingsHeadersFragment, ListView paramListView) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.clearChoices();
    this.a.requestLayout();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.bx
 * JD-Core Version:    0.7.0.1
 */