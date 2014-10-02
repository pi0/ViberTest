package com.viber.voip.messages.extras.twitter;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.EditText;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberActivity;

public class TwitterDialogActivity
  extends ViberActivity
  implements DialogInterface.OnDismissListener
{
  private l a;
  
  private void a(Intent paramIntent)
  {
    a("resolveIntent() " + paramIntent);
    if ("com.viber.voip.action.TWITTER_ERROR_DIALOG".equals(paramIntent.getAction()))
    {
      String str5 = paramIntent.getStringExtra("extra_error_message");
      AlertDialog.Builder localBuilder3 = new AlertDialog.Builder(this);
      localBuilder3.setCancelable(false);
      localBuilder3.setMessage(str5);
      localBuilder3.setPositiveButton(2131493614, new g(this));
      AlertDialog localAlertDialog3 = localBuilder3.create();
      localAlertDialog3.setOnDismissListener(this);
      localAlertDialog3.show();
    }
    long l;
    String str1;
    String str2;
    String str3;
    do
    {
      do
      {
        return;
        if ("com.viber.voip.action.TWITTER_CHANGE_ACCOUNT_DIALOG".equals(paramIntent.getAction()))
        {
          String str4 = this.a.b();
          AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(this);
          localBuilder2.setCancelable(false);
          localBuilder2.setMessage(getString(2131494111, new Object[] { str4 }));
          localBuilder2.setPositiveButton(2131493967, new h(this));
          localBuilder2.setNegativeButton(2131493558, new i(this));
          AlertDialog localAlertDialog2 = localBuilder2.create();
          localAlertDialog2.setOnDismissListener(this);
          localAlertDialog2.show();
          return;
        }
      } while (!"com.viber.voip.action.TWITTER_GET_TWEET_DIALOG".equals(paramIntent.getAction()));
      l = paramIntent.getLongExtra("extra_msg_id", -1L);
      str1 = paramIntent.getStringExtra("extra_msg_myme_type");
      str2 = paramIntent.getStringExtra("extra_msg_media_uri");
      str3 = paramIntent.getStringExtra("extra_msg_text");
    } while (l == -1L);
    AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(this);
    EditText localEditText = new EditText(this);
    localEditText.setText(str3);
    localBuilder1.setCancelable(false);
    localBuilder1.setTitle(2131494115);
    localBuilder1.setMessage(2131494116);
    localBuilder1.setPositiveButton(17039370, new j(this, l, str1, str2, localEditText));
    localBuilder1.setNegativeButton(2131493558, new k(this));
    AlertDialog localAlertDialog1 = localBuilder1.create();
    localAlertDialog1.setView(localEditText, 20, 0, 20, 0);
    localAlertDialog1.setOnDismissListener(this);
    localAlertDialog1.show();
  }
  
  private void a(String paramString)
  {
    Log.d("--->", paramString);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = ((ViberApplication)getApplication()).getTwitterManager();
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    finish();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    a(paramIntent);
    super.onNewIntent(paramIntent);
  }
  
  protected void onStart()
  {
    super.onStart();
    a(getIntent());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.TwitterDialogActivity
 * JD-Core Version:    0.7.0.1
 */