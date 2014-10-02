package com.viber.voip.util.upload;

import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.k.a;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class s
{
  public static final String a = bc.b().t;
  public static final String b = bc.b().u;
  private static Handler c = dc.a(dk.j);
  private static final Map<String, y> d = new HashMap();
  private static String e = new String();
  private static Set<String> f = Collections.synchronizedSet(new HashSet());
  
  public static void a()
  {
    synchronized (e)
    {
      e = "";
      Iterator localIterator = f.iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        try
        {
          boolean bool = new File(str2).delete();
          h("FREEZING FILE DELETE stopVideoPlaying. delete video file: " + str2 + ", isOK: " + bool);
        }
        catch (Exception localException) {}
      }
      f.clear();
      return;
    }
  }
  
  public static void a(MessageEntityImpl paramMessageEntityImpl, b paramb)
  {
    if ("animated_message".equals(paramMessageEntityImpl.getMimeType()))
    {
      b(paramMessageEntityImpl.getBucket(), paramMessageEntityImpl.getDownloadId(), paramMessageEntityImpl.getMimeType(), paramb);
      return;
    }
    if (paramMessageEntityImpl.isPublicGroup())
    {
      b(paramMessageEntityImpl, paramb);
      return;
    }
    a(paramMessageEntityImpl.getBucket(), paramMessageEntityImpl.getDownloadId(), paramMessageEntityImpl.getMimeType(), paramb);
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, b paramb)
  {
    g(paramString3);
    File localFile1 = n.a(paramString2, paramString3);
    File localFile2 = n.b(paramString2, paramString3);
    if ((localFile1 == null) || (localFile2 == null))
    {
      h("startDownload error in creating temp or save files");
      paramb.a(null, 2);
      return;
    }
    b(new y(new t(a, localFile1.getPath(), localFile2.getPath(), paramString2, n.a(paramString3), paramString1, paramString3), paramb));
  }
  
  public static void a(String paramString, boolean paramBoolean, b paramb)
  {
    try
    {
      File localFile1 = n.a(paramString, paramBoolean);
      File localFile2 = n.b(paramString, "image");
      String str = n.a("image");
      if ((localFile1 == null) || (localFile2 == null))
      {
        h("startDownload error in creating temp or save files");
        paramb.a(null, 2);
        return;
      }
      b(new y(new x(b, localFile1.getPath(), localFile2.getPath(), paramString, str, paramBoolean), paramb));
      return;
    }
    catch (IOException localIOException)
    {
      h("startDownloadUserImage = " + Log.getStackTraceString(localIOException));
      paramb.a(null, 2);
    }
  }
  
  public static boolean a(String paramString)
  {
    for (;;)
    {
      synchronized (d)
      {
        y localy = (y)d.get(paramString);
        if ((localy != null) && (!localy.c()))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public static z b(String paramString)
  {
    y localy = (y)d.get(paramString);
    if (localy != null) {
      return localy.a();
    }
    return null;
  }
  
  private static void b(MessageEntityImpl paramMessageEntityImpl, b paramb)
  {
    String str = paramMessageEntityImpl.getPublicCacheMimeType();
    g(str);
    File localFile1 = n.a(paramMessageEntityImpl.getDownloadId(), str);
    File localFile2 = n.b(paramMessageEntityImpl.getDownloadId(), str);
    if ((localFile1 == null) || (localFile2 == null))
    {
      h("startDownload error in creating temp or save files");
      paramb.a(null, 2);
      return;
    }
    b(new y(new w(ak.f, n.a(str), paramMessageEntityImpl.getDownloadId(), 0, localFile1.getPath(), localFile2.getPath(), paramMessageEntityImpl, str), paramb));
  }
  
  private static void b(y paramy)
  {
    if (a(y.a(paramy)))
    {
      if (!y.b(paramy).isEmpty()) {
        synchronized (d)
        {
          ((y)d.get(y.a(paramy))).a((b)y.b(paramy).iterator().next());
          h("workerSize = " + d.size() + ", added id = " + y.a(paramy) + ", this id is already in download state. add download listener");
          return;
        }
      }
    }
    else {
      synchronized (d)
      {
        d.put(y.a(paramy), paramy);
        h("workerSize = " + d.size() + ", added id = " + y.a(paramy));
        c.post(paramy);
        return;
      }
    }
  }
  
  private static void b(String paramString, Uri paramUri)
  {
    if ("video".equals(paramString))
    {
      n.a(paramUri);
      h("inserting downloaded video, new Uri = " + paramUri);
    }
    while (!"image".equals(paramString)) {
      return;
    }
    n.c(paramUri);
    h("inserting downloaded image, new Uri = " + paramUri);
  }
  
  public static void b(String paramString1, String paramString2, String paramString3, b paramb)
  {
    File localFile1 = n.a(paramString2, "animated_message_cache");
    File localFile2 = n.b(paramString2, "animated_message_cache");
    String str = a.d(paramString1);
    if ((localFile1 == null) || (localFile2 == null))
    {
      h("startDownload error in creating temp or save files");
      paramb.a(null, 2);
      return;
    }
    b(new y(new v(str, localFile1.getPath(), localFile2.getPath(), paramString2), paramb));
  }
  
  private static void c(y paramy)
  {
    synchronized (d)
    {
      d.remove(y.a(paramy));
      return;
    }
  }
  
  public static void c(String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    h("FREEZING FILE DELETE startVideoPlay: " + paramString);
    synchronized (e)
    {
      e = paramString;
      return;
    }
  }
  
  public static boolean d(String paramString)
  {
    synchronized (e)
    {
      boolean bool = e.equals(paramString);
      return bool;
    }
  }
  
  public static final void e(String paramString)
  {
    h("FREEZING FILE DELETE saveTempFile : " + paramString);
    f.add(paramString);
  }
  
  private static void g(String paramString)
  {
    if ((("image_public_cache".equals(paramString)) || ("video_public_cache".equals(paramString))) && (h.a()))
    {
      File localFile1 = new File(com.viber.voip.w.s);
      if (localFile1.exists())
      {
        File[] arrayOfFile = localFile1.listFiles();
        Arrays.sort(arrayOfFile, new u());
        long l = 0L;
        int i = arrayOfFile.length;
        for (int j = 0; j < i; j++)
        {
          File localFile2 = arrayOfFile[j];
          l += localFile2.length();
          if ((l >= 104857600L) || (System.currentTimeMillis() - localFile2.lastModified() >= 1209600000L)) {
            localFile2.delete();
          }
        }
      }
    }
  }
  
  private static void h(String paramString) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.s
 * JD-Core Version:    0.7.0.1
 */