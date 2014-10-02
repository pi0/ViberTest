package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public class LocalBroadcastManager
{
  private static final boolean DEBUG = false;
  static final int MSG_EXEC_PENDING_BROADCASTS = 1;
  private static final String TAG = "LocalBroadcastManager";
  private static LocalBroadcastManager mInstance;
  private static final Object mLock = new Object();
  private final HashMap<String, ArrayList<LocalBroadcastManager.ReceiverRecord>> mActions = new HashMap();
  private final Context mAppContext;
  private final Handler mHandler;
  private final ArrayList<LocalBroadcastManager.BroadcastRecord> mPendingBroadcasts = new ArrayList();
  private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> mReceivers = new HashMap();
  
  private LocalBroadcastManager(Context paramContext)
  {
    this.mAppContext = paramContext;
    this.mHandler = new LocalBroadcastManager.1(this, paramContext.getMainLooper());
  }
  
  private void executePendingBroadcasts()
  {
    for (;;)
    {
      int j;
      synchronized (this.mReceivers)
      {
        int i = this.mPendingBroadcasts.size();
        if (i <= 0) {
          return;
        }
        LocalBroadcastManager.BroadcastRecord[] arrayOfBroadcastRecord = new LocalBroadcastManager.BroadcastRecord[i];
        this.mPendingBroadcasts.toArray(arrayOfBroadcastRecord);
        this.mPendingBroadcasts.clear();
        j = 0;
        if (j >= arrayOfBroadcastRecord.length) {
          continue;
        }
        LocalBroadcastManager.BroadcastRecord localBroadcastRecord = arrayOfBroadcastRecord[j];
        int k = 0;
        if (k < localBroadcastRecord.receivers.size())
        {
          ((LocalBroadcastManager.ReceiverRecord)localBroadcastRecord.receivers.get(k)).receiver.onReceive(this.mAppContext, localBroadcastRecord.intent);
          k++;
        }
      }
      j++;
    }
  }
  
  public static LocalBroadcastManager getInstance(Context paramContext)
  {
    synchronized (mLock)
    {
      if (mInstance == null) {
        mInstance = new LocalBroadcastManager(paramContext.getApplicationContext());
      }
      LocalBroadcastManager localLocalBroadcastManager = mInstance;
      return localLocalBroadcastManager;
    }
  }
  
  public void registerReceiver(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    synchronized (this.mReceivers)
    {
      LocalBroadcastManager.ReceiverRecord localReceiverRecord = new LocalBroadcastManager.ReceiverRecord(paramIntentFilter, paramBroadcastReceiver);
      ArrayList localArrayList1 = (ArrayList)this.mReceivers.get(paramBroadcastReceiver);
      if (localArrayList1 == null)
      {
        localArrayList1 = new ArrayList(1);
        this.mReceivers.put(paramBroadcastReceiver, localArrayList1);
      }
      localArrayList1.add(paramIntentFilter);
      for (int i = 0; i < paramIntentFilter.countActions(); i++)
      {
        String str = paramIntentFilter.getAction(i);
        ArrayList localArrayList2 = (ArrayList)this.mActions.get(str);
        if (localArrayList2 == null)
        {
          localArrayList2 = new ArrayList(1);
          this.mActions.put(str, localArrayList2);
        }
        localArrayList2.add(localReceiverRecord);
      }
      return;
    }
  }
  
  public boolean sendBroadcast(Intent paramIntent)
  {
    int i;
    label162:
    int j;
    Object localObject2;
    Object localObject3;
    int m;
    synchronized (this.mReceivers)
    {
      String str1 = paramIntent.getAction();
      String str2 = paramIntent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
      Uri localUri = paramIntent.getData();
      String str3 = paramIntent.getScheme();
      Set localSet = paramIntent.getCategories();
      if ((0x8 & paramIntent.getFlags()) == 0) {
        break label515;
      }
      i = 1;
      if (i != 0) {
        Log.v("LocalBroadcastManager", "Resolving type " + str2 + " scheme " + str3 + " of intent " + paramIntent);
      }
      ArrayList localArrayList = (ArrayList)this.mActions.get(paramIntent.getAction());
      if (localArrayList == null) {
        break label485;
      }
      if (i == 0) {
        break label496;
      }
      Log.v("LocalBroadcastManager", "Action list: " + localArrayList);
      break label496;
      if (j >= localArrayList.size()) {
        break label556;
      }
      LocalBroadcastManager.ReceiverRecord localReceiverRecord = (LocalBroadcastManager.ReceiverRecord)localArrayList.get(j);
      if (i != 0) {
        Log.v("LocalBroadcastManager", "Matching against filter " + localReceiverRecord.filter);
      }
      if (localReceiverRecord.broadcasting)
      {
        if (i == 0) {
          break label521;
        }
        Log.v("LocalBroadcastManager", "  Filter's target already added");
        localObject3 = localObject2;
      }
      else
      {
        m = localReceiverRecord.filter.match(str1, str2, str3, localUri, localSet, "LocalBroadcastManager");
        if (m >= 0)
        {
          if (i != 0) {
            Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(m));
          }
          if (localObject2 != null) {
            break label489;
          }
          localObject3 = new ArrayList();
          label321:
          ((ArrayList)localObject3).add(localReceiverRecord);
          localReceiverRecord.broadcasting = true;
        }
      }
    }
    String str4;
    if (i != 0) {
      switch (m)
      {
      default: 
        str4 = "unknown reason";
        label384:
        Log.v("LocalBroadcastManager", "  Filter did not match: " + str4);
        break;
      }
    }
    for (;;)
    {
      int k;
      if (k < ((ArrayList)localObject2).size())
      {
        ((LocalBroadcastManager.ReceiverRecord)((ArrayList)localObject2).get(k)).broadcasting = false;
        k++;
      }
      else
      {
        this.mPendingBroadcasts.add(new LocalBroadcastManager.BroadcastRecord(paramIntent, (ArrayList)localObject2));
        if (!this.mHandler.hasMessages(1)) {
          this.mHandler.sendEmptyMessage(1);
        }
        return true;
        label485:
        label489:
        label496:
        do
        {
          return false;
          localObject3 = localObject2;
          break label321;
          localObject2 = null;
          j = 0;
          break label162;
          for (;;)
          {
            j++;
            localObject2 = localObject3;
            break label162;
            i = 0;
            break;
            localObject3 = localObject2;
          }
          str4 = "action";
          break label384;
          str4 = "category";
          break label384;
          str4 = "data";
          break label384;
          str4 = "type";
          break label384;
        } while (localObject2 == null);
        label515:
        label521:
        label556:
        k = 0;
      }
    }
  }
  
  public void sendBroadcastSync(Intent paramIntent)
  {
    if (sendBroadcast(paramIntent)) {
      executePendingBroadcasts();
    }
  }
  
  public void unregisterReceiver(BroadcastReceiver paramBroadcastReceiver)
  {
    for (;;)
    {
      int j;
      synchronized (this.mReceivers)
      {
        ArrayList localArrayList1 = (ArrayList)this.mReceivers.remove(paramBroadcastReceiver);
        if (localArrayList1 != null) {
          break label174;
        }
        return;
        if (i < localArrayList1.size())
        {
          IntentFilter localIntentFilter = (IntentFilter)localArrayList1.get(i);
          j = 0;
          if (j >= localIntentFilter.countActions()) {
            break label195;
          }
          String str = localIntentFilter.getAction(j);
          ArrayList localArrayList2 = (ArrayList)this.mActions.get(str);
          if (localArrayList2 == null) {
            break label189;
          }
          k = 0;
          if (k < localArrayList2.size())
          {
            if (((LocalBroadcastManager.ReceiverRecord)localArrayList2.get(k)).receiver == paramBroadcastReceiver)
            {
              localArrayList2.remove(k);
              m = k - 1;
              break label180;
            }
          }
          else
          {
            if (localArrayList2.size() > 0) {
              break label189;
            }
            this.mActions.remove(str);
            break label189;
          }
        }
        else
        {
          return;
        }
      }
      int m = k;
      break label180;
      label174:
      int i = 0;
      continue;
      label180:
      int k = m + 1;
      continue;
      label189:
      j++;
      continue;
      label195:
      i++;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     android.support.v4.content.LocalBroadcastManager
 * JD-Core Version:    0.7.0.1
 */