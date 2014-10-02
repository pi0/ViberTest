package com.viber.voip.contacts.c.f.a.a;

import android.content.ContentResolver;
import android.database.Cursor;
import com.viber.provider.contacts.d;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.fl;

class at
  implements fl
{
  at(al paramal, au paramau) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    for (;;)
    {
      try
      {
        Cursor localCursor = al.h(this.b).getContentResolver().query(d.a, new String[] { "contact_lookup_key" }, null, null, null);
        StringBuilder localStringBuilder = new StringBuilder();
        if ((localCursor != null) && (localCursor.moveToFirst()))
        {
          if (localStringBuilder.length() > 0) {
            localStringBuilder.append(',');
          }
          localStringBuilder.append('\'').append(localCursor.getString(0)).append('\'');
          if (localCursor.moveToNext()) {
            continue;
          }
        }
        com.viber.voip.util.al.a(localCursor);
        if ((paramCursor == null) || (paramCursor.getCount() <= 0) || (!paramCursor.moveToFirst())) {
          continue;
        }
        al.a(this.b, new ae(paramCursor.getInt(0), paramCursor.getString(1), paramCursor.getString(2), localStringBuilder.toString(), paramCursor.getString(3)));
      }
      catch (Exception localException)
      {
        ViberApplication.log(6, al.e(), "onQueryComplete log error" + localException.getMessage(), localException);
        al.a(this.b, new ae(0, "", "", "", ""));
        continue;
      }
      al.b(this.b, false);
      com.viber.voip.util.al.a(paramCursor);
      al.a(this.b, this.a);
      return;
      al.a(this.b, new ae(0, "", "", "", ""));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.at
 * JD-Core Version:    0.7.0.1
 */