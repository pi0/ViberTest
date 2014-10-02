package com.viber.voip.billing;

import android.os.SystemClock;

public class an
{
  public final long a;
  public final String b;
  private final long c;
  
  public an(long paramLong, String paramString)
  {
    this.a = paramLong;
    this.b = paramString;
    this.c = SystemClock.elapsedRealtime();
  }
  
  public boolean a()
  {
    return SystemClock.elapsedRealtime() - this.c > 13800000L;
  }
  
  public String toString()
  {
    return "WebToken{token:" + this.b + ", timestamp:" + this.a + ", localTimestamp:" + this.c + "}";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.an
 * JD-Core Version:    0.7.0.1
 */