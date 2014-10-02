package com.actionbarsherlock.widget;

import android.content.ComponentName;
import android.content.Context;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlSerializer;

final class ActivityChooserModel$HistoryPersister
  implements Runnable
{
  private ActivityChooserModel$HistoryPersister(ActivityChooserModel paramActivityChooserModel) {}
  
  public void run()
  {
    ArrayList localArrayList;
    synchronized (ActivityChooserModel.access$500(this.this$0))
    {
      localArrayList = new ArrayList(ActivityChooserModel.access$600(this.this$0));
    }
    FileOutputStream localFileOutputStream;
    for (;;)
    {
      try
      {
        localFileOutputStream = ActivityChooserModel.access$400(this.this$0).openFileOutput(ActivityChooserModel.access$300(this.this$0), 0);
        localXmlSerializer = Xml.newSerializer();
        int i;
        int j;
        ActivityChooserModel.HistoricalRecord localHistoricalRecord;
        localXmlSerializer.endTag(null, "historical-records");
      }
      catch (FileNotFoundException localObject2)
      {
        try
        {
          localXmlSerializer.setOutput(localFileOutputStream, null);
          localXmlSerializer.startDocument("UTF-8", Boolean.valueOf(true));
          localXmlSerializer.startTag(null, "historical-records");
          i = localArrayList.size();
          j = 0;
          if (j >= i) {
            break label243;
          }
          localHistoricalRecord = (ActivityChooserModel.HistoricalRecord)localArrayList.remove(0);
          localXmlSerializer.startTag(null, "historical-record");
          localXmlSerializer.attribute(null, "activity", localHistoricalRecord.activity.flattenToString());
          localXmlSerializer.attribute(null, "time", String.valueOf(localHistoricalRecord.time));
          localXmlSerializer.attribute(null, "weight", String.valueOf(localHistoricalRecord.weight));
          localXmlSerializer.endTag(null, "historical-record");
          j++;
          continue;
          localObject2 = finally;
          throw localObject2;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          XmlSerializer localXmlSerializer;
          Log.e(ActivityChooserModel.access$1100(), "Error writing historical recrod file: " + ActivityChooserModel.access$300(this.this$0), localIllegalArgumentException);
          if (localFileOutputStream == null) {
            continue;
          }
          try
          {
            localFileOutputStream.close();
            return;
          }
          catch (IOException localIOException5)
          {
            return;
          }
        }
        catch (IllegalStateException localIllegalStateException)
        {
          Log.e(ActivityChooserModel.access$1100(), "Error writing historical recrod file: " + ActivityChooserModel.access$300(this.this$0), localIllegalStateException);
          if (localFileOutputStream == null) {
            continue;
          }
          try
          {
            localFileOutputStream.close();
            return;
          }
          catch (IOException localIOException4)
          {
            return;
          }
        }
        catch (IOException localIOException2)
        {
          Log.e(ActivityChooserModel.access$1100(), "Error writing historical recrod file: " + ActivityChooserModel.access$300(this.this$0), localIOException2);
          if (localFileOutputStream == null) {
            continue;
          }
          try
          {
            localFileOutputStream.close();
            return;
          }
          catch (IOException localIOException3)
          {
            return;
          }
        }
        finally
        {
          if (localFileOutputStream == null) {
            break label437;
          }
        }
        localFileNotFoundException = localFileNotFoundException;
        Log.e(ActivityChooserModel.access$1100(), "Error writing historical recrod file: " + ActivityChooserModel.access$300(this.this$0), localFileNotFoundException);
        return;
      }
      label243:
      localXmlSerializer.endDocument();
      if (localFileOutputStream != null) {
        try
        {
          localFileOutputStream.close();
          return;
        }
        catch (IOException localIOException6)
        {
          return;
        }
      }
    }
    try
    {
      localFileOutputStream.close();
      label437:
      throw localObject3;
    }
    catch (IOException localIOException1)
    {
      break label437;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserModel.HistoryPersister
 * JD-Core Version:    0.7.0.1
 */