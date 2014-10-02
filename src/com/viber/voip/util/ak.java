package com.viber.voip.util;

import android.content.Context;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.text.format.DateUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class ak
  extends DateUtils
{
  private static final SimpleDateFormat a = new SimpleDateFormat("H:mm", Locale.US);
  private static final SimpleDateFormat b = new SimpleDateFormat("h:mm a", Locale.US);
  private static Date c = new Date();
  private static StringBuilder d = new StringBuilder();
  
  public static String a(long paramLong)
  {
    long l2;
    long l1;
    if (paramLong >= 3600L)
    {
      long l4 = paramLong / 3600L;
      l2 = paramLong - 3600L * l4;
      l1 = l4;
    }
    for (;;)
    {
      long l3;
      if (l2 >= 60L)
      {
        l3 = l2 / 60L;
        l2 -= 60L * l3;
      }
      for (;;)
      {
        if (l1 > 0L)
        {
          Locale localLocale2 = Locale.US;
          Object[] arrayOfObject2 = new Object[3];
          arrayOfObject2[0] = Long.valueOf(l1);
          arrayOfObject2[1] = Long.valueOf(l3);
          arrayOfObject2[2] = Long.valueOf(l2);
          return String.format(localLocale2, "%d:%02d:%02d", arrayOfObject2);
        }
        Locale localLocale1 = Locale.US;
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Long.valueOf(l3);
        arrayOfObject1[1] = Long.valueOf(l2);
        return String.format(localLocale1, "%02d:%02d", arrayOfObject1);
        l3 = 0L;
      }
      l1 = 0L;
      l2 = paramLong;
    }
  }
  
  public static String a(Context paramContext, long paramLong)
  {
    Date localDate = new Date(paramLong);
    if (android.text.format.DateFormat.is24HourFormat(paramContext)) {
      return a.format(localDate);
    }
    return b.format(localDate);
  }
  
  public static String a(Context paramContext, long paramLong, boolean paramBoolean)
  {
    return a(paramContext, paramLong, paramBoolean, null);
  }
  
  public static String a(Context paramContext, long paramLong, boolean paramBoolean, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = Settings.System.getString(paramContext.getContentResolver(), "date_format");
    }
    c.setTime(paramLong);
    d.setLength(0);
    if (isToday(paramLong)) {
      d.append(android.text.format.DateFormat.getTimeFormat(paramContext).format(c));
    }
    label150:
    for (;;)
    {
      return d.toString();
      if ((paramString != null) && (!TextUtils.isEmpty(paramString))) {
        d.append(android.text.format.DateFormat.format(paramString, paramLong));
      }
      for (;;)
      {
        if (!paramBoolean) {
          break label150;
        }
        d.append(" " + android.text.format.DateFormat.getTimeFormat(paramContext).format(c));
        break;
        d.append(android.text.format.DateFormat.getDateFormat(paramContext).format(c));
      }
    }
  }
  
  public static boolean a(long paramLong1, long paramLong2)
  {
    return paramLong1 < System.currentTimeMillis() - paramLong2;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.ak
 * JD-Core Version:    0.7.0.1
 */