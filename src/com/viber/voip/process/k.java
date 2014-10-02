package com.viber.voip.process;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Process;
import java.util.Iterator;
import java.util.List;

public enum k
{
  private static k g;
  
  static
  {
    k[] arrayOfk = new k[6];
    arrayOfk[0] = a;
    arrayOfk[1] = b;
    arrayOfk[2] = c;
    arrayOfk[3] = d;
    arrayOfk[4] = e;
    arrayOfk[5] = f;
    h = arrayOfk;
  }
  
  private k() {}
  
  public static k a()
  {
    return g;
  }
  
  public static k a(Context paramContext)
  {
    Object localObject1;
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
    if (g == null)
    {
      localObject1 = "";
      int i = Process.myPid();
      Iterator localIterator = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
      if (localIterator.hasNext())
      {
        localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if (localRunningAppProcessInfo.pid != i) {
          break label88;
        }
      }
    }
    label88:
    for (Object localObject2 = localRunningAppProcessInfo.processName;; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      g = a((String)localObject1, paramContext.getPackageName());
      return g;
    }
  }
  
  private static k a(String paramString1, String paramString2)
  {
    if (paramString1.startsWith(paramString2)) {
      paramString1 = paramString1.substring(paramString2.length());
    }
    if (paramString1.length() == 0) {
      return a;
    }
    if (":gallery".equals(paramString1)) {
      return b;
    }
    if (":browser".equals(paramString1)) {
      return c;
    }
    if (":zoobesdk".equals(paramString1)) {
      return d;
    }
    if (":remote".equals(paramString1)) {
      return e;
    }
    return f;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.process.k
 * JD-Core Version:    0.7.0.1
 */