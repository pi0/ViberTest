package com.viber.voip.util.b;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class q
{
  private final String b;
  private final long[] c;
  private boolean d;
  private o e;
  private long f;
  
  private q(m paramm, String paramString)
  {
    this.b = paramString;
    this.c = new long[m.e(paramm)];
  }
  
  private void a(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != m.e(this.a)) {
      throw b(paramArrayOfString);
    }
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        this.c[i] = Long.parseLong(paramArrayOfString[i]);
        i++;
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw b(paramArrayOfString);
    }
  }
  
  private IOException b(String[] paramArrayOfString)
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }
  
  public File a(int paramInt)
  {
    return new File(m.f(this.a), this.b + "." + paramInt);
  }
  
  public String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (long l : this.c) {
      localStringBuilder.append(' ').append(l);
    }
    return localStringBuilder.toString();
  }
  
  public File b(int paramInt)
  {
    return new File(m.f(this.a), this.b + "." + paramInt + ".tmp");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.q
 * JD-Core Version:    0.7.0.1
 */