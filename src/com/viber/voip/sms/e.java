package com.viber.voip.sms;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;

class e
  implements Runnable
{
  e(a parama, String paramString1, String paramString2) {}
  
  public void run()
  {
    ContentValues localContentValues = new ContentValues();
    int i = this.c.a(this.a);
    a.a(this.c, "insertSilentSms threadId:" + i);
    if (i == -1) {
      return;
    }
    localContentValues.put("address", this.a);
    localContentValues.put("body", this.b);
    localContentValues.put("date", Long.valueOf(System.currentTimeMillis()));
    localContentValues.put("read", Integer.valueOf(1));
    localContentValues.put("thread_id", Integer.valueOf(i));
    Uri localUri = a.a(this.c).insert(Uri.parse("content://sms/inbox"), localContentValues);
    a.a(this.c, "insertSilentSms threadId:" + i + " insertedUri:" + localUri);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sms.e
 * JD-Core Version:    0.7.0.1
 */