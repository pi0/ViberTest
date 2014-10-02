package com.viber.voip.rakuten;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.billing.a;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.registration.bk;
import com.viber.voip.registration.df;
import com.viber.voip.registration.dj;
import com.viber.voip.registration.dl;
import com.viber.voip.util.gy;

public class l
  extends PhoneControllerDelegateAdapter
{
  private static final String a = l.class.getSimpleName();
  private df b;
  private r c;
  private String d;
  private String e;
  private String f;
  private q g;
  private o h;
  private p i;
  
  private l()
  {
    a(r.a);
    ViberApplication.getInstance().getPhoneController(false).registerDelegate(this);
  }
  
  public static l a()
  {
    return n.a();
  }
  
  private void a(r paramr)
  {
    c("switchState " + paramr);
    this.c = paramr;
    o();
  }
  
  private static void b(String paramString, Throwable paramThrowable) {}
  
  private static void c(String paramString) {}
  
  private boolean c(Context paramContext)
  {
    if (this.b != null)
    {
      c("processActivationResult, url:" + this.b.g);
      c("processActivationResult, rToken:" + this.b.h);
      switch (m.a[this.c.ordinal()])
      {
      default: 
        c("processActivationResult unexpected state: " + this.c);
      }
      for (;;)
      {
        return true;
        if (this.b.h != null)
        {
          a(this.b.h);
          this.b = null;
        }
        else if (this.b.g != null)
        {
          paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.b.g)));
          this.b = null;
        }
      }
    }
    c("processActivationResult: no activation response");
    return false;
  }
  
  private static boolean n()
  {
    if (!dj.d()) {}
    for (boolean bool = true;; bool = false)
    {
      c("checkPreconditions: " + bool);
      return bool;
    }
  }
  
  private void o()
  {
    if (this.g != null) {}
    switch (m.a[this.c.ordinal()])
    {
    default: 
      return;
    case 1: 
      this.g.d();
      return;
    case 2: 
    case 3: 
      this.g.a();
      return;
    case 4: 
      this.g.a("+" + j(), this.f);
      return;
    case 5: 
      this.g.b();
      return;
    }
    this.g.c();
  }
  
  private void p()
  {
    this.d = null;
    this.e = null;
    this.f = null;
  }
  
  private void q()
  {
    a(r.b);
    this.h = new o(this, null);
    this.h.execute(new Void[0]);
  }
  
  private void r()
  {
    a(r.b);
    this.i = new p(this, null);
    this.i.execute(new Void[0]);
  }
  
  private String s()
  {
    return ViberApplication.getInstance().getHardwareParameters().getUdid();
  }
  
  public void a(Activity paramActivity)
  {
    c("handleActivationScreen activity:" + paramActivity);
    if (n()) {
      c(paramActivity);
    }
  }
  
  public void a(Context paramContext)
  {
    c("handleHomeActivityOpened()");
    if (n())
    {
      if ((this.d == null) && (this.e == null)) {
        break label61;
      }
      if (ViberApplication.isActivated())
      {
        if (this.c == r.a) {
          q();
        }
        c("handleHomeActivityOpened() launching RakutenRegistrationActivity");
        RakutenRegistrationActivity.a(paramContext);
      }
    }
    else
    {
      return;
    }
    c("handleHomeActivityOpened() not activated yet");
    return;
    label61:
    if (c(paramContext))
    {
      c("handleHomeActivityOpened() activation result processed");
      return;
    }
    c("handleHomeActivityOpened() no rtoken referral or activation result");
  }
  
  public void a(Context paramContext, String paramString)
  {
    String str1 = l();
    String str2 = bc.b().h + "?s=" + k();
    if (!TextUtils.isEmpty(str1)) {
      str2 = str2 + "&t=" + str1;
    }
    if (!TextUtils.isEmpty(paramString)) {
      str2 = str2 + "&" + paramString;
    }
    c("openRakutenAccount() url: " + str2);
    gy.a(paramContext, str2);
  }
  
  public void a(Context paramContext, String paramString1, String paramString2)
  {
    c("handleRakutenSchemeUri() token=" + paramString1 + ", referral=" + paramString2);
    RakutenUrlSchemeData localRakutenUrlSchemeData;
    if (n()) {
      localRakutenUrlSchemeData = new RakutenUrlSchemeData(paramString1, paramString2);
    }
    switch (m.a[this.c.ordinal()])
    {
    default: 
      c("handleRakutenSchemeUri() unexpected state: " + this.c);
      return;
    }
    if (ViberApplication.isActivated())
    {
      this.d = localRakutenUrlSchemeData.a;
      this.e = localRakutenUrlSchemeData.b;
      c("handleRakutenSchemeUri, referral:" + this.e);
      c("handleRakutenSchemeUri, rToken:" + this.d);
      return;
    }
    c("handleRakutenSchemeUri, not activated, ignoring");
  }
  
  public void a(q paramq)
  {
    c("registerUiCallbacks");
    this.g = paramq;
    o();
  }
  
  public void a(df paramdf)
  {
    if (n())
    {
      if (paramdf == null) {
        break label82;
      }
      c("handleActivateUserResponse, url:" + paramdf.g);
      c("handleActivateUserResponse, rToken:" + paramdf.h);
      if ((paramdf.h != null) || (paramdf.g != null)) {
        this.b = paramdf;
      }
    }
    return;
    label82:
    c("handleActivateUserResponse, result = null");
  }
  
  public void a(String paramString)
  {
    bk.a(dl.f, paramString);
  }
  
  public void b(Context paramContext)
  {
    a(paramContext, "");
  }
  
  public void b(q paramq)
  {
    c("unregisterUiCallbacks");
    if (this.g == paramq) {
      this.g = null;
    }
  }
  
  public boolean b()
  {
    if (!n()) {
      return false;
    }
    String str = l();
    boolean bool = dj.c();
    c("isRakutenAccountVisible rToken:" + str + ", isJapanese:" + bool);
    return bool;
  }
  
  public boolean c()
  {
    return !TextUtils.isEmpty(l());
  }
  
  public void d()
  {
    String str = bc.b().i;
    c("reconnect() url: " + str);
    a("");
    p();
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(str));
    localIntent.setFlags(268435456);
    ViberApplication.getInstance().startActivity(localIntent);
  }
  
  public void e()
  {
    c("handleConfirmationOk");
    r();
  }
  
  public void f()
  {
    c("handleConfirmationCancel");
    a(r.a);
    p();
  }
  
  public void g()
  {
    c("handleRegistrationSuccessOk");
    a(r.a);
  }
  
  public void h()
  {
    c("handleRegistrationSuccessCancel");
    a(r.a);
  }
  
  public void i()
  {
    c("handleRegistrationFailureOk");
    a(r.a);
  }
  
  String j()
  {
    return a.c();
  }
  
  public String k()
  {
    return bk.a(dl.g);
  }
  
  public String l()
  {
    return bk.a(dl.f);
  }
  
  public void m() {}
  
  public void onEncryptedPhoneNumber(String paramString)
  {
    c("onEncryptedPhoneNumber: " + paramString);
    if (!TextUtils.isEmpty(paramString)) {
      bk.a(dl.g, paramString);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.rakuten.l
 * JD-Core Version:    0.7.0.1
 */