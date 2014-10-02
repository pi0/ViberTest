package com.viber.voip.util.upload;

import android.net.Uri;
import com.viber.voip.util.http.HttpRequest;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.TimeoutException;

abstract class ah
  implements Runnable
{
  public Uri a;
  public final p b;
  protected final ak c;
  
  public ah(Uri paramUri, ak paramak, p paramp)
  {
    this.a = paramUri;
    this.c = paramak;
    this.b = paramp;
  }
  
  protected abstract HttpRequest a();
  
  protected void a(r paramr) {}
  
  protected String b()
  {
    return null;
  }
  
  public void run()
  {
    boolean bool;
    if (!ac.b().containsKey(this.a))
    {
      bool = true;
      ac.a("execute, uri:" + this.a + ", isCanceled:" + bool);
      if ((!bool) || (this.a == null)) {
        break label68;
      }
    }
    for (;;)
    {
      return;
      bool = false;
      break;
      label68:
      al localal = new al(this.a, this.c);
      synchronized (ac.c())
      {
        String str1 = (String)ac.c().get(localal);
        if (str1 != null)
        {
          if (this.b == null) {
            continue;
          }
          ac.a("startUpload image is already uploaded! notify listeners");
          ac.a(this.a, str1, 1);
          return;
        }
      }
      r localr;
      try
      {
        HttpRequest localHttpRequest = a();
        ac.a(getClass().getSimpleName() + " starting upload request to " + localHttpRequest.getUrl());
        ac.d().put(this.a, localHttpRequest);
        InputStream localInputStream;
        long l;
        str2 = b();
      }
      catch (TimeoutException localTimeoutException)
      {
        try
        {
          ac.a(localHttpRequest.getResponseHeaders());
          localInputStream = localHttpRequest.getInputStream();
          ac.d().remove(this.a);
          localr = new q().a(localInputStream);
        }
        finally
        {
          ac.d().remove(this.a);
        }
        try
        {
          l = Long.parseLong(localr.b, 16);
          ac.a("hex id from server parsed successfully: " + localr.b + ", decimal:" + l);
          a(localr);
          switch (localr.a)
          {
          case 1: 
          case 0: 
            ac.a(localr.c);
            ac.a(this.a, null, 2);
            return;
          }
        }
        catch (Exception localException2)
        {
          ac.a("Invalid hex id from server: " + localr.b);
          throw localException2;
        }
        localTimeoutException = localTimeoutException;
        ac.a(this.a, null, 0);
        return;
      }
      catch (Exception localException1)
      {
        ac.a(this.a, null, 2);
        return;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        ac.a(this.a, null, 2);
        return;
      }
      String str2;
      if (str2 != null)
      {
        ac.a(this.a, str2, 1);
        return;
      }
      synchronized (ac.c())
      {
        ac.c().put(localal, localr.b);
        if (this.b != null)
        {
          ac.a(this.a, localr.b, 1);
          return;
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.ah
 * JD-Core Version:    0.7.0.1
 */