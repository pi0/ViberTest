package com.viber.voip.calls;

import android.database.Cursor;
import com.viber.voip.util.al;
import com.viber.voip.util.fl;

class l
  implements fl
{
  l(a parama, r paramr) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    int i;
    if ((paramCursor != null) && (paramCursor.getCount() == 100))
    {
      i = 1;
      if (i == 0) {
        break label76;
      }
      paramCursor.moveToPosition(-1 + paramCursor.getCount());
    }
    label76:
    for (long l = paramCursor.getLong(0);; l = 0L)
    {
      al.a(paramCursor);
      if (this.a != null) {
        this.a.a(l);
      }
      return;
      i = 0;
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.l
 * JD-Core Version:    0.7.0.1
 */