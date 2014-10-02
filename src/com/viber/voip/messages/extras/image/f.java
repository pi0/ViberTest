package com.viber.voip.messages.extras.image;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import com.viber.voip.util.bj;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Set;

class f
  implements Runnable
{
  private Context b;
  private Uri[] c;
  private String d;
  private l e = l.b;
  private int f;
  private int g;
  private int h;
  private boolean i;
  
  public f(b paramb, int paramInt1, Context paramContext, Uri[] paramArrayOfUri, String paramString, l paraml, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    this.b = paramContext;
    this.c = paramArrayOfUri;
    this.d = paramString;
    this.e = paraml;
    this.f = paramInt3;
    this.h = paramInt1;
    this.g = paramInt2;
    this.i = paramBoolean;
  }
  
  private SendMediaDataContainer a(Uri paramUri, int paramInt, boolean paramBoolean)
  {
    if (b(paramUri)) {
      if (!h.a(paramUri)) {}
    }
    label295:
    for (Uri localUri = h.a(this.b, paramUri, this.d);; localUri = paramUri) {
      try
      {
        a locala2;
        SendMediaDataContainer localSendMediaDataContainer;
        if ("image".equals(this.d))
        {
          locala2 = h.a(this.b, localUri, this.e, paramInt, paramInt, true, this.f);
          if (locala2 == null) {
            localSendMediaDataContainer = null;
          }
        }
        a locala1;
        do
        {
          do
          {
            return localSendMediaDataContainer;
            if (!a(paramUri)) {
              break label295;
            }
            localUri = h.d(this.b, paramUri);
            break;
            paramUri = locala2.a;
            localSendMediaDataContainer = new SendMediaDataContainer();
            localSendMediaDataContainer.a = localUri;
            localSendMediaDataContainer.b = paramUri;
            localSendMediaDataContainer.f = m.a(this.b, paramUri, this.d);
            localSendMediaDataContainer.d = this.d;
          } while (!paramBoolean);
          locala1 = m.a(this.b, localUri);
        } while (locala1 == null);
        localSendMediaDataContainer.c = locala1.a;
        localSendMediaDataContainer.g = locala1.b;
        localSendMediaDataContainer.h = locala1.c;
        return localSendMediaDataContainer;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        System.gc();
        b.a("resizeImage " + Log.getStackTraceString(localOutOfMemoryError));
        return null;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        b.a("resizeImage " + Log.getStackTraceString(localFileNotFoundException));
        return null;
      }
      catch (IOException localIOException)
      {
        b.a("resizeImage " + Log.getStackTraceString(localIOException));
        return null;
      }
    }
  }
  
  private void a(SendMediaDataContainer[] paramArrayOfSendMediaDataContainer)
  {
    int j = 0;
    if (j < paramArrayOfSendMediaDataContainer.length)
    {
      SendMediaDataContainer localSendMediaDataContainer = paramArrayOfSendMediaDataContainer[j];
      if (localSendMediaDataContainer == null) {}
      for (;;)
      {
        j++;
        break;
        b.a("delete generated image " + localSendMediaDataContainer);
        h.c(this.b, localSendMediaDataContainer.b);
        h.c(this.b, localSendMediaDataContainer.c);
      }
    }
  }
  
  private boolean a(Uri paramUri)
  {
    String str = paramUri.getScheme();
    return (str != null) && (str.startsWith("http"));
  }
  
  private boolean a(SendMediaDataContainer[] paramArrayOfSendMediaDataContainer, SendMediaDataContainer paramSendMediaDataContainer)
  {
    synchronized (b.b(this.a))
    {
      if (b.b(this.a).remove(Integer.valueOf(this.h)))
      {
        b.a("processing seq: " + this.h + " was canceled");
        a(paramArrayOfSendMediaDataContainer);
        return true;
      }
      synchronized (b.c(this.a))
      {
        if (b.c(this.a).remove(Integer.valueOf(this.h)))
        {
          b.a("processing seq: " + this.h + " was stopped");
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean b(Uri paramUri)
  {
    if (h.a(paramUri)) {}
    while ((bj.a(paramUri) == -1) || (a(paramUri))) {
      return true;
    }
    return false;
  }
  
  public void run()
  {
    if (this.c == null) {
      return;
    }
    int j = this.c.length;
    SendMediaDataContainer[] arrayOfSendMediaDataContainer = new SendMediaDataContainer[j];
    for (int k = 0;; k++)
    {
      if (k >= j) {
        break label95;
      }
      if (a(arrayOfSendMediaDataContainer, null)) {
        break;
      }
      arrayOfSendMediaDataContainer[k] = a(this.c[k], this.g, this.i);
      if (a(arrayOfSendMediaDataContainer, arrayOfSendMediaDataContainer[k])) {
        break;
      }
      if (arrayOfSendMediaDataContainer[k] != null) {
        b.a(this.a, this.h, arrayOfSendMediaDataContainer[k], k, j);
      }
    }
    label95:
    b.a(this.a, this.h, arrayOfSendMediaDataContainer);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.f
 * JD-Core Version:    0.7.0.1
 */