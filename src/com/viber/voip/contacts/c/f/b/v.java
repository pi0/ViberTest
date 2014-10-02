package com.viber.voip.contacts.c.f.b;

import android.database.Cursor;
import com.viber.voip.util.al;
import com.viber.voip.util.fl;

class v
  implements fl
{
  v(u paramu, boolean paramBoolean, af paramaf) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    String str1 = "";
    int j;
    String str2;
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      if (this.a)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        do
        {
          if (localStringBuilder.length() > 0) {
            localStringBuilder.append(',');
          }
          localStringBuilder.append(paramCursor.getInt(0));
        } while (paramCursor.moveToNext());
        str1 = localStringBuilder.toString();
      }
      j = paramCursor.getCount();
      str2 = str1;
    }
    for (int i = j;; i = 0)
    {
      al.a(paramCursor);
      if (this.b != null) {
        this.b.a(i, this.a, str2);
      }
      return;
      str2 = str1;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.v
 * JD-Core Version:    0.7.0.1
 */