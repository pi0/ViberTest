package com.viber.voip.billing;

import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class bn
{
  private static Pattern a = Pattern.compile("viber.([a-zA-Z_]+\\.[0-9]+)");
  private static HashSet<String> d;
  private static String e = bn.class.getSimpleName();
  private String b;
  private bt c;
  
  private bn(bt parambt, String paramString)
  {
    this.c = parambt;
    this.b = paramString;
  }
  
  public static bn a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("invalid merchant product id: " + paramString);
    }
    int i = paramString.charAt(0);
    if ((c(paramString)) || ((i >= 48) && (i <= 57))) {
      return new bn(bt.b(paramString), paramString);
    }
    Matcher localMatcher = a.matcher(paramString);
    if (localMatcher.matches()) {
      return new bn(bt.a(localMatcher.group(1)), paramString);
    }
    return new bn(bt.a(paramString), paramString);
  }
  
  public static bn b(String paramString)
  {
    d(paramString);
    return new bn(bt.b(paramString), paramString);
  }
  
  private static HashSet<String> c()
  {
    if (d == null)
    {
      d = new HashSet();
      String str1 = ViberApplication.preferences().b("PREF_VIBER_OUT_PRODUCT_IDS", null);
      if (str1 != null)
      {
        e("loaded VO products: " + str1);
        for (String str2 : str1.split(","))
        {
          e("VO product: " + str2);
          d.add(str2);
        }
      }
    }
    return d;
  }
  
  private static boolean c(String paramString)
  {
    try
    {
      boolean bool = c().contains(paramString);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static void d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(',');
      }
      localStringBuilder.append(str2);
    }
    String str1 = localStringBuilder.toString();
    ViberApplication.preferences().a("PREF_VIBER_OUT_PRODUCT_IDS", str1);
    e("Saved VO products: " + str1);
  }
  
  private static void d(String paramString)
  {
    try
    {
      if (!c().contains(paramString))
      {
        e("NEW VO product: " + paramString);
        c().add(paramString);
        d();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static void e(String paramString)
  {
    a.a(e, paramString);
  }
  
  public bt a()
  {
    return this.c;
  }
  
  public String b()
  {
    return "inapp";
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof bn)) {
      return false;
    }
    return this.b.equals(paramObject.toString());
  }
  
  public int hashCode()
  {
    return this.b.hashCode();
  }
  
  public String toString()
  {
    return this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.bn
 * JD-Core Version:    0.7.0.1
 */