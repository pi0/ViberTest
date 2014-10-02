package org.acra;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class DeviceFeaturesCollector
{
  public static String getFeatures(Context paramContext)
  {
    StringBuffer localStringBuffer;
    if (Compatibility.getAPILevel() >= 5)
    {
      localStringBuffer = new StringBuffer();
      PackageManager localPackageManager = paramContext.getPackageManager();
      try
      {
        Object[] arrayOfObject = (Object[])PackageManager.class.getMethod("getSystemAvailableFeatures", (Class[])null).invoke(localPackageManager, new Object[0]);
        int i = arrayOfObject.length;
        int j = 0;
        if (j < i)
        {
          Object localObject = arrayOfObject[j];
          String str1 = (String)localObject.getClass().getField("name").get(localObject);
          if (str1 != null) {
            localStringBuffer.append(str1);
          }
          for (;;)
          {
            localStringBuffer.append("\n");
            j++;
            break;
            String str2 = (String)localObject.getClass().getMethod("getGlEsVersion", (Class[])null).invoke(localObject, new Object[0]);
            localStringBuffer.append("glEsVersion = ");
            localStringBuffer.append(str2);
          }
        }
        return localStringBuffer.toString();
      }
      catch (Throwable localThrowable)
      {
        Log.w(ACRA.LOG_TAG, "Error : ", localThrowable);
        localStringBuffer.append("Could not retrieve data: ");
        localStringBuffer.append(localThrowable.getMessage());
      }
    }
    return "Data available only with API Level > 5";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.DeviceFeaturesCollector
 * JD-Core Version:    0.7.0.1
 */