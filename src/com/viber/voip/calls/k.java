package com.viber.voip.calls;

import android.database.Cursor;
import com.viber.voip.util.al;
import com.viber.voip.util.fl;
import java.util.HashSet;
import java.util.Set;

class k
  implements fl
{
  k(a parama, t paramt, o paramo) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    if ((paramCursor != null) && (paramCursor.getCount() != this.a.b)) {}
    for (int i = 1;; i = 0)
    {
      HashSet localHashSet = new HashSet();
      if ((i != 0) && (paramCursor != null) && (paramCursor.moveToFirst())) {
        do
        {
          localHashSet.add(Long.valueOf(paramCursor.getLong(0)));
        } while (paramCursor.moveToNext());
      }
      al.a(paramCursor);
      if (i == 0) {
        break;
      }
      a.a(this.c, localHashSet, this.b);
      return;
    }
    this.b.a(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.k
 * JD-Core Version:    0.7.0.1
 */