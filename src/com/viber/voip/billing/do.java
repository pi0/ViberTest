package com.viber.voip.billing;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;

public class do
{
  private static final String a = do.class.getSimpleName();
  
  public static String a(String paramString1, String paramString2)
  {
    String str = ViberApplication.getInstance().getPhoneController(true).encodeCurrency(paramString2, new String(paramString1));
    a("calculate receipt:" + paramString1);
    a("calculate priceString:" + paramString2);
    a("calculate result:" + str);
    return str;
  }
  
  private static void a(String paramString) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.do
 * JD-Core Version:    0.7.0.1
 */