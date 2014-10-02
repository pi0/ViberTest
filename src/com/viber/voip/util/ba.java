package com.viber.voip.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.ArrayList;
import java.util.List;

public class ba
  implements DialogInterface.OnClickListener
{
  private List<Dialog> a = new ArrayList();
  private int b = 0;
  private DialogInterface.OnClickListener c;
  private Activity d;
  
  public ba(Activity paramActivity)
  {
    this.d = paramActivity;
  }
  
  public void a(AlertDialog.Builder paramBuilder, int paramInt)
  {
    AlertDialog localAlertDialog = paramBuilder.setPositiveButton(paramInt, this).create();
    this.a.add(localAlertDialog);
  }
  
  public void a(DialogInterface.OnClickListener paramOnClickListener)
  {
    this.c = paramOnClickListener;
    if ((!this.d.isFinishing()) && (this.a.size() > 0))
    {
      Dialog localDialog = (Dialog)this.a.get(0);
      localDialog.setOwnerActivity(this.d);
      localDialog.show();
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.b = (1 + this.b);
    if (this.b < this.a.size()) {
      if (!this.d.isFinishing())
      {
        Dialog localDialog = (Dialog)this.a.get(this.b);
        localDialog.setOwnerActivity(this.d);
        localDialog.show();
      }
    }
    for (;;)
    {
      at.b(paramDialogInterface);
      return;
      this.c.onClick(paramDialogInterface, paramInt);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.ba
 * JD-Core Version:    0.7.0.1
 */