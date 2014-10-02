package com.viber.voip.registration;

import android.content.Intent;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

public class DeActivationActivity
  extends SherlockFragmentActivity
{
  private ay a;
  
  private void a(Intent paramIntent)
  {
    b("resolveIntent: " + paramIntent);
    if (!paramIntent.getBooleanExtra("skip_dialog", false))
    {
      bc localbc = bc.a();
      u localu = a.z;
      a.z.getClass();
      localbc.a(localu.b("402"));
      b(4);
      return;
    }
    a();
  }
  
  private void a(String paramString)
  {
    b("onDeActivationRejected errorMessage:" + paramString);
    a(3, paramString);
  }
  
  private void b()
  {
    b("onDeActivationAccepted");
    ((ViberApplication)getApplication()).getActivationController().deActivateDone(this);
  }
  
  private void b(String paramString)
  {
    ViberApplication.log(3, "DeActivationActivity", paramString);
  }
  
  public void a()
  {
    ay localay = new ay(this, null);
    this.a = localay;
    localay.execute(new String[] { "" });
  }
  
  public void a(int paramInt)
  {
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    Fragment localFragment = getSupportFragmentManager().findFragmentByTag(paramInt + "");
    if (localFragment != null) {
      localFragmentTransaction.remove(localFragment);
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    String str = paramInt + "";
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    Fragment localFragment = getSupportFragmentManager().findFragmentByTag(str);
    if (localFragment != null) {
      localFragmentTransaction.remove(localFragment);
    }
    az localaz = new az();
    Bundle localBundle = new Bundle();
    localBundle.putInt("dialog_id", paramInt);
    localBundle.putString("error_msg_id", paramString);
    localaz.setArguments(localBundle);
    localaz.show(localFragmentTransaction, str);
  }
  
  public void b(int paramInt)
  {
    a(paramInt, "");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903343);
  }
  
  protected void onDestroy()
  {
    if (this.a != null) {
      this.a.cancel(true);
    }
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    b("onNewIntent");
    a(paramIntent);
    super.onNewIntent(paramIntent);
  }
  
  protected void onPause()
  {
    super.onPause();
    if ((this.a != null) && (this.a.getStatus() == AsyncTask.Status.RUNNING)) {
      finish();
    }
  }
  
  protected void onStart()
  {
    b("onStart");
    super.onStart();
    a(getIntent());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.DeActivationActivity
 * JD-Core Version:    0.7.0.1
 */