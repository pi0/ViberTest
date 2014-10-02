package com.viber.voip.rakuten;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

public class ab
  extends DialogFragment
{
  public static ab a()
  {
    ab localab = new ab();
    localab.setCancelable(true);
    return localab;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    RakutenRegistrationActivity.a("RegistrationSuccessDialog.onCancel");
    l.a().h();
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return new AlertDialog.Builder(getActivity()).setTitle(2131494793).setMessage(2131494794).setPositiveButton(17039370, new ac(this)).create();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.rakuten.ab
 * JD-Core Version:    0.7.0.1
 */