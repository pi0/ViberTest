package com.facebook.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.webkit.WebView;

class FbDialog$1
  implements DialogInterface.OnCancelListener
{
  FbDialog$1(FbDialog paramFbDialog) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    FbDialog.access$000(this.this$0).stopLoading();
    FbDialog.access$100(this.this$0).onCancel();
    this.this$0.dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.android.FbDialog.1
 * JD-Core Version:    0.7.0.1
 */