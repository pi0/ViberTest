package com.viber.voip.ui.a;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.TextUtils;

public class a
  extends d
{
  private DialogInterface.OnClickListener c;
  private DialogInterface.OnClickListener d;
  private DialogInterface.OnClickListener e;
  
  public void a(DialogInterface.OnClickListener paramOnClickListener)
  {
    this.c = paramOnClickListener;
  }
  
  public void b(DialogInterface.OnClickListener paramOnClickListener)
  {
    this.d = paramOnClickListener;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    Bundle localBundle = getArguments();
    if ((localBundle == null) || (localBundle.isEmpty())) {
      throw new IllegalStateException("Arguments must be supplied to build alert dialog");
    }
    CharSequence localCharSequence1 = localBundle.getCharSequence("title");
    CharSequence localCharSequence2 = localBundle.getCharSequence("message");
    CharSequence localCharSequence3 = localBundle.getCharSequence("positive_button");
    CharSequence localCharSequence4 = localBundle.getCharSequence("negative_button");
    CharSequence localCharSequence5 = localBundle.getCharSequence("neutral_button");
    if ((TextUtils.isEmpty(localCharSequence1)) && (TextUtils.isEmpty(localCharSequence2))) {
      throw new IllegalStateException("At least title or message must be supplied to build alert dialog");
    }
    localBuilder.setTitle(localCharSequence1);
    localBuilder.setMessage(localCharSequence2);
    if (!TextUtils.isEmpty(localCharSequence3)) {
      localBuilder.setPositiveButton(localCharSequence3, this.c);
    }
    if (!TextUtils.isEmpty(localCharSequence4)) {
      localBuilder.setNegativeButton(localCharSequence4, this.d);
    }
    if (!TextUtils.isEmpty(localCharSequence5)) {
      localBuilder.setNeutralButton(localCharSequence5, this.e);
    }
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setOnKeyListener(new b(this));
    return localAlertDialog;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.a.a
 * JD-Core Version:    0.7.0.1
 */