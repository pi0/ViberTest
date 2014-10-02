package com.viber.voip.registration;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.actionbarsherlock.app.SherlockDialogFragment;

public class az
  extends SherlockDialogFragment
{
  private DialogInterface.OnClickListener a = new bb(this);
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    this.a.onClick(paramDialogInterface, 0);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    if (getArguments() == null) {
      dismiss();
    }
    switch (getArguments().getInt("dialog_id"))
    {
    default: 
      return null;
    case 4: 
      AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(getActivity()).setCancelable(false);
      if (dj.d()) {}
      for (int i = 2131494486;; i = 2131493735) {
        return localBuilder2.setMessage(i).setNegativeButton(2131493558, this.a).setPositiveButton(2131493736, new ba(this)).create();
      }
    case 3: 
      String str = getArguments().getString("error_msg_id");
      AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(getActivity()).setCancelable(false).setTitle(2131493615);
      if (!TextUtils.isEmpty(str)) {}
      for (;;)
      {
        return localBuilder1.setMessage(str).setPositiveButton(2131493557, this.a).create();
        str = getString(2131493738);
      }
    }
    ProgressDialog localProgressDialog = new ProgressDialog(getActivity());
    localProgressDialog.setMessage(getResources().getString(2131493737));
    localProgressDialog.setCancelable(false);
    localProgressDialog.setIndeterminate(true);
    return localProgressDialog;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.az
 * JD-Core Version:    0.7.0.1
 */