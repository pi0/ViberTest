package com.viber.voip.backgrounds.b;

import android.net.Uri;
import android.os.SystemClock;
import com.viber.voip.ViberApplication;
import com.viber.voip.backgrounds.k;
import com.viber.voip.backgrounds.m;
import com.viber.voip.backgrounds.n;
import com.viber.voip.backgrounds.q;
import com.viber.voip.util.upload.d;
import java.io.File;

public abstract class e
  implements Runnable
{
  private static final String a = e.class.getSimpleName();
  private q b;
  private d c;
  private int d;
  private long e;
  private m f;
  private com.viber.voip.backgrounds.a g;
  
  public e(q paramq, com.viber.voip.backgrounds.a parama, m paramm)
  {
    a("BackgroundDownloadTask " + paramq.a);
    this.b = paramq;
    this.g = parama;
    this.f = paramm;
    this.d = n.b;
    String str1 = a.a(paramq.a, this.d);
    String str2 = paramq.g.getPath();
    this.c = new d(str1, str2, str2 + ".tmp");
    this.e = SystemClock.elapsedRealtime();
  }
  
  protected static void a(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  long a()
  {
    return this.e;
  }
  
  public abstract void a(int paramInt);
  
  public void run()
  {
    try
    {
      a("Downloading DefaultBackground " + this.b.a);
      this.b.d();
      this.c.d();
      if (new File(this.b.g.getPath()).exists()) {
        this.g.b(this.b);
      }
      this.f.a(this.b);
      return;
    }
    catch (com.viber.voip.util.upload.e locale)
    {
      locale.printStackTrace();
      return;
    }
    catch (k localk)
    {
      a("Low storage during deployment! Aborting");
      return;
    }
    finally
    {
      a(this.b.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.b.e
 * JD-Core Version:    0.7.0.1
 */