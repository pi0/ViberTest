package com.viber.voip.settings.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ListView;
import com.viber.voip.a.a;
import com.viber.voip.a.an;
import com.viber.voip.a.bc;
import com.viber.voip.a.c;

class bw
  implements DialogInterface.OnClickListener
{
  bw(SettingsHeadersFragment paramSettingsHeadersFragment, ListView paramListView) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    bc.a().a(a.i.c.a());
    SettingsHeadersFragment.a(this.b);
    SettingsHeadersFragment.b(this.b);
    this.a.clearChoices();
    this.a.requestLayout();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.bw
 * JD-Core Version:    0.7.0.1
 */