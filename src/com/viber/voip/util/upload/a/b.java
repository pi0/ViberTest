package com.viber.voip.util.upload.a;

import android.net.Uri;
import java.io.IOException;

public class b
{
  private static final String a = b.class.getSimpleName();
  private a b;
  
  private Uri a(String paramString, int paramInt)
  {
    return Uri.parse("http://127.0.0.1:" + paramInt + "/?" + "downloadId" + "=" + paramString);
  }
  
  private Uri a(String paramString1, int paramInt, String paramString2, boolean paramBoolean)
  {
    return Uri.parse("http://127.0.0.1:" + paramInt + "/?" + "downloadId" + "=" + paramString1 + "&messageBucket=" + paramString2 + "&isCache=" + paramBoolean);
  }
  
  private int b()
  {
    c();
    int i = 8765;
    while (i <= 8770) {
      try
      {
        this.b = new a(i);
        b("Successfully created media server on port " + i);
        return i;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        i++;
      }
    }
    b("Could not create server on any port!");
    return 0;
  }
  
  private void b(String paramString) {}
  
  private void c()
  {
    if (this.b != null)
    {
      b("Stopping media server");
      this.b.a();
      this.b = null;
    }
  }
  
  public Uri a(String paramString)
  {
    return a(paramString, b());
  }
  
  public Uri a(String paramString1, String paramString2, boolean paramBoolean)
  {
    return a(paramString1, b(), paramString2, paramBoolean);
  }
  
  public void a()
  {
    c();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.a.b
 * JD-Core Version:    0.7.0.1
 */