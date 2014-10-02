package com.viber.voip.registration;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.fr;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b
  extends PhoneStateListener
{
  public static final Pattern a = Pattern.compile("(\\d{2})(\\d)(\\d)(\\d)(\\d)(\\d{4})(\\d)(\\d)");
  private static Handler i;
  private static final String m = b.class.getSimpleName();
  final p b = new d(this);
  private Context c;
  private o d;
  private String e = "";
  private String f = "";
  private HashSet<String> g = new HashSet();
  private Runnable h = new c(this);
  private fr j;
  private TelephonyManager k;
  private boolean l = false;
  
  static
  {
    HandlerThread localHandlerThread = new HandlerThread("ActivationCallReceiver");
    localHandlerThread.start();
    i = new Handler(localHandlerThread.getLooper());
  }
  
  public b(o paramo, Context paramContext)
  {
    c("Constructor listener: " + paramo);
    this.c = paramContext;
    this.d = paramo;
    this.k = ((TelephonyManager)this.c.getSystemService("phone"));
    this.j = new fr(i, this.h, 200L);
    ViberApplication.getInstance().getActivationController().registerActivationStateListener(this.b);
  }
  
  private boolean b(String paramString)
  {
    c("checkForTzintuk incomingNumberRaw:" + paramString);
    if (TextUtils.isEmpty(paramString)) {}
    String str1;
    String str2;
    do
    {
      do
      {
        return false;
        str1 = paramString.replaceAll("[^0-9]", "");
        c("checkForTzintuk the number to be checked:" + str1);
      } while ((TextUtils.isEmpty(str1)) || (str1.length() < 12));
      str2 = str1.substring(-12 + str1.length(), str1.length());
    } while ((TextUtils.isEmpty(str2)) || (!str2.matches(a.pattern())));
    Matcher localMatcher = a.matcher(str2);
    label123:
    label381:
    for (;;)
    {
      String str3;
      String[] arrayOfString;
      if (localMatcher.find())
      {
        if (localMatcher.groupCount() == 8)
        {
          str3 = localMatcher.group(1);
          arrayOfString = this.c.getResources().getStringArray(2131623973);
        }
      }
      else {
        for (int n = 0;; n++)
        {
          if (n >= arrayOfString.length) {
            break label381;
          }
          if (str3.equals(arrayOfString[n]))
          {
            if (0 + Integer.valueOf(str3.substring(0, 1)).intValue() + Integer.valueOf(str3.substring(1)).intValue() + Integer.valueOf(localMatcher.group(2)).intValue() + Integer.valueOf(localMatcher.group(3)).intValue() + Integer.valueOf(localMatcher.group(4)).intValue() + Integer.valueOf(localMatcher.group(5)).intValue() + Integer.valueOf(localMatcher.group(7)).intValue() + Integer.valueOf(localMatcher.group(8)).intValue() == 38)
            {
              this.e = localMatcher.group(6);
              this.f = str1;
              c("checkForTzintuk incomingNumberRaw:" + str1 + " is Tzintuk code:" + this.e);
              return true;
            }
            c("checkForTzintuk INVALID NUMBER:" + str1);
            break label123;
            break;
          }
        }
      }
    }
  }
  
  private static void c(String paramString) {}
  
  private void d()
  {
    Intent localIntent = new Intent(ViberApplication.getInstance().getApplicationContext(), RegistrationActivity.class);
    localIntent.setFlags(805437440);
    ViberApplication.getInstance().getApplicationContext().startActivity(localIntent);
  }
  
  private void e()
  {
    c("startFocusCapture");
    this.l = true;
    this.j.a();
    ((AudioManager)this.c.getSystemService("audio")).setStreamMute(2, true);
  }
  
  private void f()
  {
    c("stopFocusCapture");
    ((AudioManager)this.c.getSystemService("audio")).setStreamMute(2, false);
    this.l = false;
    this.j.b();
  }
  
  public void a()
  {
    c("register()");
    this.k.listen(this, 33);
  }
  
  public void b()
  {
    c("unregister()");
    f();
    this.k.listen(this, 0);
    ViberApplication.getInstance().getActivationController().unregisterActivationStateListener(this.b);
  }
  
  public void c()
  {
    if (this.l) {
      d();
    }
  }
  
  public void onCallStateChanged(int paramInt, String paramString)
  {
    c("onCallStateChanged state:" + paramInt + " incomingNumber:" + paramString);
    int n = ViberApplication.getInstance().getActivationController().getStep();
    if ((n != 1) && (n != 0)) {}
    do
    {
      do
      {
        do
        {
          return;
          switch (paramInt)
          {
          default: 
            return;
          case 0: 
            c("onCallStateChanged CALL_STATE_IDLE");
          }
        } while (!this.l);
        if ((TextUtils.isEmpty(paramString)) || (!this.g.contains(paramString))) {
          break;
        }
        this.g.remove(paramString);
      } while (!this.g.isEmpty());
      f();
    } while (TextUtils.isEmpty(this.e));
    this.d.a(this.e);
    return;
    c("onCallStateChanged CALL_STATE_RINGING");
    e();
    if (!b(paramString))
    {
      f();
      return;
    }
    this.g.add(this.f);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.b
 * JD-Core Version:    0.7.0.1
 */