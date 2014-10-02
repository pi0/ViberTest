package com.viber.voip.stickers.e;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import com.viber.voip.ViberApplication;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.d.b;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.registration.cp;
import com.viber.voip.settings.l;
import com.viber.voip.util.ft;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class c
{
  private static boolean a = false;
  private static boolean b;
  private static Integer c;
  private static Integer d;
  private static Long e;
  private static PendingIntent f;
  private static final long g;
  private static BroadcastReceiver h;
  private static BroadcastReceiver i;
  
  static
  {
    if (a) {}
    for (long l = 120000L;; l = 86400000L)
    {
      g = l;
      return;
    }
  }
  
  public static int a()
  {
    try
    {
      h();
      int j = b();
      int k = j();
      int m = j - k;
      if (m < 0) {
        m = 0;
      }
      return m;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static void a(int paramInt)
  {
    c = Integer.valueOf(paramInt);
    ViberApplication.preferences().a("all_sticker_pack_count", paramInt);
  }
  
  public static void a(Context paramContext)
  {
    b("onOpenStickerMarket");
    paramContext.sendBroadcast(new Intent("com.viber.voip.stickers.notification.OPEN_STICKER_MARKET_ACTION"));
  }
  
  public static int b()
  {
    if (c == null) {
      c = Integer.valueOf(ViberApplication.preferences().b("all_sticker_pack_count", 0));
    }
    return c.intValue();
  }
  
  private static int b(JSONObject paramJSONObject)
  {
    int j = 0;
    ViberApplication localViberApplication = ViberApplication.getInstance();
    cp localcp = localViberApplication.getRegistrationValues();
    String str1 = "+" + localcp.a();
    String str2 = localViberApplication.getHardwareParameters().getMCC();
    String str3 = localViberApplication.getHardwareParameters().getMNC();
    String str4 = ViberApplication.getInstance().getRegistrationValues().e();
    String str5;
    Iterator localIterator;
    int k;
    int m;
    int n;
    if ((!TextUtils.isEmpty(str2)) && (!TextUtils.isEmpty(str3)))
    {
      str5 = String.format("%s/%s", new Object[] { str2, str3 });
      localIterator = paramJSONObject.keys();
      k = 0;
      m = 0;
      n = 0;
    }
    for (;;)
    {
      if (localIterator.hasNext())
      {
        String str6 = (String)localIterator.next();
        try
        {
          if (str6.equals(""))
          {
            j = paramJSONObject.getInt(str6);
          }
          else if (str6.equals(str1))
          {
            m = paramJSONObject.getInt(str6);
          }
          else if (str6.equals(str5))
          {
            k = paramJSONObject.getInt(str6);
          }
          else if ((str4 != null) && (str4.startsWith(str6)))
          {
            int i5 = paramJSONObject.getInt(str6);
            n = i5;
          }
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          i1 = j;
          i2 = k;
          i3 = m;
          i4 = n;
          break label306;
        }
      }
      else
      {
        if (n != 0) {
          return n;
        }
        if (k != 0) {
          return k;
        }
        if (m != 0) {
          return m;
        }
        return j;
        str5 = null;
        break;
      }
      int i1 = j;
      int i2 = k;
      int i3 = m;
      int i4 = n;
      label306:
      n = i4;
      m = i3;
      k = i2;
      j = i1;
    }
  }
  
  private static JSONObject b(InputStream paramInputStream)
  {
    StringBuilder localStringBuilder;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
      localStringBuilder = new StringBuilder();
      for (;;)
      {
        String str = localBufferedReader.readLine();
        if (str == null) {
          break;
        }
        localStringBuilder.append(str);
      }
      b("got JSON: " + localStringBuilder.toString());
    }
    catch (JSONException localJSONException)
    {
      throw new IOException(localJSONException.getMessage());
    }
    finally
    {
      paramInputStream.close();
    }
    JSONObject localJSONObject = new JSONObject(localStringBuilder.toString());
    paramInputStream.close();
    return localJSONObject;
  }
  
  private static void b(long paramLong)
  {
    e = Long.valueOf(paramLong);
    ViberApplication.preferences().a("update_pack_count_time", paramLong);
  }
  
  public static void b(Context paramContext)
  {
    h = new d();
    i = new e();
    paramContext.registerReceiver(h, new IntentFilter("com.viber.voip.stickers.notification.CHECK_STICKER_PACKAGES_COUNT_ACTION"));
    paramContext.registerReceiver(i, new IntentFilter("com.viber.voip.stickers.notification.OPEN_STICKER_MARKET_ACTION"));
    f = PendingIntent.getBroadcast(paramContext, 0, new Intent("com.viber.voip.stickers.notification.CHECK_STICKER_PACKAGES_COUNT_ACTION"), 134217728);
    if (!h()) {
      e(paramContext);
    }
  }
  
  private static void b(String paramString)
  {
    ViberApplication.log(2, "NewStickerPackController", paramString);
  }
  
  public static void c()
  {
    ViberApplication.getInstance().sendBroadcast(new Intent("com.viber.voip.stickers.notification.UPDATE_STICKER_PACKAGES_COUNT_ACTION"));
  }
  
  private static void c(int paramInt)
  {
    d = Integer.valueOf(paramInt);
    ViberApplication.preferences().a("watched_sticker_pack_count", paramInt);
  }
  
  public static void c(Context paramContext)
  {
    if (h != null)
    {
      paramContext.unregisterReceiver(h);
      h = null;
    }
    if (i != null)
    {
      paramContext.unregisterReceiver(i);
      i = null;
    }
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(f);
  }
  
  private static void e(Context paramContext)
  {
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    if ((localAlarmManager != null) && (f != null)) {
      localAlarmManager.set(0, i() + g, f);
    }
  }
  
  private static boolean h()
  {
    try
    {
      if ((!b) && (System.currentTimeMillis() - i() > g) && (ft.b(ViberApplication.getInstance())))
      {
        b = true;
        k();
      }
      return b;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        b = false;
        b("ex: " + Log.getStackTraceString(localIOException));
      }
    }
  }
  
  private static long i()
  {
    if (e == null) {
      e = Long.valueOf(ViberApplication.preferences().b("update_pack_count_time", 0L));
    }
    return e.longValue();
  }
  
  private static int j()
  {
    if (d == null) {
      d = Integer.valueOf(ViberApplication.preferences().b("watched_sticker_pack_count", 0));
    }
    return d.intValue();
  }
  
  private static void k()
  {
    if (a) {}
    for (String str = "https://dl.dropboxusercontent.com/u/108762042/notifications.txt";; str = bc.b().X)
    {
      b("requestCountStickerPacksFromServer url: " + str);
      f localf = new f();
      new b().a(str, null, localf);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.e.c
 * JD-Core Version:    0.7.0.1
 */