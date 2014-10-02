package com.viber.voip.util;

import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import com.viber.voip.registration.dj;
import java.util.Arrays;
import java.util.List;

public class m
  implements l
{
  private static final List<String> a = Arrays.asList(new String[] { "heb", "ara" });
  private final Resources b;
  
  public m(Resources paramResources)
  {
    if (paramResources == null) {
      throw new IllegalArgumentException("resources must be not null");
    }
    this.b = paramResources;
  }
  
  private n a(SpannableStringBuilder paramSpannableStringBuilder, String paramString, CharSequence paramCharSequence)
  {
    int i = paramSpannableStringBuilder.toString().indexOf(paramString);
    n localn = null;
    if (i != -1)
    {
      paramSpannableStringBuilder.replace(i, i + paramString.length(), paramCharSequence);
      localn = new n(i, i + paramCharSequence.length());
    }
    return localn;
  }
  
  private CharSequence a(CharSequence paramCharSequence)
  {
    SpannableString localSpannableString = new SpannableString(paramCharSequence);
    for (int i = 0; i < localSpannableString.length(); i++)
    {
      int j = localSpannableString.charAt(i);
      if ((j == 8206) || (j == 8206)) {
        localSpannableString.setSpan(new ForegroundColorSpan(0), i, i + 1, 18);
      }
    }
    return localSpannableString;
  }
  
  public CharSequence a()
  {
    return a(this.b.getString(2131493832));
  }
  
  public CharSequence a(int paramInt, String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    this.b.getString(2131493170);
    this.b.getString(2131493169);
    try
    {
      Resources localResources = this.b;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = (paramString + ": ");
      String str = localResources.getString(paramInt, arrayOfObject);
      return str;
    }
    catch (Resources.NotFoundException localNotFoundException) {}
    return "";
  }
  
  public CharSequence a(int paramInt, String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      paramString1 = "";
    }
    if (paramString2 == null) {
      paramString2 = "";
    }
    this.b.getString(2131493170);
    this.b.getString(2131493169);
    String str = this.b.getString(2131493566, new Object[] { paramString1, paramString2 });
    return this.b.getString(paramInt, new Object[] { str });
  }
  
  public CharSequence a(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1).append(' ').append('‎').append("(+").append(paramString2).append(")").append('‎');
    return a(localStringBuilder.toString());
  }
  
  public CharSequence a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null) {
      paramString1 = "";
    }
    if (paramString2 == null) {
      paramString2 = "";
    }
    if (paramString3 == null) {
      paramString3 = "";
    }
    String str = this.b.getString(2131493566, new Object[] { paramString1, paramString2 });
    return str + ": " + paramString3;
  }
  
  public CharSequence a(List<String> paramList, String paramString)
  {
    if (paramList.size() < 4) {}
    StringBuilder localStringBuilder;
    for (int i = paramList.size();; i = 4)
    {
      localStringBuilder = new StringBuilder();
      for (int j = 0; j < i; j++)
      {
        localStringBuilder.append((String)paramList.get(j));
        if (j != i - 1) {
          localStringBuilder.append(", ");
        }
      }
    }
    if (paramList.size() > 4)
    {
      Resources localResources = this.b;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(-4 + paramList.size());
      localStringBuilder.append(localResources.getString(2131493580, arrayOfObject));
    }
    return e(localStringBuilder.toString(), paramString);
  }
  
  public String a(String paramString)
  {
    return a('‎' + paramString + '‎').toString();
  }
  
  public CharSequence b(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('‎').append("(+").append(paramString1).append(")").append(' ').append(paramString2).append('‎');
    String str = localStringBuilder.toString();
    Resources localResources = this.b;
    if (dj.d()) {}
    for (int i = 2131493988;; i = 2131493987) {
      return a(localResources.getString(i, new Object[] { str }));
    }
  }
  
  public CharSequence c(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      paramString1 = "";
    }
    if (paramString2 == null) {
      paramString2 = "";
    }
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(this.b.getString(2131493564));
    a(localSpannableStringBuilder, "${user}", paramString1);
    a(localSpannableStringBuilder, "${group}", paramString2);
    return localSpannableStringBuilder.toString();
  }
  
  public CharSequence d(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      paramString1 = "";
    }
    if (paramString2 == null) {
      paramString2 = "";
    }
    return paramString1 + ": " + paramString2;
  }
  
  public CharSequence e(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      paramString1 = "";
    }
    if (paramString2 == null) {
      paramString2 = "";
    }
    this.b.getString(2131493170);
    this.b.getString(2131493169);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(this.b.getString(2131493578));
    a(localSpannableStringBuilder, "${user}", paramString1);
    a(localSpannableStringBuilder, "${group}", paramString2);
    return localSpannableStringBuilder.toString();
  }
  
  public CharSequence f(String paramString1, String paramString2)
  {
    if (gj.c(paramString2)) {
      return paramString1;
    }
    return paramString1 + " - \"" + paramString2 + "\"";
  }
  
  public CharSequence g(String paramString1, String paramString2)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(this.b.getString(2131493579));
    a(localSpannableStringBuilder, "${count}", paramString1);
    a(localSpannableStringBuilder, "${group}", paramString2);
    return localSpannableStringBuilder.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.m
 * JD-Core Version:    0.7.0.1
 */