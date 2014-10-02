package com.viber.voip.util.a;

public class f
{
  protected static String[] a = { "a", "a", "i", "i", "u", "u", "e", "e", "o", "o", "ka", "ga", "ki", "gi", "ku", "gu", "ke", "ge", "ko", "go", "sa", "za", "shi", "ji", "su", "zu", "se", "ze", "so", "zo", "ta", "da", "chi", "ji", "tsu", "tsu", "zu", "te", "de", "to", "do", "na", "ni", "nu", "ne", "no", "ha", "ba", "pa", "hi", "bi", "pi", "fu", "bu", "pu", "he", "be", "pe", "ho", "bo", "po", "ma", "mi", "mu", "me", "mo", "a", "ya", "u", "yu", "o", "yo", "ra", "ri", "ru", "re", "ro", "wa", "wa", "wi", "we", "o", "n", "v", "ka", "ke" };
  protected static String[] b = { "", "", "", "", "", "", "", "", "", "", "", "", "ky", "gy", "", "", "", "", "", "", "", "", "sh", "j", "", "", "", "", "", "", "", "", "ch", "ji", "", "", "", "", "", "", "", "", "ny", "", "", "", "", "", "", "hy", "by", "py", "", "", "", "", "", "", "", "", "", "", "my", "", "", "", "a", "ya", "u", "yu", "o", "yo", "", "ry", "", "", "", "", "", "", "", "", "", "", "", "" };
  
  public static boolean a(String paramString)
  {
    return (c(paramString)) || (d(paramString));
  }
  
  public static int b(String paramString)
  {
    if (c(paramString)) {
      return 1;
    }
    if (d(paramString)) {
      return 2;
    }
    if (h(paramString)) {
      return 3;
    }
    return 0;
  }
  
  public static boolean c(String paramString)
  {
    int i = paramString.length();
    for (int j = 0; j < i; j++)
    {
      int k = paramString.charAt(j);
      if ((12353 > k) || (k > 12446)) {
        return false;
      }
    }
    return true;
  }
  
  public static boolean d(String paramString)
  {
    return (e(paramString)) || (f(paramString));
  }
  
  public static boolean e(String paramString)
  {
    int i = paramString.length();
    for (int j = 0; j < i; j++)
    {
      int k = paramString.charAt(j);
      if ((65382 > k) || (k > 65437)) {
        return false;
      }
    }
    return true;
  }
  
  public static boolean f(String paramString)
  {
    int i = paramString.length();
    for (int j = 0; j < i; j++)
    {
      int k = paramString.charAt(j);
      if ((12449 > k) || (k > 12542)) {
        return false;
      }
    }
    return true;
  }
  
  public static boolean g(String paramString)
  {
    int i = paramString.length();
    int j = 0;
    int k;
    if (j < i)
    {
      k = paramString.charAt(j);
      if ((19968 > k) || (k > 40869)) {
        break label66;
      }
    }
    label66:
    for (int m = 1;; m = 0)
    {
      if ((12293 <= k) && (k <= 12295)) {
        m = 1;
      }
      if (m == 0) {
        return false;
      }
      j++;
      break;
      return true;
    }
  }
  
  public static boolean h(String paramString)
  {
    int i = paramString.length();
    int j = 0;
    int k;
    int m;
    if (j < i)
    {
      k = paramString.charAt(j);
      if ((65 <= k) && (k <= 144)) {
        m = 1;
      }
    }
    for (;;)
    {
      if (m == 0)
      {
        return false;
        if ((97 <= k) && (k <= 122))
        {
          m = 1;
          continue;
        }
        if ((33 <= k) && (k <= 58))
        {
          m = 1;
          continue;
        }
        if ((65 <= k) && (k <= 90)) {
          m = 1;
        }
      }
      else
      {
        j++;
        break;
        return true;
      }
      m = 0;
    }
  }
  
  public static String i(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramString.length();
    for (int j = 0; j < i; j++) {
      localStringBuffer.append(d.e(paramString.charAt(j)));
    }
    return localStringBuffer.toString();
  }
  
  public static String j(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramString.length();
    for (int j = 0; j < i; j++) {
      localStringBuffer.append(d.f(paramString.charAt(j)));
    }
    return localStringBuffer.toString();
  }
  
  public static String k(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramString.length();
    int j = 0;
    if (j < i - 1)
    {
      char c2 = paramString.charAt(j);
      char c3 = paramString.charAt(j + 1);
      boolean bool2 = d.a(c2);
      int m = d.f(c2);
      int n = d.f(c3);
      String str2;
      if ((n == 12423) || (n == 12421) || (n == 12419)) {
        str2 = b[(m - 12353)];
      }
      for (;;)
      {
        if (!bool2) {
          str2 = str2.toUpperCase();
        }
        localStringBuffer.append(str2);
        j++;
        break;
        try
        {
          str2 = a[(m - 12353)];
        }
        catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
        {
          str2 = "";
        }
      }
    }
    char c1 = paramString.charAt(i - 1);
    boolean bool1 = d.a(c1);
    int k = d.f(c1);
    String str1 = a[(k - 12353)];
    if (!bool1) {
      str1 = str1.toUpperCase();
    }
    localStringBuffer.append(str1);
    return localStringBuffer.toString();
  }
  
  public static boolean l(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      int i = paramString.length();
      for (int j = 0; j < i; j++) {
        if (d.g(paramString.charAt(j))) {
          return true;
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.a.f
 * JD-Core Version:    0.7.0.1
 */