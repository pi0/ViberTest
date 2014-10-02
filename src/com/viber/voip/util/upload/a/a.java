package com.viber.voip.util.upload.a;

import com.viber.voip.ViberEnv;
import com.viber.voip.util.bj;
import com.viber.voip.util.http.HttpRequest;
import com.viber.voip.util.upload.j;
import com.viber.voip.util.upload.k;
import com.viber.voip.util.upload.n;
import com.viber.voip.util.upload.s;
import com.viber.voip.util.upload.z;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

public class a
  extends c
{
  public a(int paramInt)
  {
    super(paramInt, null);
  }
  
  private static void a(String paramString) {}
  
  public g a(String paramString1, String paramString2, Properties paramProperties1, Properties paramProperties2, Properties paramProperties3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramProperties1.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append(localEntry.getKey() + " : " + localEntry.getValue() + "\n");
    }
    String str1 = (String)paramProperties2.get("downloadId");
    String str4;
    if (Boolean.parseBoolean((String)paramProperties2.get("isCache"))) {
      str4 = (String)paramProperties2.get("VideoId");
    }
    try
    {
      if ((n.a(str4, "animated_message_cache").exists()) && (!s.a(str4)))
      {
        g localg4 = new g(this, "200 OK", "video/mp4", new FileInputStream(n.a(str4, "animated_message_cache")), (int)n.a(str1, "animated_message_cache").length());
        localg4.a("Content-Length", "" + (int)n.a(str4, "animated_message_cache").length());
        return localg4;
      }
      if (bj.g(n.c("animated_message_cache")) == 5) {
        bj.h(n.c("animated_message_cache")).delete();
      }
      s.b((String)paramProperties2.get("messageBucket") + "&" + "Location" + "=" + (String)paramProperties2.get("Location") + "&" + "VideoId" + "=" + (String)paramProperties2.get("VideoId"), str4, "animated_message_cache", null);
    }
    catch (IOException localIOException3)
    {
      for (;;)
      {
        z localz1;
        String str2;
        HttpRequest localHttpRequest;
        String str3;
        InputStream localInputStream;
        k localk;
        int i1;
        int n;
        int k;
        int m;
        continue;
        z localz2 = localz1;
        int i = 0;
      }
    }
    a("serve uri: " + paramString1 + ", parms: " + paramProperties2 + " header: " + localStringBuilder.toString());
    localz1 = null;
    for (;;)
    {
      if (!s.a(str1)) {
        break label908;
      }
      if (localz1 == null) {
        localz1 = s.b(str1);
      }
      if ((localz1 != null) && (localz1.b != 0) && (localz1.d != null))
      {
        localz2 = localz1;
        i = 1;
        if (i != 0) {
          break;
        }
        return null;
      }
      a("fileData/totalFileSize/tempFile unavailable, waiting...");
      try
      {
        Thread.sleep(100L);
      }
      catch (InterruptedException localInterruptedException) {}
    }
    str2 = paramProperties1.getProperty("range");
    if (str2 != null)
    {
      a("Range header received, proxying to http url connection");
      try
      {
        localHttpRequest = ViberEnv.newHttpRequest(localz2.c);
        localHttpRequest.setRequestHeader("Range", str2);
        str3 = localHttpRequest.getResponseHeader("Content-Range");
        int j = localHttpRequest.getResponseCode();
        a("Response code: " + j);
        if ((j != 200) && (j != 206))
        {
          g localg3 = new g(this, "416 Requested Range Not Satisfiable", "video/mp4", "Range not satisfiable");
          return localg3;
        }
      }
      catch (IOException localIOException2)
      {
        localIOException2.printStackTrace();
        return null;
      }
      localInputStream = localHttpRequest.getInputStream();
      localk = j.a(str3);
      if (localk.b() > 0)
      {
        i1 = localk.b();
        (1 + (localk.b() - localk.a()));
        if (i1 > -1 + localz2.b) {
          i1 = -1 + localz2.b;
        }
      }
      for (n = 1 + (i1 - localk.a());; n = k - m)
      {
        a("Serving bytes: " + n);
        g localg2 = new g(this, "206 Partial Content", "video/mp4", localInputStream, n);
        localg2.a("Content-Range", str3);
        localg2.a("Content-Length", "" + n);
        return localg2;
        k = localz2.b;
        m = localk.a();
      }
    }
    try
    {
      com.viber.voip.util.upload.c localc = new com.viber.voip.util.upload.c(localz2.d, localz2.b);
      a("downloadId = " + str1 + ", return stream = " + localc + ", total file size = " + localz2.b);
      g localg1 = new g(this, "200 OK", "video/mp4", localc, localz2.b);
      localg1.a("Content-Length", "" + localz2.b);
      return localg1;
    }
    catch (IOException localIOException1)
    {
      localIOException1.printStackTrace();
      return null;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.a.a
 * JD-Core Version:    0.7.0.1
 */