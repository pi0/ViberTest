package com.viber.voip.messages.extras.fb;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberActivity;

public class FacebookDialogActivity
  extends ViberActivity
  implements DialogInterface.OnDismissListener
{
  private s a;
  private Intent b;
  
  private void a(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("fb_comment".equals(str)) {
      showDialog(2);
    }
    do
    {
      return;
      if ("fb_error".equals(str))
      {
        showDialog(3);
        return;
      }
    } while (!"fb_cancel_rentry".equals(str));
    showDialog(1);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onActivityResult");
    ViberApplication.getInstance().getFacebookManager().a(this, paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onContentChanged()
  {
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onContentChanged");
    super.onContentChanged();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903343);
    findViewById(2131165359).setOnTouchListener(new d(this));
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onCreate");
    this.a = ViberApplication.getInstance().getFacebookManager();
    a(getIntent());
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    Bundle localBundle = Bundle.EMPTY;
    if (this.b != null) {
      localBundle = this.b.getExtras();
    }
    this.b = null;
    return onCreateDialog(paramInt, localBundle);
  }
  
  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onCreateDialog");
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt, paramBundle);
    case 2: 
      Intent localIntent2 = getIntent();
      EditText localEditText = new EditText(this);
      localEditText.setText(localIntent2.getStringExtra("msg_body"));
      AlertDialog.Builder localBuilder3 = new AlertDialog.Builder(this);
      localBuilder3.setTitle(2131493949);
      localBuilder3.setMessage(2131493950);
      localBuilder3.setPositiveButton(2131493557, new e(this, localIntent2, localEditText));
      localBuilder3.setNegativeButton(2131493558, new f(this));
      localBuilder3.setOnCancelListener(new g(this));
      AlertDialog localAlertDialog3 = localBuilder3.create();
      ((AlertDialog)localAlertDialog3).setView(localEditText, 20, 0, 20, 0);
      localAlertDialog3.setOnDismissListener(this);
      return localAlertDialog3;
    case 3: 
      String str2 = getIntent().getStringExtra("msg_body");
      AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(this);
      localBuilder2.setTitle(2131493958);
      localBuilder2.setMessage(str2);
      localBuilder2.setPositiveButton(2131493557, new h(this));
      localBuilder2.setOnCancelListener(new i(this));
      AlertDialog localAlertDialog2 = localBuilder2.create();
      localAlertDialog2.setOnDismissListener(this);
      return localAlertDialog2;
    }
    Intent localIntent1 = getIntent();
    String str1 = localIntent1.getStringExtra("msg_body");
    localIntent1.getLongExtra("msg_id", -1L);
    AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(this);
    localBuilder1.setTitle(2131493958);
    localBuilder1.setMessage(str1);
    localBuilder1.setPositiveButton(2131493821, new j(this));
    localBuilder1.setNegativeButton(2131493558, new k(this));
    localBuilder1.setOnCancelListener(new l(this));
    AlertDialog localAlertDialog1 = localBuilder1.create();
    localAlertDialog1.setOnDismissListener(this);
    return localAlertDialog1;
  }
  
  protected void onDestroy()
  {
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onDestroy");
    super.onDestroy();
  }
  
  public void onDetachedFromWindow()
  {
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onDetachedFromWindow");
    super.onDetachedFromWindow();
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
  
  protected void onPause()
  {
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onPause");
    super.onPause();
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    super.onPrepareDialog(paramInt, paramDialog);
  }
  
  protected void onRestart()
  {
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onRestart");
    super.onRestart();
  }
  
  protected void onResume()
  {
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onResume");
    super.onResume();
  }
  
  protected void onStart()
  {
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onStart");
    super.onStart();
  }
  
  protected void onStop()
  {
    Log.d("FacebookDialogActivity", "FacebookDialogActivity.onStop");
    super.onStop();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.FacebookDialogActivity
 * JD-Core Version:    0.7.0.1
 */