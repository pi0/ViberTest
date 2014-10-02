package com.viber.voip.rakuten;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.DialogFragment;
import com.viber.voip.app.ViberFragmentActivity;

public class RakutenRegistrationActivity
  extends ViberFragmentActivity
{
  private static final String a = RakutenRegistrationActivity.class.getSimpleName();
  private DialogFragment b;
  private Handler c = new Handler();
  private q d = new u(this);
  
  public static void a(Context paramContext)
  {
    paramContext.startActivity(new Intent(paramContext, RakutenRegistrationActivity.class));
  }
  
  private void b()
  {
    c("showProgressDialog");
    d();
    this.b = y.a();
    this.b.show(getSupportFragmentManager(), a);
  }
  
  private void b(String paramString)
  {
    c("showConfirmationDialog");
    d();
    this.b = v.a(l.a().j(), paramString);
    this.b.show(getSupportFragmentManager(), a);
  }
  
  private void c()
  {
    c("showRegistrationSuccessDialog");
    d();
    this.b = ab.a();
    this.b.show(getSupportFragmentManager(), a);
  }
  
  private static void c(String paramString) {}
  
  private void d()
  {
    c("hideDialog");
    if (this.b != null)
    {
      this.b.dismiss();
      this.b = null;
    }
  }
  
  protected void a()
  {
    c("showRegistrationFailureDialog");
    d();
    this.b = z.a();
    this.b.show(getSupportFragmentManager(), a);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    c("onCreate");
    super.onCreate(null);
  }
  
  public void onPause()
  {
    c("onPause");
    super.onPause();
    this.c.post(new s(this));
  }
  
  public void onResume()
  {
    c("onResume");
    super.onResume();
    this.c.post(new t(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.rakuten.RakutenRegistrationActivity
 * JD-Core Version:    0.7.0.1
 */