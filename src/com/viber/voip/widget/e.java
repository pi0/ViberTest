package com.viber.voip.widget;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import com.actionbarsherlock.app.SherlockDialogFragment;

public class e
  extends SherlockDialogFragment
{
  public static e a(int paramInt, boolean paramBoolean)
  {
    e locale = new e();
    locale.setCancelable(paramBoolean);
    Bundle localBundle = new Bundle();
    localBundle.putInt("message_res_id", paramInt);
    locale.setArguments(localBundle);
    return locale;
  }
  
  public int a(FragmentTransaction paramFragmentTransaction, String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramFragmentTransaction.add(this, paramString);
      return paramFragmentTransaction.commitAllowingStateLoss();
    }
    return show(paramFragmentTransaction, paramString);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    int i = getArguments().getInt("message_res_id");
    ProgressDialog localProgressDialog = new ProgressDialog(getActivity());
    localProgressDialog.setMessage(getResources().getString(i));
    localProgressDialog.setIndeterminate(true);
    localProgressDialog.setCancelable(true);
    return localProgressDialog;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.e
 * JD-Core Version:    0.7.0.1
 */