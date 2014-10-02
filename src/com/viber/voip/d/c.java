package com.viber.voip.d;

import android.os.Handler;
import com.viber.voip.util.a;
import java.io.IOException;
import java.io.InputStream;

public class c
  extends a
  implements Runnable
{
  private final String b;
  private final String c;
  private int d;
  private d e;
  
  public c(b paramb, String paramString1, String paramString2, d paramd)
  {
    this.e = paramd;
    if (paramString1 == null) {
      throw new IllegalArgumentException("url parameter can not be null");
    }
    this.b = paramString1;
    this.c = paramString2;
  }
  
  public void a()
  {
    try
    {
      InputStream localInputStream = b.a(this.a, this.b, this.c, 0);
      this.e.a(localInputStream);
      this.d = 1;
      return;
    }
    catch (IOException localIOException)
    {
      this.d = 2;
      this.e.a(this.d, localIOException.getMessage());
    }
  }
  
  public void b()
  {
    b.a().removeCallbacks(this);
    this.d = 3;
    this.e.a(this.d, "Data receive interrupted");
  }
  
  public void run()
  {
    a();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.d.c
 * JD-Core Version:    0.7.0.1
 */