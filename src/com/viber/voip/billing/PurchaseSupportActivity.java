package com.viber.voip.billing;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.widget.EditText;
import com.viber.service.b;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.util.at;

public class PurchaseSupportActivity
  extends ViberActivity
{
  private static String c = "";
  private static final String d = PurchaseSupportActivity.class.getSimpleName();
  private ProgressDialog a;
  private BroadcastReceiver b = new cx(this);
  
  private ProgressDialog a(String paramString, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    ProgressDialog localProgressDialog = new ProgressDialog(this);
    localProgressDialog.setMessage(paramString);
    localProgressDialog.setIndeterminate(true);
    localProgressDialog.setCancelable(true);
    localProgressDialog.setOnCancelListener(new di(this, paramOnCancelListener));
    localProgressDialog.show();
    return localProgressDialog;
  }
  
  public static dl a()
  {
    return new dl(null);
  }
  
  public static void a(Activity paramActivity)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
    localBuilder.setTitle("Enter phone number");
    localBuilder.setMessage("Enter the phone number to which the dialog 602 (payment succeeded) should refer");
    EditText localEditText = new EditText(paramActivity);
    localEditText.setText(c);
    localBuilder.setView(localEditText);
    localBuilder.setPositiveButton(17039370, new dj(localEditText));
    localBuilder.setNegativeButton(17039360, new dk());
    localBuilder.show();
  }
  
  private void a(ae paramae)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", paramae.a(), null));
    localIntent.setFlags(268435456);
    localIntent.putExtra("viber_out", true);
    b.a(this, localIntent);
    finish();
  }
  
  public static void a(bn parambn, String paramString)
  {
    Intent localIntent = b(dm.a);
    localIntent.putExtra(dn.d.name(), parambn.toString());
    localIntent.putExtra(dn.e.name(), paramString);
    b(localIntent);
  }
  
  public static void a(String paramString)
  {
    Intent localIntent = b(dm.c);
    if (paramString != null) {
      localIntent.putExtra(dn.a.name(), paramString);
    }
    b(localIntent);
  }
  
  public static void a(String paramString, ae paramae)
  {
    Intent localIntent = b(dm.d);
    localIntent.putExtra(dn.f.name(), paramString);
    if (paramae != null) {
      localIntent.putExtra(dn.g.name(), paramae.a());
    }
    b(localIntent);
  }
  
  private void a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString3 != null) {
      bc.a().a(com.viber.voip.a.a.z.b(paramString3));
    }
    at.a(this, paramString1, paramString2, new cz(this, paramString3), true);
  }
  
  private static Intent b(dm paramdm)
  {
    Intent localIntent = new Intent(ViberApplication.getInstance(), PurchaseSupportActivity.class);
    localIntent.setFlags(268435456);
    localIntent.putExtra("EXTRA_METHOD", paramdm.ordinal());
    return localIntent;
  }
  
  public static void b()
  {
    f("invokeShowProgressDialog");
    a(null);
  }
  
  private static void b(Intent paramIntent)
  {
    ViberApplication.getInstance().startActivity(paramIntent);
  }
  
  private void b(bn parambn, String paramString)
  {
    bv localbv = bv.a();
    d(null);
    localbv.c().a(this, parambn, 11000, localbv.b(parambn), paramString);
  }
  
  private void b(String paramString, ae paramae)
  {
    f("showViberOutPaymentSuccessDialog credits:" + paramString + ", number: " + paramae);
    if (paramae != null)
    {
      d(getString(2131494273));
      a.a().a(paramae, new db(this));
      return;
    }
    f();
    e(paramString);
  }
  
  public static void c()
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    Intent localIntent = new Intent("finish-purchase-support");
    LocalBroadcastManager.getInstance(localViberApplication).sendBroadcast(localIntent);
  }
  
  private void c(Intent paramIntent)
  {
    dm localdm = dm.values()[paramIntent.getIntExtra("EXTRA_METHOD", -1)];
    f("handleIntent, method: " + localdm);
    switch (cy.a[localdm.ordinal()])
    {
    default: 
      f("invalid method: " + localdm);
      e();
      return;
    case 1: 
      b(bn.a(paramIntent.getStringExtra(dn.d.name())), paramIntent.getStringExtra(dn.e.name()));
      return;
    case 2: 
      a(paramIntent.getStringExtra(dn.a.name()), paramIntent.getStringExtra(dn.b.name()), paramIntent.getStringExtra(dn.c.name()));
      return;
    case 3: 
      d(paramIntent.getStringExtra(dn.a.name()));
      return;
    }
    String str1 = paramIntent.getStringExtra(dn.f.name());
    String str2 = paramIntent.getStringExtra(dn.g.name());
    if (str2 == null) {}
    for (ae localae = null;; localae = new ae(str2))
    {
      b(str1, localae);
      return;
    }
  }
  
  private void d(String paramString)
  {
    if (paramString == null) {
      paramString = getString(2131494242);
    }
    if (this.a != null) {
      this.a.dismiss();
    }
    this.a = a(paramString, new da(this));
  }
  
  private void e()
  {
    finish();
  }
  
  private void e(String paramString)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131494274);
    if (paramString != null) {
      localBuilder.setMessage(getString(2131494275, new Object[] { paramString }));
    }
    localBuilder.setPositiveButton(17039370, new dg(this));
    localBuilder.setCancelable(true);
    localBuilder.setOnCancelListener(new dh(this));
    localBuilder.show();
    bc localbc = bc.a();
    u localu = com.viber.voip.a.a.z;
    com.viber.voip.a.a.z.getClass();
    localbc.a(localu.b("604"));
  }
  
  private void f()
  {
    if (this.a != null)
    {
      this.a.dismiss();
      this.a = null;
    }
  }
  
  private static void f(String paramString) {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    f("onActivityResult(" + paramInt1 + "," + paramInt2 + "," + paramIntent + ")");
    if (!bv.a().c().a(paramInt1, paramInt2, paramIntent)) {
      a(this, paramInt1, paramInt2, paramIntent);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f("onCreate()");
    c(getIntent());
    LocalBroadcastManager.getInstance(this).registerReceiver(this.b, new IntentFilter("finish-purchase-support"));
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    LocalBroadcastManager.getInstance(this).unregisterReceiver(this.b);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
    f("onNewIntent()");
    c(paramIntent);
  }
  
  protected void onResume()
  {
    super.onResume();
    f("onResume");
    bv.a().c().b();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.PurchaseSupportActivity
 * JD-Core Version:    0.7.0.1
 */