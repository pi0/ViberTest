package com.viber.voip.contacts.c.d;

import android.database.Cursor;
import com.viber.voip.util.al;
import com.viber.voip.util.fl;
import java.util.HashMap;
import java.util.Map;

class ae
  implements fl
{
  ae(aa paramaa, aq paramaq) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    HashMap localHashMap = new HashMap();
    if ((paramCursor != null) && (paramCursor.moveToFirst())) {
      do
      {
        localHashMap.put(paramCursor.getString(paramCursor.getColumnIndex("canonized_number")), paramCursor.getString(paramCursor.getColumnIndex("photo")));
      } while (paramCursor.moveToNext());
    }
    al.a(paramCursor);
    if (this.a != null) {
      this.a.a(localHashMap);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.ae
 * JD-Core Version:    0.7.0.1
 */