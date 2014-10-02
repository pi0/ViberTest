package org.acra;

import android.content.Context;
import android.text.format.Time;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.acra.annotation.ReportsCrashes;

class DropBoxCollector
{
  private static final String[] SYSTEM_TAGS = { "system_app_anr", "system_app_wtf", "system_app_crash", "system_server_anr", "system_server_wtf", "system_server_crash", "BATTERY_DISCHARGE_INFO", "SYSTEM_RECOVERY_LOG", "SYSTEM_BOOT", "SYSTEM_LAST_KMSG", "APANIC_CONSOLE", "APANIC_THREADS", "SYSTEM_RESTART", "SYSTEM_TOMBSTONE", "data_app_strictmode" };
  
  public static String read(Context paramContext, String[] paramArrayOfString)
  {
    for (;;)
    {
      try
      {
        String str1 = Compatibility.getDropBoxServiceName();
        if (str1 == null) {
          continue;
        }
        localStringBuilder = new StringBuilder();
        localObject1 = paramContext.getSystemService(str1);
        Class localClass1 = localObject1.getClass();
        Class[] arrayOfClass1 = new Class[2];
        arrayOfClass1[0] = String.class;
        arrayOfClass1[1] = Long.TYPE;
        localMethod1 = localClass1.getMethod("getNextEntry", arrayOfClass1);
        if (localMethod1 == null) {
          continue;
        }
        localTime = new Time();
        localTime.setToNow();
        localTime.minute -= ACRA.getConfig().dropboxCollectionMinutes();
        localTime.normalize(false);
        l1 = localTime.toMillis(false);
        if (!ACRA.getConfig().includeDropBoxSystemTags()) {
          continue;
        }
        localArrayList = new ArrayList(Arrays.asList(SYSTEM_TAGS));
        if ((paramArrayOfString != null) && (paramArrayOfString.length > 0)) {
          localArrayList.addAll(Arrays.asList(paramArrayOfString));
        }
        if (localArrayList.size() <= 0) {
          continue;
        }
        localIterator = localArrayList.iterator();
      }
      catch (SecurityException localSecurityException)
      {
        Object localObject1;
        Method localMethod1;
        Time localTime;
        long l1;
        ArrayList localArrayList;
        Iterator localIterator;
        String str3;
        Object[] arrayOfObject1;
        Object localObject2;
        Class localClass2;
        Class[] arrayOfClass2;
        Method localMethod2;
        Method localMethod3;
        Method localMethod4;
        long l2;
        Object[] arrayOfObject2;
        String str4;
        Object[] arrayOfObject3;
        Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
        return "N/A";
        localStringBuilder.append("Not Text!").append('\n');
        continue;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
        continue;
        localStringBuilder.append("Nothing.").append('\n');
        continue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        StringBuilder localStringBuilder;
        Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
        continue;
        localStringBuilder.append("No tag configured for collection.");
        String str2 = localStringBuilder.toString();
        return str2;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
        continue;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
        continue;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        Log.i(ACRA.LOG_TAG, "DropBoxManager not available.");
        continue;
      }
      if (!localIterator.hasNext()) {
        continue;
      }
      str3 = (String)localIterator.next();
      localStringBuilder.append("Tag: ").append(str3).append('\n');
      arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = str3;
      arrayOfObject1[1] = Long.valueOf(l1);
      localObject2 = localMethod1.invoke(localObject1, arrayOfObject1);
      if (localObject2 == null) {
        continue;
      }
      localClass2 = localObject2.getClass();
      arrayOfClass2 = new Class[1];
      arrayOfClass2[0] = Integer.TYPE;
      localMethod2 = localClass2.getMethod("getText", arrayOfClass2);
      localMethod3 = localObject2.getClass().getMethod("getTimeMillis", (Class[])null);
      localMethod4 = localObject2.getClass().getMethod("close", (Class[])null);
      if (localObject2 != null)
      {
        l2 = ((Long)localMethod3.invoke(localObject2, (Object[])null)).longValue();
        localTime.set(l2);
        localStringBuilder.append("@").append(localTime.format2445()).append('\n');
        arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(500);
        str4 = (String)localMethod2.invoke(localObject2, arrayOfObject2);
        if (str4 == null) {
          continue;
        }
        localStringBuilder.append("Text: ").append(str4).append('\n');
        localMethod4.invoke(localObject2, (Object[])null);
        arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = str3;
        arrayOfObject3[1] = Long.valueOf(l2);
        localObject2 = localMethod1.invoke(localObject1, arrayOfObject3);
        continue;
        localArrayList = new ArrayList();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.DropBoxCollector
 * JD-Core Version:    0.7.0.1
 */