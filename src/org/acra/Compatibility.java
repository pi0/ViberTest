package org.acra;

import android.content.Context;
import android.os.Build.VERSION;
import java.lang.reflect.Field;

public class Compatibility
{
  static int getAPILevel()
  {
    try
    {
      int i = Build.VERSION.class.getField("SDK_INT").getInt(null);
      return i;
    }
    catch (SecurityException localSecurityException)
    {
      return Integer.parseInt(Build.VERSION.SDK);
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      return Integer.parseInt(Build.VERSION.SDK);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return Integer.parseInt(Build.VERSION.SDK);
    }
    catch (IllegalAccessException localIllegalAccessException) {}
    return Integer.parseInt(Build.VERSION.SDK);
  }
  
  static String getDropBoxServiceName()
  {
    Field localField = Context.class.getField("DROPBOX_SERVICE");
    String str = null;
    if (localField != null) {
      str = (String)localField.get(null);
    }
    return str;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.Compatibility
 * JD-Core Version:    0.7.0.1
 */