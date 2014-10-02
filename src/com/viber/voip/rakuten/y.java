package com.viber.voip.rakuten;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

public class y
  extends DialogFragment
{
  public static y a()
  {
    y localy = new y();
    localy.setCancelable(false);
    return localy;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    ProgressDialog localProgressDialog = new ProgressDialog(getActivity());
    localProgressDialog.setMessage(getResources().getString(2131494790));
    localProgressDialog.setIndeterminate(true);
    localProgressDialog.setCancelable(true);
    return localProgressDialog;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.rakuten.y
 * JD-Core Version:    0.7.0.1
 */