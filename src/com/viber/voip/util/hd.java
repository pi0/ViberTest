package com.viber.voip.util;

import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.contacts.c.d.l;
import com.viber.voip.registration.ActivationController;
import com.viber.voip.registration.cp;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class hd
{
  public static final String a = hd.class.getSimpleName();
  
  public static String a(ViberApplication paramViberApplication, CharSequence paramCharSequence, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    boolean bool = a(paramViberApplication, paramCharSequence, localStringBuilder);
    c("ViberCallChecker.check: canonizedNumber = " + localStringBuilder + ", defaultNumber = " + paramString);
    if (bool) {
      return localStringBuilder.toString();
    }
    c("ViberCallChecker.check: failed to canonize number, using default " + paramString);
    return paramString;
  }
  
  public static String a(ViberApplication paramViberApplication, String paramString)
  {
    return a(paramViberApplication, paramString, paramString);
  }
  
  public static String a(String paramString)
  {
    if (paramString != null)
    {
      String str = paramString.replaceFirst("[-.]*", "");
      if (PhoneNumberUtils.isGlobalPhoneNumber(str)) {
        return a(ViberApplication.getInstance(), str, str);
      }
    }
    return null;
  }
  
  public static void a(ViberApplication paramViberApplication, CharSequence paramCharSequence, hj paramhj)
  {
    PhoneControllerWrapper localPhoneControllerWrapper = paramViberApplication.getPhoneController(true);
    if (paramCharSequence != null) {}
    for (String str = a(paramViberApplication, paramCharSequence.toString(), paramCharSequence.toString());; str = null)
    {
      c("checking number : " + str);
      PhoneControllerDelegate.ViberConnectionState localViberConnectionState = localPhoneControllerWrapper.getServiceState();
      switch (hi.a[localViberConnectionState.ordinal()])
      {
      default: 
        if (!ft.b(paramViberApplication)) {
          break label149;
        }
        paramhj.a(false, 2, str);
        return;
      }
    }
    paramhj.a(false, 4, str);
    return;
    if (localPhoneControllerWrapper.isFastNetwork())
    {
      a(paramViberApplication.getContactManager(), localPhoneControllerWrapper, str, paramhj);
      return;
    }
    paramhj.a(false, 3, str);
    return;
    label149:
    paramhj.a(false, 4, str);
  }
  
  public static void a(b paramb, PhoneControllerWrapper paramPhoneControllerWrapper, String paramString, hj paramhj)
  {
    if (paramString == null)
    {
      paramhj.a(false, -1, paramString);
      return;
    }
    if (fq.i.matcher(paramString).matches())
    {
      paramhj.a(false, 5, paramString);
      return;
    }
    if (fq.j.matcher(paramString).matches())
    {
      paramhj.a(false, 6, paramString);
      return;
    }
    if (fq.g.matcher(paramString).matches())
    {
      l locall1 = paramb.c(paramString);
      if (locall1 != l.c)
      {
        c("getLocalNumberStatus state=" + locall1);
        l locall2 = l.a;
        int i = 0;
        if (locall2 == locall1) {}
        for (;;)
        {
          paramhj.a(true, i, paramString);
          return;
          i = 1;
        }
      }
      paramPhoneControllerWrapper.registerDelegate(new he(paramString, paramhj, paramPhoneControllerWrapper));
      paramPhoneControllerWrapper.addInitializedListener(new hf(paramString));
      return;
    }
    paramhj.a(false, -1, paramString);
  }
  
  public static boolean a(ViberApplication paramViberApplication, int paramInt)
  {
    return paramInt == paramViberApplication.getActivationController().getCountryCodeInt();
  }
  
  public static boolean a(ViberApplication paramViberApplication, CharSequence paramCharSequence, StringBuilder paramStringBuilder)
  {
    String str1 = null;
    if (paramCharSequence != null)
    {
      int i = paramCharSequence.length();
      str1 = null;
      if (i >= 7) {
        str1 = paramViberApplication.getPhoneController(true).canonizePhoneNumber(PhoneNumberUtils.stripSeparators(paramCharSequence.toString()));
      }
    }
    if (str1 != null)
    {
      String str2 = PhoneNumberUtils.stringFromStringAndTOA(str1, 145);
      paramStringBuilder.setLength(0);
      paramStringBuilder.append(str2);
      return true;
    }
    return false;
  }
  
  public static int b(ViberApplication paramViberApplication, String paramString)
  {
    if ((paramString != null) && (paramString.length() >= 7))
    {
      if (paramString.startsWith("+")) {
        paramString = paramString.substring(1, paramString.length());
      }
      return paramViberApplication.getPhoneController(true).getCountryCode(paramString);
    }
    return -1;
  }
  
  public static void b(ViberApplication paramViberApplication, CharSequence paramCharSequence, hj paramhj)
  {
    if (paramCharSequence != null)
    {
      String str1 = a(paramViberApplication, paramCharSequence, paramCharSequence.toString());
      String str2 = paramViberApplication.getRegistrationValues().f();
      c("checkIsOnline checking number : " + str1);
      if (TextUtils.equals(str2, str1))
      {
        c("checkIsOnline the same as registration number : " + str2);
        paramhj.a(false, 7, str1);
        return;
      }
      paramViberApplication.getPhoneController(false).addInitializedListener(new hg(paramViberApplication, str1, paramhj));
      return;
    }
    paramhj.a(false, -1, null);
  }
  
  private static void c(String paramString) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.hd
 * JD-Core Version:    0.7.0.1
 */