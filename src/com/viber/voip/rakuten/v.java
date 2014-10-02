package com.viber.voip.rakuten;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

public class v
  extends DialogFragment
{
  public static v a(String paramString1, String paramString2)
  {
    v localv = new v();
    Bundle localBundle = new Bundle();
    localBundle.putString("phone_number", paramString1);
    localBundle.putString("account_id", paramString2);
    localv.setArguments(localBundle);
    return localv;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    RakutenRegistrationActivity.a("ConfirmationDialog.onCancel");
    l.a().f();
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    getArguments().getString("phone_number");
    String str = getArguments().getString("account_id");
    return new AlertDialog.Builder(getActivity()).setCancelable(true).setTitle(2131494791).setMessage(getResources().getString(2131494792, new Object[] { str })).setPositiveButton(17039370, new x(this)).setNegativeButton(17039360, new w(this)).create();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.rakuten.v
 * JD-Core Version:    0.7.0.1
 */