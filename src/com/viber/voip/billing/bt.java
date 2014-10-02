package com.viber.voip.billing;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class bt
{
  private static Pattern e;
  bp a;
  int b;
  String c;
  
  static
  {
    if (!bt.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      e = Pattern.compile("^([a-zA-Z_]+)\\.([0-9]+)$");
      return;
    }
  }
  
  private bt(bp parambp, int paramInt, String paramString)
  {
    if ((!d) && (parambp == null)) {
      throw new AssertionError();
    }
    this.a = parambp;
    this.b = paramInt;
    this.c = paramString;
  }
  
  public static bt a(int paramInt)
  {
    return new bt(bp.b, paramInt, "stickers." + paramInt);
  }
  
  public static bt a(String paramString)
  {
    Matcher localMatcher = e.matcher(paramString);
    if (localMatcher.matches())
    {
      if ("stickers".equals(localMatcher.group(1))) {
        return new bt(bp.b, Integer.parseInt(localMatcher.group(2)), paramString);
      }
      return new bt(bp.c, 0, paramString);
    }
    return new bt(bp.c, 0, paramString);
  }
  
  public static bt b(String paramString)
  {
    return new bt(bp.a, 0, paramString);
  }
  
  public bp a()
  {
    return this.a;
  }
  
  public int b()
  {
    return this.b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof bt)) {
      return false;
    }
    return this.c.equals(paramObject.toString());
  }
  
  public int hashCode()
  {
    return this.c.hashCode();
  }
  
  public String toString()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.bt
 * JD-Core Version:    0.7.0.1
 */