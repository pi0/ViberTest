package com.viber.voip.registration;

import android.content.Context;
import com.viber.jni.CountryNameInfo;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import java.util.Iterator;
import java.util.List;

public class cp
{
  private static final String a = cp.class.getSimpleName();
  private l b = ViberApplication.preferences();
  private String c = null;
  private int d = -1;
  private String e = null;
  private String f = null;
  private String g = null;
  private String h = null;
  
  public cp(Context paramContext) {}
  
  public static String a(String paramString1, String paramString2)
  {
    CountryNameInfo localCountryNameInfo = ViberApplication.getInstance().getPhoneController(true).getCountryName("+" + paramString1);
    if ((localCountryNameInfo != null) && (localCountryNameInfo.countryShortName != null))
    {
      c("deriveCountryCode from number: " + paramString1 + ", or countryCode: " + paramString2 + " - name:" + localCountryNameInfo.countryName + ", short name:" + localCountryNameInfo.countryShortName);
      return localCountryNameInfo.countryShortName;
    }
    String str = b(paramString2);
    c("deriveCountryCode from number: " + paramString1 + ", or countryCode: " + paramString2 + " - FAILED, fallback:" + str);
    return str;
  }
  
  private static String b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Iterator localIterator = SelectCountryActivity.a().iterator();
    while (localIterator.hasNext())
    {
      CountryCode localCountryCode = (CountryCode)localIterator.next();
      if (paramString.equals(localCountryCode.b())) {
        return localCountryCode.a();
      }
    }
    return null;
  }
  
  private static void c(String paramString) {}
  
  public String a()
  {
    if (this.c == null) {
      this.c = this.b.b("reg_viber_country_code", "0");
    }
    return this.c;
  }
  
  public void a(String paramString)
  {
    this.g = paramString;
    this.h = ("+" + paramString);
    this.b.a("reg_viber_phone_num_canonized", paramString);
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    this.c = paramString1;
    this.e = paramString2;
    this.f = paramString3;
    this.b.a("reg_viber_country_code", paramString1);
    this.b.a("reg_viber_country_code_string", paramString2);
    this.b.a("reg_viber_country_code_string_version", 1);
    this.b.a("reg_viber_phone_num", paramString3);
  }
  
  public int b()
  {
    if (this.d == -1) {
      this.d = Integer.parseInt(a());
    }
    return this.d;
  }
  
  public String c()
  {
    if (this.e == null)
    {
      String str = new String("");
      this.e = this.b.b("reg_viber_country_code_string", str);
      int i = this.b.b("reg_viber_country_code_string_version", 0);
      c("getRegAlphaCountryCode() mRegAlphaCountryCode: " + this.e + ", alphaCountryCodeVersion: " + i);
      if ((this.e == str) || (i != 1))
      {
        this.e = a(e(), a());
        this.b.a("reg_viber_country_code_string", this.e);
        this.b.a("reg_viber_country_code_string_version", 1);
      }
    }
    return this.e;
  }
  
  public String d()
  {
    if (this.f == null) {
      this.f = this.b.b("reg_viber_phone_num", "0");
    }
    return this.f;
  }
  
  public String e()
  {
    if (this.g == null) {
      this.g = this.b.b("reg_viber_phone_num_canonized", null);
    }
    return this.g;
  }
  
  public String f()
  {
    String str1;
    if (this.h == null)
    {
      str1 = e();
      if (str1 == null) {
        break label46;
      }
    }
    label46:
    for (String str2 = "+" + str1;; str2 = null)
    {
      this.h = str2;
      return this.h;
    }
  }
  
  public String g()
  {
    String str = e();
    if ((str != null) && (str.length() > 6)) {
      return str.substring(0, 6);
    }
    return "";
  }
  
  public void h()
  {
    this.c = null;
    this.e = null;
    this.f = null;
    this.g = null;
    this.b.a("reg_viber_country_code").a("reg_viber_phone_num").a("reg_viber_phone_num_canonized");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.cp
 * JD-Core Version:    0.7.0.1
 */