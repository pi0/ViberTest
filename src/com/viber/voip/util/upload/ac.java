package com.viber.voip.util.upload;

import android.content.ContentResolver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.telephony.TelephonyManager;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.settings.l;
import com.viber.voip.util.http.HttpRequest;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ac
{
  private static Handler b;
  private static final Map<Uri, Set<p>> c;
  private static Map<Uri, HttpRequest> d;
  private static Map<al, String> e;
  
  static
  {
    if (!ac.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = dc.a(dk.j);
      c = Collections.synchronizedMap(new HashMap());
      d = Collections.synchronizedMap(new HashMap());
      e = Collections.synchronizedMap(new LinkedHashMap(10));
      return;
    }
  }
  
  public static void a()
  {
    ViberApplication.preferences().a("check_data_roaming", false);
  }
  
  public static void a(Uri paramUri1, Uri paramUri2, p paramp)
  {
    b(new ai(paramUri1, ak.b, null, "image", null, new ad(paramUri2, paramp)));
  }
  
  private static void a(Uri paramUri, ak paramak, String paramString1, String paramString2, int paramInt, p paramp)
  {
    b(new aj(paramUri, paramak, paramString1, paramString2, paramInt, paramp));
  }
  
  public static void a(Uri paramUri, p paramp)
  {
    Set localSet = (Set)c.get(paramUri);
    if (localSet != null) {
      localSet.remove(paramp);
    }
  }
  
  public static void a(Uri paramUri, String paramString1, String paramString2, p paramp)
  {
    b(new ai(paramUri, ak.a, paramString1, paramString2, null, paramp));
  }
  
  public static void a(MessageEntityImpl paramMessageEntityImpl, Uri paramUri, p paramp)
  {
    ak localak = ak.f;
    if (paramMessageEntityImpl.isImage()) {}
    for (String str = "jpg";; str = "mp4")
    {
      a(paramUri, localak, str, null, 0, new ae(paramp, paramUri, paramMessageEntityImpl));
      return;
    }
  }
  
  public static void a(ak paramak, Uri paramUri, p paramp)
  {
    if ((!a) && (paramak != ak.d) && (paramak != ak.e)) {
      throw new AssertionError();
    }
    a(paramUri, paramak, "jpg", null, 0, paramp);
  }
  
  public static void a(Map<String, List<String>> paramMap)
  {
    b("====== HEADERS ========");
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      b("HEADER " + (String)localEntry.getKey() + " : " + localEntry.getValue());
    }
    b("=======================");
  }
  
  public static boolean a(Context paramContext)
  {
    if (ViberApplication.preferences().b("check_data_roaming", true))
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      return (localNetworkInfo != null) && (localNetworkInfo.getType() == 0) && (localTelephonyManager.isNetworkRoaming());
    }
    return false;
  }
  
  public static boolean a(Uri paramUri)
  {
    ((HttpRequest)d.remove(paramUri));
    Set localSet = (Set)c.remove(paramUri);
    if (localSet != null)
    {
      Iterator localIterator = localSet.iterator();
      while (localIterator.hasNext()) {
        ((p)localIterator.next()).a(paramUri, 4);
      }
    }
    return localSet != null;
  }
  
  private static void b(Uri paramUri1, Uri paramUri2, String paramString, p paramp)
  {
    label79:
    for (;;)
    {
      try
      {
        String str2 = String.valueOf(Long.parseLong(paramString, 16));
        String str1 = str2;
        b("Invalid hex id from server: " + paramString);
      }
      catch (Exception localException1)
      {
        try
        {
          b("hex id from server parsed successfully: " + paramString + ", decimal:" + str1);
          a(paramUri2, ak.f, "jpg", str1, 400, new af(paramp, paramUri1, paramString));
          return;
        }
        catch (Exception localException2)
        {
          break label79;
        }
        localException1 = localException1;
        str1 = paramString;
      }
    }
  }
  
  private static void b(Uri paramUri, String paramString, int paramInt)
  {
    b("notifyListeners key = " + paramUri + ", id = " + paramString + ", statusCode = " + paramInt);
    Set localSet;
    synchronized (c)
    {
      localSet = (Set)c.get(paramUri);
      switch (paramInt)
      {
      default: 
        if (localSet == null) {
          break label234;
        }
        Iterator localIterator3 = localSet.iterator();
        if (!localIterator3.hasNext()) {
          break label234;
        }
        ((p)localIterator3.next()).a(paramUri);
      }
    }
    if (localSet != null)
    {
      Iterator localIterator2 = localSet.iterator();
      while (localIterator2.hasNext())
      {
        ((p)localIterator2.next()).a(paramUri, paramString);
        continue;
        if (localSet != null)
        {
          Iterator localIterator1 = localSet.iterator();
          while (localIterator1.hasNext()) {
            ((p)localIterator1.next()).a(paramUri, paramInt);
          }
        }
      }
    }
    label234:
    if (c.remove(paramUri) != null) {}
  }
  
  private static void b(ah paramah)
  {
    synchronized (e)
    {
      if (e.size() > 10)
      {
        al localal = (al)e.keySet().iterator().next();
        e.remove(localal);
      }
    }
    synchronized (c)
    {
      if (c.containsKey(paramah.a))
      {
        b("startUpload. This file is in uploading state, uri:" + paramah.a + " listener added");
        if (paramah.b != null) {
          ((Set)c.get(paramah.a)).add(paramah.b);
        }
        b("startUpload. put to the worker uri: " + paramah.a + " listener added");
        b.post(paramah);
        return;
        localObject1 = finally;
        throw localObject1;
      }
      b("workerSize = " + c.size() + ", added uri = " + paramah.a);
      HashSet localHashSet = new HashSet(1);
      if (paramah.b != null) {
        localHashSet.add(paramah.b);
      }
      c.put(paramah.a, localHashSet);
    }
  }
  
  private static void b(String paramString) {}
  
  private static String c(Uri paramUri)
  {
    byte[] arrayOfByte = d(paramUri);
    String str = "";
    for (int i = 0; i < arrayOfByte.length; i++) {
      str = str + Integer.toString(256 + (0xFF & arrayOfByte[i]), 16).substring(1);
    }
    return str;
  }
  
  private static byte[] d(Uri paramUri)
  {
    InputStream localInputStream = h().openInputStream(paramUri);
    byte[] arrayOfByte = new byte[1024];
    MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
    int i;
    do
    {
      i = localInputStream.read(arrayOfByte);
      if (i > 0) {
        localMessageDigest.update(arrayOfByte, 0, i);
      }
    } while (i != -1);
    localInputStream.close();
    return localMessageDigest.digest();
  }
  
  private static String g()
  {
    return ViberApplication.getInstance().getHardwareParameters().getUdid();
  }
  
  private static ContentResolver h()
  {
    return ViberApplication.getInstance().getContentResolver();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.ac
 * JD-Core Version:    0.7.0.1
 */