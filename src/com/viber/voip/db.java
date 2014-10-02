package com.viber.voip;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class db
  implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener
{
  private db(SystemDialogActivity paramSystemDialogActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    TextView localTextView = (TextView)((Dialog)paramDialogInterface).findViewById(16908299);
    String str;
    if (localTextView != null)
    {
      str = localTextView.getText().toString();
      if (!str.equals(Integer.valueOf(2131493774))) {
        break label75;
      }
      bc localbc3 = bc.a();
      u localu3 = a.z;
      a.z.getClass();
      localbc3.a(localu3.c("201"));
    }
    for (;;)
    {
      this.a.a(paramDialogInterface);
      return;
      label75:
      if (str.equals(Integer.valueOf(2131493749)))
      {
        bc localbc2 = bc.a();
        u localu2 = a.z;
        a.z.getClass();
        localbc2.a(localu2.c("303"));
      }
      else if ((str.equals(Integer.valueOf(2131493911))) || (str.equals(Integer.valueOf(2131493910))))
      {
        bc localbc1 = bc.a();
        u localu1 = a.z;
        a.z.getClass();
        localbc1.a(localu1.c("311"));
      }
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a(paramDialogInterface);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.db
 * JD-Core Version:    0.7.0.1
 */