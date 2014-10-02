package com.viber.voip.k;

import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Process;
import android.support.v4.app.Fragment;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.dialer.DialerControllerDelegate.DialerEndScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerIncomingScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.voip.ViberApplication;
import com.viber.voip.bd;
import com.viber.voip.phone.PhoneFragmentActivity;
import com.viber.voip.registration.ActivationController;
import com.viber.voip.registration.HardwareParameters;
import com.zoobe.sdk.helper.ZoobeHelper;
import com.zoobe.sdk.helper.ZoobeParams;
import com.zoobe.sdk.helper.ZoobeResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;

public class a
  extends PhoneControllerDelegateAdapter
  implements DialerControllerDelegate.DialerEndScreen, DialerControllerDelegate.DialerIncomingScreen, DialerControllerDelegate.DialerLocalCallState
{
  public static final String a = a.class.getSimpleName();
  public static final boolean b;
  private static a c;
  private static final Pattern j;
  private boolean d = false;
  private boolean e;
  private long f;
  private ZoobeHelper g;
  private boolean h;
  private boolean i = true;
  private ArrayList<i> k = new ArrayList();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 10) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      j = Pattern.compile("((?:(http|https|Http|Https):\\/\\/[a-zA-Z0-9]+.[a-zA-Z0-9]+.[a-zA-Z0-9]+\\/[a-zA-Z0-9]+\\/[a-zA-Z0-9]+.mp4))");
      c = new a();
      ViberApplication.getViberApp(new b());
      return;
    }
  }
  
  private Intent a(ZoobeHelper paramZoobeHelper)
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    this.e = true;
    ZoobeParams localZoobeParams = new ZoobeParams();
    localZoobeParams.uuid = localViberApplication.getHardwareParameters().getUdid();
    localZoobeParams.locale = Locale.getDefault();
    try
    {
      int n = Integer.parseInt(localViberApplication.getHardwareParameters().getCC());
      m = n;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        int m = 0;
      }
    }
    if (m == 0) {
      m = localViberApplication.getActivationController().getCountryCodeInt();
    }
    localZoobeParams.mcc = m;
    localZoobeParams.thumbWidth = 400;
    localZoobeParams.testingMode = false;
    localZoobeParams.isGATenabled = com.viber.voip.a.bc.a().b();
    localZoobeParams.gaTrackingKey = com.viber.voip.a.bc.a().c();
    localZoobeParams.iabKey = localViberApplication.getString(2131494870);
    return paramZoobeHelper.getZoobeLaunchIntent(localZoobeParams);
  }
  
  public static a a()
  {
    try
    {
      a locala = c;
      return locala;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private ZoobeResult a(int paramInt1, int paramInt2, Intent paramIntent, ZoobeHelper paramZoobeHelper)
  {
    h("handleZoobeResponce requestCode=" + paramInt1 + " resultCode=" + paramInt2);
    this.e = false;
    ZoobeResult localZoobeResult;
    if (paramInt1 == 10000)
    {
      localZoobeResult = paramZoobeHelper.handleZoobeResponse(paramInt1, paramInt2, paramIntent);
      if (localZoobeResult.success) {
        h("Zoobe returned : video url = " + localZoobeResult.videoUrl + " Share url = " + localZoobeResult.shareUrl + " link params = " + localZoobeResult.linkParams);
      }
      if (paramIntent == null) {
        break label149;
      }
    }
    label149:
    for (int m = paramIntent.getIntExtra("PID", -1);; m = -1)
    {
      if (m != -1)
      {
        h("onZoobeResponce kill zoobe process");
        Process.killProcess(m);
      }
      return localZoobeResult;
      return null;
    }
  }
  
  public static String a(ZoobeResult paramZoobeResult)
  {
    return paramZoobeResult.linkParams;
  }
  
  public static String a(String paramString)
  {
    if (paramString != null) {
      for (String str1 : paramString.split("&")) {
        if (str1.startsWith("VideoId"))
        {
          String str2 = str1.substring(1 + str1.indexOf("="), str1.length());
          h("getMsgDownloadIdFromZoobeResult: downloadId=" + str2);
          return str2;
        }
      }
    }
    return "zoobe_default_download_id";
  }
  
  private void a(i parami)
  {
    for (;;)
    {
      try
      {
        if (!h())
        {
          parami.a(null);
          return;
        }
        if (this.g == null)
        {
          i();
          this.k.add(parami);
        }
        else
        {
          parami.a(this.g);
        }
      }
      finally {}
    }
  }
  
  public static String b(String paramString)
  {
    return "zoobe_thumbnail_" + paramString;
  }
  
  private static void b(String paramString, Throwable paramThrowable)
  {
    ViberApplication.log(3, a, paramString, paramThrowable);
  }
  
  public static Uri c(String paramString)
  {
    try
    {
      Uri localUri = Uri.fromFile(com.viber.voip.messages.extras.image.h.b(com.viber.voip.messages.extras.image.l.a, b(paramString)));
      h("getThumbnailUriPathForSending: path=" + localUri.toString());
      return localUri;
    }
    catch (NullPointerException localNullPointerException)
    {
      h("getThumbnailUriPathForSending: SDCard not mounted!");
    }
    return null;
  }
  
  public static String d(String paramString)
  {
    return com.viber.voip.bc.b().Z + paramString;
  }
  
  public static String e(String paramString)
  {
    return "http://b.zoobe.com/movies/" + paramString + ".mp4";
  }
  
  private static void h(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private boolean h()
  {
    return this.i;
  }
  
  private void i()
  {
    if (!this.h)
    {
      com.viber.voip.c.g.b().a(new c(this));
      this.h = true;
    }
  }
  
  private void j()
  {
    h("sendReleaseZoobeAudioBroadcastIfNeeded mZoobeRunning=" + this.e);
    if (this.e) {
      a(new f(this));
    }
  }
  
  private void k()
  {
    h("sendCloseBroadcastIfNeeded mZoobeRunning=" + this.e);
    if (this.e)
    {
      this.e = false;
      a(new g(this));
    }
  }
  
  private void l()
  {
    h("running ready callbacks (" + this.k + ")");
    Iterator localIterator = this.k.iterator();
    while (localIterator.hasNext()) {
      ((i)localIterator.next()).a(this.g);
    }
    this.k = null;
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent, h paramh)
  {
    a(new e(this, paramh, paramInt1, paramInt2, paramIntent));
  }
  
  public void a(long paramLong)
  {
    this.f = paramLong;
  }
  
  public void a(Fragment paramFragment)
  {
    a(new d(this, paramFragment));
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      ViberApplication.log("enable zoobe enable=" + paramBoolean);
      if (this.d != paramBoolean)
      {
        this.d = paramBoolean;
        ViberApplication.preferences().a("ANIMATED_MESSAGES_ENABLED", this.d);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.f = 0L;
    }
    ViberApplication.preferences().a("ANIMATED_MESSAGES_TOOLTIP_SHOWN", paramBoolean);
  }
  
  public boolean b()
  {
    return (b) && (h()) && (this.d);
  }
  
  public boolean c()
  {
    return ViberApplication.preferences().b("ANIMATED_MESSAGES_TOOLTIP_SHOWN", false);
  }
  
  public long d()
  {
    return this.f;
  }
  
  public void e()
  {
    h("setShowZoobeSplash");
    ViberApplication.preferences().a("ANIMATED_MESSAGES_SHOW_TOOLTIP", true);
  }
  
  public void f(String paramString)
  {
    h("hanldeViberOnForeground className=" + paramString + " mZoobeRunning=" + this.e);
    if ((this.e) && (!paramString.equals(PhoneFragmentActivity.class.getSimpleName()))) {
      k();
    }
  }
  
  public boolean f()
  {
    return ViberApplication.preferences().b("ANIMATED_MESSAGES_SHOW_TOOLTIP", false);
  }
  
  public void hideEndCall() {}
  
  public void hideReception() {}
  
  public void onAnimatedMessagesSupported()
  {
    ViberApplication.log("onAnimatedMessagesSupported");
    a(true);
  }
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2) {}
  
  public void onCallStarted(boolean paramBoolean)
  {
    h("onCallStarted mZoobeRunning=" + this.e);
    if (this.e) {
      k();
    }
  }
  
  public void onHangup() {}
  
  public void showEndCall() {}
  
  public void showReception(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    h("showReception mZoobeRunning=" + this.e);
    if (this.e) {
      j();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.k.a
 * JD-Core Version:    0.7.0.1
 */