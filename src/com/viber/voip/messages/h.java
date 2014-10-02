package com.viber.voip.messages;

import android.content.Context;
import android.text.Html;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.util.Pair;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.cp;
import com.viber.voip.util.gk;

public class h
{
  public static final String a = ViberApplication.getInstance().getString(2131494050);
  public static final String b = ViberApplication.getInstance().getString(2131494365);
  private final ViberApplication c;
  private final Context d;
  private final String e;
  private final String f;
  private final String g;
  private final String h;
  private final String i;
  private final String j;
  private final String k;
  
  public h(Context paramContext)
  {
    this.d = paramContext;
    this.c = ((ViberApplication)paramContext.getApplicationContext());
    this.e = paramContext.getString(2131494065);
    this.f = paramContext.getString(2131494060);
    this.g = paramContext.getString(2131494061);
    this.h = paramContext.getString(2131494062);
    this.i = paramContext.getString(2131494063);
    this.j = paramContext.getString(2131494064);
    this.k = paramContext.getString(2131494066);
  }
  
  public static String a(String paramString)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = "add";
    arrayOfObject[1] = d(paramString);
    return String.format("%s/%s", arrayOfObject);
  }
  
  public static String a(String paramString1, String paramString2, String paramString3)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "group_rename";
    arrayOfObject[1] = d(paramString1);
    arrayOfObject[2] = d(paramString2);
    arrayOfObject[3] = d(paramString3);
    return String.format("%s/%s/%s/%s", arrayOfObject);
  }
  
  public static String a(String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int m = 0;
    if (m < paramArrayOfString.length)
    {
      if (localStringBuilder.length() > 0)
      {
        if (-1 + paramArrayOfString.length != m) {
          break label68;
        }
        localStringBuilder.append(' ').append(ViberApplication.getInstance().getString(2131494600)).append(' ');
      }
      for (;;)
      {
        localStringBuilder.append(paramArrayOfString[m]);
        m++;
        break;
        label68:
        localStringBuilder.append(", ");
      }
    }
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = "many_add";
    arrayOfObject[1] = d(localStringBuilder.toString());
    arrayOfObject[2] = Integer.valueOf(paramArrayOfString.length);
    return String.format("%s/%s/%s", arrayOfObject);
  }
  
  public static String b(String paramString)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = "group_icon_changed";
    arrayOfObject[1] = d(paramString);
    return String.format("%s/%s", arrayOfObject);
  }
  
  public static String b(String paramString1, String paramString2, String paramString3)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "many_group_attrs_changed";
    arrayOfObject[1] = d(paramString1);
    arrayOfObject[2] = paramString2;
    arrayOfObject[3] = d(paramString3);
    return String.format("%s/%s/%s/%s", arrayOfObject);
  }
  
  public static String c(String paramString)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = "group_background_changed";
    arrayOfObject[1] = d(paramString);
    return String.format("%s/%s", arrayOfObject);
  }
  
  public static String d(String paramString)
  {
    if (paramString != null) {
      paramString = paramString.replaceAll("#", "##").replaceAll("/", "0#");
    }
    return paramString;
  }
  
  public static String e(String paramString)
  {
    return paramString.replaceAll("0#", "/").replaceAll("##", "#");
  }
  
  public Pair<Spanned, Boolean> a(String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString2)) {
      ViberApplication.log(6, h.class.getSimpleName(), "participantName is empty");
    }
    if (paramString1 != null)
    {
      String[] arrayOfString = paramString1.split("/");
      if (arrayOfString.length > 1)
      {
        String str1 = arrayOfString[0];
        String str2 = e(arrayOfString[1]);
        if (paramInt == 0) {
          paramString2 = a;
        }
        while (str1.equals("add")) {
          if (!str2.equals(this.c.getRegistrationValues().f()))
          {
            return new Pair(Html.fromHtml(String.format(this.e, new Object[] { paramString2 })), Boolean.valueOf(true));
            if (TextUtils.isEmpty(paramString2)) {
              if (paramBoolean) {
                paramString2 = this.d.getString(2131493744);
              } else {
                paramString2 = str2;
              }
            }
          }
          else
          {
            return new Pair(Html.fromHtml(b), Boolean.valueOf(true));
          }
        }
        if (str1.equals("many_add"))
        {
          if ((paramBoolean) && (str2 != null)) {
            str2 = str2.replaceAll("Unknown", this.d.getString(2131493744));
          }
          return new Pair(Html.fromHtml(String.format(this.e, new Object[] { str2 })), Boolean.valueOf(false));
        }
        if (str1.equals("leave"))
        {
          if (arrayOfString.length == 2) {
            return new Pair(Html.fromHtml(String.format(this.f, new Object[] { paramString2 })), Boolean.valueOf(true));
          }
        }
        else
        {
          if (str1.equals("group_rename"))
          {
            if ((arrayOfString.length > 3) && (arrayOfString[3] != null)) {}
            for (String str5 = e(arrayOfString[3]);; str5 = this.d.getString(2131494051))
            {
              String str6 = String.format(this.g, new Object[] { paramString2, str5 });
              SpannableString localSpannableString = new SpannableString(str6);
              int m = str6.indexOf(paramString2);
              localSpannableString.setSpan(new StyleSpan(1), m, m + paramString2.length(), 0);
              int n = str6.lastIndexOf(str5);
              if (n > 0) {
                localSpannableString.setSpan(new StyleSpan(1), n, str6.length(), 0);
              }
              return new Pair(localSpannableString, Boolean.valueOf(true));
            }
          }
          if (str1.equals("leaved_group")) {
            return new Pair(Html.fromHtml(this.k), Boolean.valueOf(true));
          }
          if (str1.equals("group_icon_changed")) {
            return new Pair(Html.fromHtml(String.format(this.h, new Object[] { paramString2 })), Boolean.valueOf(true));
          }
          if (str1.equals("group_background_changed")) {
            return new Pair(Html.fromHtml(String.format(this.i, new Object[] { paramString2 })), Boolean.valueOf(true));
          }
          if (str1.equals("many_group_attrs_changed"))
          {
            String str3 = this.j;
            Object[] arrayOfObject = new Object[3];
            arrayOfObject[0] = paramString2;
            arrayOfObject[1] = arrayOfString[2];
            if ((arrayOfString.length > 3) && (arrayOfString[3] != null)) {}
            for (String str4 = e(arrayOfString[3]);; str4 = this.d.getString(2131494051))
            {
              arrayOfObject[2] = str4;
              return new Pair(Html.fromHtml(String.format(str3, arrayOfObject)), Boolean.valueOf(true));
            }
          }
        }
      }
    }
    return new Pair(Html.fromHtml("Can't parse message:" + paramString1), Boolean.valueOf(false));
  }
  
  public String a(int paramInt1, String paramString, int paramInt2, boolean paramBoolean)
  {
    String str;
    switch (paramInt1)
    {
    case -4: 
    case -3: 
    case -2: 
    case -1: 
    case 7: 
    case 8: 
    case 9: 
    case 11: 
    default: 
      str = paramString;
    case 0: 
    case 1: 
    case 3: 
    case 6: 
    case 2: 
    case 5: 
    case 4: 
    case 10: 
    case 12: 
      do
      {
        return str;
        if (TextUtils.isEmpty(paramString)) {
          return "";
        }
        return paramString + " ";
        return this.d.getString(2131493922);
        return this.d.getString(2131493924);
        Context localContext = this.d;
        if (paramBoolean) {}
        for (int m = 2131493926;; m = 2131493925) {
          return localContext.getString(m);
        }
        return this.d.getString(2131493919);
        return this.d.getString(2131493920);
        return this.d.getString(2131493921);
        return this.d.getString(2131493923);
        str = gk.a(paramString, paramInt2);
      } while (paramInt2 <= 1);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = str;
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      return String.format("%s (%d)", arrayOfObject);
    }
    return this.d.getString(2131494596, new Object[] { paramString });
  }
  
  public String b(String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    return a(j.a(paramString1), paramString2, paramInt, paramBoolean);
  }
  
  public String f(String paramString)
  {
    if (paramString != null) {
      return paramString.split("/")[0];
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.h
 * JD-Core Version:    0.7.0.1
 */