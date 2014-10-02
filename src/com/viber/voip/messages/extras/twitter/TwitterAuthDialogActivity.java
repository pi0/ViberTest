package com.viber.voip.messages.extras.twitter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberActivity;

public class TwitterAuthDialogActivity
  extends ViberActivity
  implements DialogInterface.OnDismissListener
{
  private static final String a = TwitterAuthDialogActivity.class.getSimpleName();
  
  private void a(Intent paramIntent)
  {
    a("resolveIntent() " + paramIntent);
    c localc = new c(this, paramIntent.getStringExtra("extra_load_url"), new a(this));
    localc.setOnCancelListener(new b(this));
    localc.setOnDismissListener(this);
    localc.show();
  }
  
  private void a(String paramString)
  {
    Log.d(a, paramString);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    sendBroadcast(new Intent("action_handle_dialog_destroy"));
    ViberApplication.getInstance().finish();
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    finish();
  }
  
  protected void onStart()
  {
    super.onStart();
    a(getIntent());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.TwitterAuthDialogActivity
 * JD-Core Version:    0.7.0.1
 */