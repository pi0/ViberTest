package com.viber.voip.util.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.Locale;
import java.util.Map;

public class a
{
  public static final String a = a.class.getSimpleName();
  private static boolean b = false;
  
  public static b a(String paramString1, String paramString2, String paramString3)
  {
    return a(paramString1, paramString2, paramString3, true);
  }
  
  public static b a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    int i = 1;
    char c1;
    if (!TextUtils.isEmpty(paramString2)) {
      if ((paramString2 != null) && (paramString2.length() > 0))
      {
        c1 = paramString2.charAt(0);
        if ((Build.VERSION.SDK_INT < 11) || (!paramBoolean)) {
          break label375;
        }
        if (!d.b(c1)) {
          break label485;
        }
      }
    }
    label65:
    label96:
    label485:
    for (char c4 = d.f(c1);; c4 = c1)
    {
      String str3;
      int j;
      String str4;
      Object localObject2;
      Object localObject1;
      char c3;
      if (paramString3 != null)
      {
        str3 = paramString3.toLowerCase();
        if ((c4 == 0) || (!d.g(c4)) || ((!TextUtils.isEmpty(paramString2)) && (f.a(paramString2)))) {
          break label276;
        }
        j = i;
        if (!e.a.containsKey(Character.valueOf(c4))) {
          break label282;
        }
        str4 = ((Character)e.a.get(Character.valueOf(c4))).toString();
        char c5 = c4;
        localObject2 = str4;
        localObject1 = str3;
        c3 = c5;
        if (c3 == 0) {
          break label478;
        }
        if ((Character.isDigit(c3)) || (Character.isLetter(c3))) {
          break label442;
        }
        if (i != 0) {
          localObject1 = " " + (String)localObject1;
        }
      }
      for (Object localObject3 = localObject1;; localObject3 = localObject1)
      {
        Object localObject4;
        if (c3 != 0) {
          if (Character.isDigit(c3)) {
            localObject4 = com.viber.voip.contacts.a.a.c.toString();
          }
        }
        for (;;)
        {
          return new b(paramString1, paramString2, localObject3, (String)localObject4);
          c1 = '\000';
          break;
          if ((paramString1 != null) && (paramString1.length() > 0))
          {
            c1 = paramString1.charAt(0);
            break;
          }
          c1 = '\000';
          break;
          str3 = "";
          break label65;
          j = 0;
          break label96;
          if ((j != 0) && (!b) && (d.d(c4)) && (paramString1 != null) && (paramString1.equals(str3)))
          {
            str4 = com.viber.voip.contacts.a.a.b.toString();
            break label133;
          }
          if ((j != 0) && (b))
          {
            str4 = com.viber.voip.contacts.a.a.a.toString();
            break label133;
          }
          if (!TextUtils.isEmpty(str3))
          {
            str4 = str3.substring(0, i);
            break label133;
          }
          str4 = "";
          break label133;
          label375:
          paramString2 = "";
          String str1;
          if (!TextUtils.isEmpty(paramString1))
          {
            str1 = paramString1.toLowerCase();
            if (TextUtils.isEmpty(str1)) {
              break label435;
            }
          }
          for (String str2 = str1.substring(0, i);; str2 = "")
          {
            char c2 = c1;
            localObject1 = str1;
            localObject2 = str2;
            c3 = c2;
            break;
            str1 = "";
            break label391;
          }
          i = 0;
          break label170;
          if ((!Character.isDigit(c3)) && (!Character.isLetter(c3))) {
            localObject4 = "";
          } else {
            localObject4 = localObject2;
          }
        }
      }
    }
  }
  
  public static c a(String paramString)
  {
    return new c(paramString);
  }
  
  public static void a(Context paramContext)
  {
    b = paramContext.getResources().getConfiguration().locale.getLanguage().equals(Locale.JAPANESE.getLanguage());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.a.a
 * JD-Core Version:    0.7.0.1
 */