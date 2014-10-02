package com.viber.voip.rakuten;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

public class z
  extends DialogFragment
{
  public static z a()
  {
    z localz = new z();
    localz.setCancelable(true);
    return localz;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    RakutenRegistrationActivity.a("RegistrationSuccessDialog.onCancel");
    l.a().i();
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return new AlertDialog.Builder(getActivity()).setTitle(2131494795).setMessage(2131494796).setPositiveButton(17039370, new aa(this)).create();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.rakuten.z
 * JD-Core Version:    0.7.0.1
 */