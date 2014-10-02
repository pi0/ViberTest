package com.viber.voip.sms;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.util.SparseBooleanArray;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.al;

class c
  extends ContentObserver
{
  c(a parama, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  public boolean deliverSelfNotifications()
  {
    return false;
  }
  
  public void onChange(boolean paramBoolean)
  {
    a.a(this.a, "On Sms db changed");
    Cursor localCursor = a.a(this.a).query(Uri.parse("content://sms"), null, "_id=(select max(_id) from sms) and read=0", null, null);
    String str1;
    String str2;
    int i;
    if ((!al.b(localCursor)) && (localCursor.getCount() > 0) && (localCursor.moveToFirst()))
    {
      a.a(this.a, "OnChange new sms count: " + localCursor.getCount());
      str1 = localCursor.getString(localCursor.getColumnIndex("address"));
      str2 = localCursor.getString(localCursor.getColumnIndex("body"));
      i = localCursor.getInt(localCursor.getColumnIndex("_id"));
      if ((!s.c()) && (ViberApplication.isActivated()))
      {
        if (a.b(this.a).indexOfKey(i) >= 0) {
          break label223;
        }
        a.b(this.a).append(i, Boolean.TRUE.booleanValue());
        if (!s.a()) {
          break label216;
        }
        s.b(a.c(this.a), str1, str2, i);
      }
    }
    for (;;)
    {
      a.a(this.a, i, str1, str2);
      al.a(localCursor);
      return;
      label216:
      s.a(str1);
      continue;
      label223:
      a.a(this.a, "OnChange already processed SMS #" + i);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sms.c
 * JD-Core Version:    0.7.0.1
 */