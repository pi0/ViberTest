package com.viber.voip.messages.extras.twitter;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.viber.dexshared.TwitterHelper;
import com.viber.voip.ViberEnv;
import com.viber.voip.a.a;
import com.viber.voip.a.an;
import com.viber.voip.a.ao;
import com.viber.voip.a.ap;
import com.viber.voip.a.aq;
import com.viber.voip.a.aw;
import com.viber.voip.a.bc;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.ft;

public class l
{
  private static l b;
  private Context a;
  private t c;
  private z d;
  private aa e;
  private TwitterHelper f;
  private aw g = new aw();
  private BroadcastReceiver h;
  private IntentFilter i;
  private e j = new s(this);
  
  private l(Context paramContext)
  {
    if (this.a == null)
    {
      this.a = paramContext;
      this.f = ViberEnv.newTwitterHelper();
      this.f.init("6AqyEYuQnznxau9uYns17w", "eRZZMxdC2gAx5PnMbtcetAqRYPSv6FnA3J21rOAo74");
      this.e = new aa(paramContext);
      e();
    }
  }
  
  public static l a(Context paramContext)
  {
    if (b == null) {
      b = new l(paramContext);
    }
    return b;
  }
  
  private void a(Activity paramActivity, long paramLong, Uri paramUri, String paramString)
  {
    dc.a(dk.a).post(new r(this, paramActivity, paramLong, paramUri, paramString));
  }
  
  private void a(String paramString)
  {
    b(this.a);
    Intent localIntent = new Intent("com.viber.voip.action.TWITTER_AUTH_DIALOG");
    localIntent.setFlags(268435456);
    localIntent.putExtra("extra_load_url", paramString);
    this.a.startActivity(localIntent);
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.viber.voip.action.TWITTER_ERROR_DIALOG");
    localIntent.setFlags(268435456);
    localIntent.putExtra("extra_error_message", paramString);
    this.a.startActivity(localIntent);
    if ((paramBoolean) && (this.c != null)) {
      this.c.onAuthError(paramString);
    }
  }
  
  private String b(String paramString)
  {
    return paramString.substring("error:".length());
  }
  
  private void b(Context paramContext)
  {
    paramContext.registerReceiver(this.h, this.i);
  }
  
  private void c(Activity paramActivity, long paramLong, String paramString1, String paramString2, String paramString3)
  {
    dc.a(dk.d).post(new q(this, paramActivity, paramString2, paramLong, paramString3));
  }
  
  private void c(Context paramContext)
  {
    paramContext.unregisterReceiver(this.h);
  }
  
  private void c(String paramString)
  {
    if (this.d != null) {
      this.d.a(paramString);
    }
  }
  
  private void d(String paramString)
  {
    Log.d("TwitterManager", paramString);
  }
  
  private void e()
  {
    this.i = new IntentFilter();
    this.i.addAction("action_handle_oauth_verifier");
    this.i.addAction("action_handle_oauth_verifier_error");
    this.i.addAction("action_handle_dialog_destroy");
    this.h = new m(this);
  }
  
  private void f()
  {
    if (this.d != null) {
      this.d.a();
    }
  }
  
  private void g()
  {
    if (this.d != null) {
      this.d.b();
    }
  }
  
  public void a()
  {
    this.e.a();
    this.f.resetTwitterOAuthAccessToken();
  }
  
  public void a(Activity paramActivity, long paramLong, String paramString1, String paramString2, String paramString3)
  {
    if ((c()) && (ft.c(paramActivity)))
    {
      Intent localIntent = new Intent("com.viber.voip.action.TWITTER_GET_TWEET_DIALOG");
      localIntent.putExtra("extra_msg_id", paramLong);
      localIntent.putExtra("extra_msg_myme_type", paramString1);
      localIntent.putExtra("extra_msg_media_uri", paramString2);
      localIntent.putExtra("extra_msg_text", paramString3);
      localIntent.setFlags(268435456);
      this.a.startActivity(localIntent);
    }
  }
  
  public void a(Activity paramActivity, long paramLong, String paramString1, String paramString2, String paramString3, z paramz)
  {
    this.d = paramz;
    a(paramActivity, new o(this, paramActivity, paramLong, paramString1, paramString2, paramString3));
  }
  
  public void a(Activity paramActivity, t paramt)
  {
    this.c = paramt;
    if (ft.c(paramActivity))
    {
      this.f.setTwitterAccessToken(this.e.c(), this.e.d());
      if (!c()) {
        bc.a().a(a.i.a.a(aq.b, ap.a));
      }
    }
    while (this.c == null)
    {
      new v(this, paramActivity).execute(new Void[0]);
      do
      {
        return;
      } while (this.c == null);
      bc.a().a(a.i.a.b(aq.b));
      this.c.onAuthComplete();
      return;
    }
    String str = this.a.getString(2131493756);
    bc.a().a(a.i.a.b(aq.b, str));
    this.c.onAuthError(str);
  }
  
  public void a(Activity paramActivity, String paramString)
  {
    if (c()) {
      dc.a(dk.a).post(new n(this, paramActivity, paramString));
    }
  }
  
  public void a(ab paramab)
  {
    this.e.a(paramab);
  }
  
  public String b()
  {
    return this.e.b();
  }
  
  public void b(Activity paramActivity, long paramLong, String paramString1, String paramString2, String paramString3)
  {
    dc.a(dk.a).post(new p(this, paramActivity, paramLong, paramString1, paramString2, paramString3));
  }
  
  public boolean c()
  {
    return this.f.isAccessTokenExists(this.e.c(), this.e.d());
  }
  
  public void d()
  {
    if (c())
    {
      Intent localIntent = new Intent("com.viber.voip.action.TWITTER_CHANGE_ACCOUNT_DIALOG");
      localIntent.setFlags(268435456);
      localIntent.putExtra("username_extra", b());
      this.a.startActivity(localIntent);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.l
 * JD-Core Version:    0.7.0.1
 */