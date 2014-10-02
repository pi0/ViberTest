package com.viber.voip.ui.a;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

public abstract class d
  extends DialogFragment
{
  DialogInterface.OnCancelListener a;
  boolean b = true;
  
  public void a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    this.a = paramOnCancelListener;
  }
  
  public boolean isCancelable()
  {
    return this.b;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if ((this.b) && (this.a != null)) {
      this.a.onCancel(paramDialogInterface);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    super.setCancelable(false);
    if (paramBundle != null) {
      this.b = paramBundle.getBoolean("dialog_cancelable", true);
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Dialog localDialog = super.onCreateDialog(paramBundle);
    localDialog.setOnKeyListener(new e(this));
    return localDialog;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("dialog_cancelable", this.b);
  }
  
  public void setCancelable(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.a.d
 * JD-Core Version:    0.7.0.1
 */