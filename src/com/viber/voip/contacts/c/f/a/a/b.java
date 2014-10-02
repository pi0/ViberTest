package com.viber.voip.contacts.c.f.a.a;

import android.database.Cursor;
import com.viber.voip.util.al;
import com.viber.voip.util.fl;
import java.util.HashSet;
import java.util.Set;

class b
  implements fl
{
  b(a parama, String paramString, h paramh) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    HashSet localHashSet = new HashSet();
    if ((paramCursor != null) && (paramCursor.moveToFirst())) {
      do
      {
        localHashSet.add(Long.valueOf(paramCursor.getLong(0)));
      } while (paramCursor.moveToNext());
    }
    al.a(paramCursor);
    if (localHashSet.size() > 0) {
      a.a(this.c, this.a, localHashSet, this.b);
    }
    while (this.b == null) {
      return;
    }
    a.a(this.c, true, this.b, 0);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.b
 * JD-Core Version:    0.7.0.1
 */