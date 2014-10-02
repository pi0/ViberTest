package com.viber.voip.contacts.c.f.a.a;

import android.database.Cursor;
import com.viber.voip.util.al;
import com.viber.voip.util.fl;

class ac
  implements fl
{
  ac(ab paramab, ak paramak) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    int i = 0;
    if (paramCursor != null)
    {
      boolean bool = paramCursor.moveToFirst();
      i = 0;
      if (bool) {
        i = paramCursor.getCount();
      }
    }
    al.a(paramCursor);
    if (this.a != null) {
      this.a.a(i);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.ac
 * JD-Core Version:    0.7.0.1
 */