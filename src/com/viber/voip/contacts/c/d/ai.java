package com.viber.voip.contacts.c.d;

import android.database.CharArrayBuffer;
import android.database.Cursor;
import com.viber.voip.contacts.a.c;
import com.viber.voip.util.al;
import com.viber.voip.util.fl;
import java.util.HashSet;
import java.util.Set;

class ai
  implements fl
{
  ai(aa paramaa, ar paramar) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    HashSet localHashSet = new HashSet();
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(100);
      do
      {
        paramCursor.copyStringToBuffer(0, localCharArrayBuffer);
        localHashSet.add(c.a(localCharArrayBuffer.data[0]));
      } while (paramCursor.moveToNext());
    }
    al.a(paramCursor);
    if (this.a != null) {
      this.a.a(localHashSet);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.ai
 * JD-Core Version:    0.7.0.1
 */