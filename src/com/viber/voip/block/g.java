package com.viber.voip.block;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.widget.Button;
import android.widget.EditText;

class g
  implements DialogInterface.OnShowListener
{
  g(e parame, AlertDialog paramAlertDialog, EditText paramEditText) {}
  
  public void onShow(DialogInterface paramDialogInterface)
  {
    Button localButton = this.a.getButton(-1);
    localButton.setVisibility(8);
    this.b.addTextChangedListener(new h(this, localButton));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.block.g
 * JD-Core Version:    0.7.0.1
 */