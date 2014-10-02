package com.viber.voip.viberout.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.viber.service.b;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.k;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.registration.cp;
import com.viber.voip.settings.l;

public class ViberOutDialogs
  extends ViberActivity
{
  public static final String a = ViberOutDialogs.class.getSimpleName();
  private static boolean c;
  private static boolean d;
  private boolean b;
  
  private static ProgressDialog a(Context paramContext, String paramString, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    ProgressDialog localProgressDialog = new ProgressDialog(paramContext);
    localProgressDialog.setMessage(paramString);
    localProgressDialog.setIndeterminate(true);
    localProgressDialog.setCancelable(true);
    localProgressDialog.setOnCancelListener(new ak(paramOnCancelListener));
    localProgressDialog.show();
    return localProgressDialog;
  }
  
  private ProgressDialog a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return a(this, getString(2131493975), paramOnCancelListener);
  }
  
  private ProgressDialog a(String paramString, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return a(this, paramString, paramOnCancelListener);
  }
  
  private static Intent a(ax paramax)
  {
    Intent localIntent = new Intent(ViberApplication.getInstance(), ViberOutDialogs.class);
    localIntent.setFlags(268435456);
    localIntent.putExtra("METHOD", paramax.ordinal());
    return localIntent;
  }
  
  private void a(int paramInt1, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    a(this, paramInt1, paramInt2, paramOnCancelListener);
  }
  
  private void a(int paramInt1, int paramInt2, aw paramaw)
  {
    a(paramInt1, paramInt2, paramaw, null);
  }
  
  private void a(int paramInt1, int paramInt2, aw paramaw, String paramString)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    if (paramInt1 != 0) {
      localBuilder.setTitle(paramInt1);
    }
    if (paramInt2 != 0) {
      localBuilder.setMessage(paramInt2);
    }
    a(localBuilder, paramaw, paramString);
    localBuilder.setCancelable(true);
    localBuilder.setOnCancelListener(c(paramaw));
    localBuilder.show();
  }
  
  public static void a(Activity paramActivity, com.viber.voip.billing.ae paramae)
  {
    a(paramActivity, paramae);
  }
  
  private void a(AlertDialog.Builder paramBuilder, aw paramaw, String paramString)
  {
    paramBuilder.setPositiveButton(17039370, new am(this, paramString, paramaw));
  }
  
  public static void a(Context paramContext, int paramInt1, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    if (paramInt1 != 0) {
      localBuilder.setTitle(paramInt1);
    }
    localBuilder.setMessage(paramInt2);
    localBuilder.setPositiveButton(17039370, new al(paramOnCancelListener));
    localBuilder.setCancelable(true);
    if (paramOnCancelListener != null) {
      localBuilder.setOnCancelListener(paramOnCancelListener);
    }
    localBuilder.show();
  }
  
  public static void a(Context paramContext, com.viber.voip.billing.ae paramae)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", paramae.a(), null));
    localIntent.putExtra("viber_out", true);
    b.a(paramContext, localIntent);
  }
  
  private static void a(Intent paramIntent)
  {
    ViberApplication.getInstance().startActivity(paramIntent);
  }
  
  public static void a(com.viber.voip.billing.ae paramae)
  {
    Intent localIntent = a(ax.a);
    localIntent.putExtra("NUMBER", paramae.a());
    a(localIntent);
  }
  
  public static void a(com.viber.voip.billing.ae paramae, boolean paramBoolean)
  {
    Intent localIntent = a(ax.d);
    localIntent.putExtra("NUMBER", paramae.a());
    localIntent.putExtra("IS_VIBER", paramBoolean);
    a(localIntent);
  }
  
  private void a(com.viber.voip.billing.r paramr)
  {
    switch (ar.b[paramr.b().ordinal()])
    {
    default: 
      b(k());
      return;
    }
    a(k());
  }
  
  private void a(aw paramaw)
  {
    a(2131493794, 2131493774, paramaw);
  }
  
  private void a(ay paramay, com.viber.voip.billing.q paramq, String paramString1, String paramString2)
  {
    String str = paramq.a();
    paramay.a(str, new ae(this, paramString2, str, paramq, paramString1));
  }
  
  private void a(ay paramay, com.viber.voip.billing.q[] paramArrayOfq, boolean paramBoolean, String paramString)
  {
    String str = ViberApplication.getInstance().getRegistrationValues().e();
    if (paramArrayOfq != null) {
      for (int i = 0; i < paramArrayOfq.length; i++) {
        if ((!paramBoolean) || (paramArrayOfq[i].f() < 3)) {
          a(paramay, paramArrayOfq[i], str, paramString);
        }
      }
    }
    b("addCreditProductButtons: no products");
  }
  
  private void a(String paramString1, String paramString2, com.viber.voip.billing.ae paramae)
  {
    View localView = LayoutInflater.from(this).inflate(2130903183, null);
    AlertDialog localAlertDialog = new AlertDialog.Builder(this).setView(localView).create();
    ac localac = new ac(this, localAlertDialog, paramae);
    Button localButton1 = (Button)localView.findViewById(2131165756);
    localButton1.setOnClickListener(localac);
    localButton1.setText(2131493558);
    Button localButton2 = (Button)localView.findViewById(2131165757);
    localButton2.setOnClickListener(localac);
    localButton2.setText(2131493550);
    Button localButton3 = (Button)localView.findViewById(2131165758);
    ((ViewGroup)localButton3.getParent()).removeView(localButton3);
    if (paramString1 != null) {
      localAlertDialog.setTitle(paramString1);
    }
    for (;;)
    {
      localAlertDialog.setCancelable(true);
      localAlertDialog.setOnCancelListener(j());
      ((TextView)localView.findViewById(2131165474)).setText(paramString2);
      localAlertDialog.show();
      return;
      localAlertDialog.requestWindowFeature(1);
    }
  }
  
  private static void a(String paramString, Throwable paramThrowable) {}
  
  public static void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  private void a(com.viber.voip.billing.q[] paramArrayOfq, com.viber.voip.billing.ae paramae)
  {
    ay localay = new ay(this);
    bc localbc = bc.a();
    com.viber.voip.a.u localu = com.viber.voip.a.a.z;
    com.viber.voip.a.a.z.getClass();
    localbc.a(localu.b("600"));
    localay.a(2131494260);
    localay.a(getString(2131494261));
    com.viber.voip.a.a.z.getClass();
    a(localay, paramArrayOfq, true, "600");
    localay.a(2131494263, new p(this, paramae));
    localay.a(2131494264, new q(this));
    localay.a(true);
    localay.a(new r(this));
    localay.a();
  }
  
  public static boolean a()
  {
    return d;
  }
  
  public static void b()
  {
    a(a(ax.c));
  }
  
  public static void b(com.viber.voip.billing.ae paramae)
  {
    Intent localIntent = a(ax.b);
    localIntent.putExtra("NUMBER", paramae.a());
    a(localIntent);
  }
  
  private void b(com.viber.voip.billing.ae paramae, String paramString)
  {
    paramae.a(new ab(this, paramae, paramString));
  }
  
  private void b(aw paramaw)
  {
    bc localbc = bc.a();
    com.viber.voip.a.u localu = com.viber.voip.a.a.z;
    com.viber.voip.a.a.z.getClass();
    localbc.a(localu.b("204"));
    a(2131494231, 2131494232, paramaw);
  }
  
  private static void b(String paramString) {}
  
  public static void b(boolean paramBoolean)
  {
    b("setLastCallInitiatedFromDialpad: " + paramBoolean);
    d = paramBoolean;
  }
  
  private static DialogInterface.OnCancelListener c(aw paramaw)
  {
    if (paramaw != null) {
      return new an(paramaw);
    }
    return null;
  }
  
  public static void c()
  {
    a(a(ax.e));
  }
  
  private void d(com.viber.voip.billing.ae paramae)
  {
    ProgressDialog[] arrayOfProgressDialog = new ProgressDialog[1];
    com.viber.voip.billing.a.a().a(new o(this, arrayOfProgressDialog, paramae));
    arrayOfProgressDialog[0] = a(this, getString(2131494242), new ad(this, arrayOfProgressDialog));
  }
  
  private void e(com.viber.voip.billing.ae paramae)
  {
    d(paramae);
  }
  
  private void f(com.viber.voip.billing.ae paramae)
  {
    a(this, paramae);
  }
  
  private void g()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setPositiveButton(17039370, l());
    localBuilder.setOnCancelListener(j());
    localBuilder.setMessage(2131493790);
    localBuilder.setTitle(2131493789);
    localBuilder.create().show();
  }
  
  private void g(com.viber.voip.billing.ae paramae)
  {
    if (ViberApplication.getInstance().getHardwareParameters().isGsmSupported())
    {
      k localk = new k();
      bc.a().a(localk.c());
      Intent localIntent = new Intent("android.intent.action.CALL", Uri.fromParts("tel", paramae.a(), null));
      localIntent.setFlags(268435456);
      ViberApplication.getInstance().startActivity(localIntent);
      return;
    }
    g();
  }
  
  private void h()
  {
    a(k());
  }
  
  private void i()
  {
    b(k());
  }
  
  private DialogInterface.OnCancelListener j()
  {
    return new ao(this);
  }
  
  private aw k()
  {
    return new ap(this);
  }
  
  private DialogInterface.OnClickListener l()
  {
    return new aq(this);
  }
  
  public void a(com.viber.voip.billing.ae paramae, String paramString)
  {
    paramae.a(new u(this, paramae, paramString));
  }
  
  public void b(com.viber.voip.billing.ae paramae, boolean paramBoolean)
  {
    ProgressDialog[] arrayOfProgressDialog = new ProgressDialog[1];
    arrayOfProgressDialog[0] = a(new s(this, arrayOfProgressDialog));
    com.viber.voip.billing.a.a().a(paramae, new t(this, arrayOfProgressDialog, paramBoolean));
  }
  
  public void c(com.viber.voip.billing.ae paramae)
  {
    if (!ViberApplication.preferences().b("DIALOG_GSM_CALL_TO_NON_VIBER_NEVER_SHOW", false))
    {
      View localView = LayoutInflater.from(this).inflate(2130903183, null);
      AlertDialog localAlertDialog = new AlertDialog.Builder(this).setView(localView).create();
      localAlertDialog.setOnCancelListener(new z(this));
      aa localaa = new aa(this, localAlertDialog, paramae);
      Button localButton1 = (Button)localView.findViewById(2131165756);
      localButton1.setOnClickListener(localaa);
      localButton1.setText(2131493558);
      Button localButton2 = (Button)localView.findViewById(2131165757);
      localButton2.setOnClickListener(localaa);
      localButton2.setText(2131493550);
      Button localButton3 = (Button)localView.findViewById(2131165758);
      localButton3.setOnClickListener(localaa);
      localButton3.setText(2131493753);
      ((TextView)localView.findViewById(2131165474)).setText(2131493760);
      localAlertDialog.requestWindowFeature(1);
      localAlertDialog.show();
      return;
    }
    finish();
    g(paramae);
  }
  
  boolean d()
  {
    return !this.b;
  }
  
  public void e()
  {
    ProgressDialog[] arrayOfProgressDialog = new ProgressDialog[1];
    com.viber.voip.billing.a.a().a(new as(this, arrayOfProgressDialog));
    arrayOfProgressDialog[0] = a(getString(2131494242), new av(this, arrayOfProgressDialog));
  }
  
  public void finish()
  {
    try
    {
      throw new Exception("tracing finish() call");
    }
    catch (Exception localException)
    {
      a("finish() called", localException);
      super.finish();
    }
  }
  
  public void onBackPressed()
  {
    b("onBackPressed()");
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    b("onConfigurationChanged");
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    ax localax = ax.values()[localIntent.getIntExtra("METHOD", -1)];
    b("onCreate, method: " + localax);
    switch (ar.a[localax.ordinal()])
    {
    default: 
      return;
    case 1: 
      d(new com.viber.voip.billing.ae(localIntent.getStringExtra("NUMBER")));
      return;
    case 2: 
      e(new com.viber.voip.billing.ae(localIntent.getStringExtra("NUMBER")));
      return;
    case 3: 
      e();
      return;
    case 4: 
      b(new com.viber.voip.billing.ae(localIntent.getStringExtra("NUMBER")), localIntent.getBooleanExtra("IS_VIBER", false));
      return;
    case 5: 
      h();
      return;
    }
    i();
  }
  
  protected void onDestroy()
  {
    b("onDestroy()");
    super.onDestroy();
    this.b = true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ViberOutDialogs
 * JD-Core Version:    0.7.0.1
 */