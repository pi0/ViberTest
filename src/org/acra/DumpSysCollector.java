package org.acra;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

class DumpSysCollector
{
  protected static String collectMemInfo()
  {
    localStringBuilder = new StringBuilder();
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("dumpsys");
      localArrayList.add("meminfo");
      localArrayList.add(Integer.toString(android.os.Process.myPid()));
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec((String[])localArrayList.toArray(new String[localArrayList.size()])).getInputStream()));
      for (;;)
      {
        String str = localBufferedReader.readLine();
        if (str == null) {
          break;
        }
        localStringBuilder.append(str);
        localStringBuilder.append("\n");
      }
      return localStringBuilder.toString();
    }
    catch (IOException localIOException)
    {
      Log.e(ACRA.LOG_TAG, "DumpSysCollector.meminfo could not retrieve data", localIOException);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.DumpSysCollector
 * JD-Core Version:    0.7.0.1
 */