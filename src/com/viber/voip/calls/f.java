package com.viber.voip.calls;

import android.database.Cursor;
import com.viber.voip.util.al;
import com.viber.voip.util.fl;

class f
  implements fl
{
  f(a parama, q paramq) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    int i;
    String str;
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      i = paramCursor.getInt(a.a());
      str = paramCursor.getString(a.b());
    }
    for (;;)
    {
      al.a(paramCursor);
      q localq;
      if (this.a != null)
      {
        localq = this.a;
        if (str == null) {
          break label77;
        }
      }
      for (;;)
      {
        localq.a(new t(str, i, null));
        return;
        label77:
        str = "";
      }
      str = null;
      i = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.f
 * JD-Core Version:    0.7.0.1
 */