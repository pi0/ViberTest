package org.acra;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.acra.annotation.ReportsCrashes;
import org.acra.util.BoundedLinkedList;

class LogCatCollector
{
  private static final int DEFAULT_TAIL_COUNT = 100;
  
  protected static String collectLogCat(String paramString)
  {
    int i = -1;
    for (;;)
    {
      try
      {
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add("logcat");
        if (paramString != null)
        {
          localArrayList1.add("-b");
          localArrayList1.add(paramString);
        }
        ArrayList localArrayList2 = new ArrayList(Arrays.asList(ACRA.getConfig().logcatArguments()));
        int j = localArrayList2.indexOf("-t");
        if ((j > i) && (j < localArrayList2.size()))
        {
          i = Integer.parseInt((String)localArrayList2.get(j + 1));
          if (Compatibility.getAPILevel() < 8)
          {
            localArrayList2.remove(j + 1);
            localArrayList2.remove(j);
            localArrayList2.add("-d");
          }
        }
        if (i <= 0) {
          continue;
        }
        localBoundedLinkedList2 = new BoundedLinkedList(i);
        try
        {
          localArrayList1.addAll(localArrayList2);
          BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec((String[])localArrayList1.toArray(new String[localArrayList1.size()])).getInputStream()));
          Log.d(ACRA.LOG_TAG, "Retrieving logcat output...");
          String str = localBufferedReader.readLine();
          if (str == null) {
            continue;
          }
          localBoundedLinkedList2.add(str + "\n");
          continue;
          Log.e(ACRA.LOG_TAG, "LogCatCollector.collectLogcat could not retrieve data.", (Throwable)localObject);
        }
        catch (IOException localIOException2)
        {
          localBoundedLinkedList1 = localBoundedLinkedList2;
          localObject = localIOException2;
        }
      }
      catch (IOException localIOException1)
      {
        BoundedLinkedList localBoundedLinkedList2;
        Object localObject = localIOException1;
        BoundedLinkedList localBoundedLinkedList1 = null;
        continue;
      }
      return localBoundedLinkedList1.toString();
      i = 100;
      continue;
      localBoundedLinkedList1 = localBoundedLinkedList2;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.acra.LogCatCollector
 * JD-Core Version:    0.7.0.1
 */