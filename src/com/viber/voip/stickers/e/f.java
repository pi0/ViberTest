package com.viber.voip.stickers.e;

import android.util.Log;
import com.viber.voip.ViberApplication;
import com.viber.voip.d.d;
import java.io.IOException;
import java.io.InputStream;

final class f
  implements d
{
  public void a(int paramInt, String paramString)
  {
    c.a("statusCode: " + paramInt + ", message " + paramString);
    c.a(false);
  }
  
  public void a(InputStream paramInputStream)
  {
    try
    {
      int i = c.a(c.a(paramInputStream));
      if ((c.b() == 0) && (c.e() == 0))
      {
        c.a("first sync WatchedPackagesCount == AllPackagesCount");
        c.b(i);
      }
      c.a(i);
      c.a(System.currentTimeMillis());
      c.d(ViberApplication.getInstance());
      c.c();
      c.a(false);
      c.a("mAllPackagesCount: " + c.f() + ", mWatchedPackagesCount: " + c.g());
      return;
    }
    catch (IOException localIOException)
    {
      c.a("readJsonStream ex: " + Log.getStackTraceString(localIOException));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.e.f
 * JD-Core Version:    0.7.0.1
 */