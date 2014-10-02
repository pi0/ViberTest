package com.viber.voip.messages.conversation.ui;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.os.Bundle;
import com.actionbarsherlock.app.SherlockDialogFragment;

public class cj
  extends SherlockDialogFragment
{
  public static cj a(String paramString)
  {
    cj localcj = new cj();
    Bundle localBundle = new Bundle();
    localBundle.putString("tag", paramString);
    localcj.setArguments(localBundle);
    return localcj;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    String str = getArguments().getString("tag");
    ProgressDialog localProgressDialog;
    if ("loading_dialog".equals(str)) {
      localProgressDialog = ProgressDialog.show(getActivity(), null, getString(2131494083), true, true);
    }
    boolean bool;
    do
    {
      return localProgressDialog;
      if ("rename_dialog".equals(str)) {
        return ProgressDialog.show(getActivity(), null, getString(2131494084), true, true);
      }
      bool = "can_not_add_dialog".equals(str);
      localProgressDialog = null;
    } while (!bool);
    return new AlertDialog.Builder(getActivity()).setMessage(2131494081).setPositiveButton(2131493614, new cl(this)).setOnCancelListener(new ck(this)).create();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.cj
 * JD-Core Version:    0.7.0.1
 */