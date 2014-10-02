package com.viber.voip.user;

import android.content.Context;
import android.net.TrafficStats;
import android.os.Process;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.k;
import com.viber.voip.settings.l;
import java.math.BigDecimal;

public class StatisticsUtil
{
  private static final int AMOUNT_NUMBERS = 2;
  private static final String LOG_TAG = StatisticsUtil.class.getName();
  private static final String MB_STRING = " MB";
  
  private static long getAll3GTraffic()
  {
    try
    {
      long l2 = TrafficStats.getMobileRxBytes();
      long l3 = TrafficStats.getMobileTxBytes();
      l1 = l2 + l3;
      NoClassDefFoundError localNoClassDefFoundError2;
      ViberApplication.log(6, LOG_TAG, localNoClassDefFoundError2.toString());
    }
    catch (NoClassDefFoundError localNoClassDefFoundError1)
    {
      try
      {
        ViberApplication.log(3, LOG_TAG, "getAll3GTraffic in: " + l2 + ", out: " + l3 + ", resByte: " + l1);
        return l1;
      }
      catch (NoClassDefFoundError localNoClassDefFoundError3)
      {
        long l1;
        break label71;
      }
      localNoClassDefFoundError1 = localNoClassDefFoundError1;
      l1 = -1L;
      localNoClassDefFoundError2 = localNoClassDefFoundError1;
    }
    label71:
    return l1;
  }
  
  private static double getMbFromBytes(double paramDouble, int paramInt)
  {
    return new BigDecimal((float)paramDouble / 1048576.0F).setScale(paramInt, 4).doubleValue();
  }
  
  public static int getRecMsgStatisticsCount(Context paramContext)
  {
    return ViberApplication.preferences().b("msg_received", 0);
  }
  
  public static int getSentMsgStatisticsCount(Context paramContext)
  {
    return ViberApplication.preferences().b("msg_sent", 0);
  }
  
  public static String getViber3GStatistic(Context paramContext)
  {
    try
    {
      long l1 = ViberApplication.preferences().b("3g_data", 0L);
      long l2 = getAll3GTraffic() - l1;
      String str = getMbFromBytes(l2, 2) + " MB";
      return str;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      ViberApplication.log(6, LOG_TAG, localNoClassDefFoundError.toString());
    }
    return null;
  }
  
  public static String getViberWifiStatistic(Context paramContext)
  {
    int i = Process.myUid();
    try
    {
      long l1 = TrafficStats.getUidRxBytes(i);
      long l2 = TrafficStats.getUidTxBytes(i);
      long l3 = ViberApplication.preferences().b("wifi_data", 0L);
      long l4 = l1 + l2 - l3;
      ViberApplication.log(3, LOG_TAG, "getWifiStatistic in: " + l1 + ", out: " + l2 + ", resetBytes: " + l3 + ", resByte: " + l4);
      String str = getMbFromBytes(l4, 2) + " MB";
      return str;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      ViberApplication.log(6, LOG_TAG, localNoClassDefFoundError.toString());
    }
    return null;
  }
  
  public static void incRecMsgStatisticsCount(Context paramContext)
  {
    int i = getRecMsgStatisticsCount(paramContext);
    ViberApplication.preferences().a("msg_received", i + 1);
  }
  
  public static void incSentMsgStatisticsCount(Context paramContext)
  {
    int i = getSentMsgStatisticsCount(paramContext);
    ViberApplication.preferences().a("msg_sent", i + 1);
  }
  
  public static void resetUsageStatistic(Context paramContext)
  {
    ViberApplication.preferences().a(k.b);
    try
    {
      int i = Process.myUid();
      long l1 = TrafficStats.getUidRxBytes(i) + TrafficStats.getUidTxBytes(i);
      long l2 = getAll3GTraffic();
      ViberApplication.preferences().a("wifi_data", l1);
      ViberApplication.preferences().a("3g_data", l2);
      return;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      ViberApplication.log(6, LOG_TAG, localNoClassDefFoundError.toString());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.StatisticsUtil
 * JD-Core Version:    0.7.0.1
 */