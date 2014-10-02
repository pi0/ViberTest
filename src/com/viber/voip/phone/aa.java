package com.viber.voip.phone;

import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneNumberUtils;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import java.util.Locale;

public final class aa
{
  public static final String a;
  private static final SpannableStringBuilder c;
  private static int d;
  
  static
  {
    if (!aa.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a = aa.class.getSimpleName();
      c = new SpannableStringBuilder();
      d = -1;
      return;
    }
  }
  
  private aa()
  {
    if (!b) {
      throw new AssertionError();
    }
  }
  
  public static String a(Intent paramIntent, Context paramContext)
  {
    if ((paramIntent.getAction().equals("com.viber.voip.action.CALL_INCOMING")) && (paramIntent.hasExtra("android.intent.extra.PHONE_NUMBER"))) {
      return paramIntent.getStringExtra("android.intent.extra.PHONE_NUMBER");
    }
    try
    {
      String str = PhoneNumberUtils.getNumberFromIntent(paramIntent, paramContext);
      return str;
    }
    catch (NullPointerException localNullPointerException) {}
    return null;
  }
  
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    if (d == -1) {
      d = PhoneNumberUtils.getFormatTypeForLocale(Locale.getDefault());
    }
    c.clear();
    c.append(paramString);
    PhoneNumberUtils.formatNumber(c, d);
    return c.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.aa
 * JD-Core Version:    0.7.0.1
 */