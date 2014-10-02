package com.viber.voip.sms;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;

class d
  implements Runnable
{
  d(a parama, int paramInt) {}
  
  public void run()
  {
    a.a(this.b, "markSmsInNativeDatabase start");
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("read", Integer.valueOf(1));
    String[] arrayOfString = new String[2];
    arrayOfString[0] = ("" + this.a);
    arrayOfString[1] = "0";
    int i = a.a(this.b).update(Uri.parse("content://sms/inbox"), localContentValues, "_id=? and read=?", arrayOfString);
    a.a(this.b, "markSmsInNativeDatabase process " + i);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sms.d
 * JD-Core Version:    0.7.0.1
 */