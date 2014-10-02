package com.viber.voip.registration;

import android.content.Context;
import android.content.res.Resources;
import com.viber.voip.ViberApplication;
import java.io.InputStream;

public class aq
  implements bj
{
  private final String a;
  private final Context b;
  
  public aq(Context paramContext)
  {
    this.b = paramContext;
    this.a = paramContext.getPackageName();
  }
  
  private String b(String paramString)
  {
    if (!paramString.trim().startsWith("@string/")) {
      throw new IllegalArgumentException("Invalid title value = " + paramString + ", required \"@string/<value>\"");
    }
    String str = paramString.replace("@string/", "");
    Resources localResources = this.b.getResources();
    int i = localResources.getIdentifier(str, "string", this.a);
    if (i == 0) {
      throw new IllegalArgumentException("Cant find string by idName = " + str);
    }
    return localResources.getString(i);
  }
  
  public InputStream a()
  {
    return this.b.getResources().openRawResource(2131099670);
  }
  
  public String a(String paramString)
  {
    try
    {
      String str = b(paramString);
      return str;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      ViberApplication.log(6, "CountryCodeHelper", "getLocalizedString#" + localIllegalArgumentException.getMessage());
    }
    return this.b.getResources().getString(2131493744);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.aq
 * JD-Core Version:    0.7.0.1
 */