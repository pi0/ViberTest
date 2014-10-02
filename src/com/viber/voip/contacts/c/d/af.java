package com.viber.voip.contacts.c.d;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.viber.provider.contacts.d;
import com.viber.voip.contacts.c.e.b;
import com.viber.voip.util.al;
import com.viber.voip.util.bk;
import com.viber.voip.util.fl;

class af
  implements fl
{
  af(aa paramaa, int paramInt, long paramLong, ap paramap) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      int i = bk.a(paramCursor.getInt(paramCursor.getColumnIndex("flags")), this.a);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("flags", Integer.valueOf(i));
      b localb = aa.a(this.d);
      Uri localUri = d.a;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(this.b);
      localb.a(1584, null, localUri, localContentValues, "_id=?", arrayOfString, new ag(this), false, false);
    }
    for (;;)
    {
      al.a(paramCursor);
      return;
      if (this.c != null) {
        this.c.a();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.af
 * JD-Core Version:    0.7.0.1
 */