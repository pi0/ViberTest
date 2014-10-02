package com.viber.voip.util.b;

import java.io.Closeable;
import java.io.InputStream;

public final class r
  implements Closeable
{
  private final String b;
  private final long c;
  private final InputStream[] d;
  
  private r(m paramm, String paramString, long paramLong, InputStream[] paramArrayOfInputStream)
  {
    this.b = paramString;
    this.c = paramLong;
    this.d = paramArrayOfInputStream;
  }
  
  public InputStream a(int paramInt)
  {
    return this.d[paramInt];
  }
  
  public void close()
  {
    InputStream[] arrayOfInputStream = this.d;
    int i = arrayOfInputStream.length;
    for (int j = 0; j < i; j++) {
      m.a(arrayOfInputStream[j]);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.r
 * JD-Core Version:    0.7.0.1
 */