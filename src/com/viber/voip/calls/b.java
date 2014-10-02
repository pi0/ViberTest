package com.viber.voip.calls;

import android.database.Cursor;
import com.viber.voip.util.al;
import com.viber.voip.util.fl;

class b
  implements fl
{
  b(a parama, p paramp) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    int i = 0;
    if (paramCursor != null)
    {
      boolean bool = paramCursor.moveToFirst();
      i = 0;
      if (bool) {
        i = paramCursor.getInt(0);
      }
    }
    al.a(paramCursor);
    if (this.a != null) {
      this.a.a(i);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.b
 * JD-Core Version:    0.7.0.1
 */