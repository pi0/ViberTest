package com.viber.voip.contacts.c.f.a.a;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.database.Cursor;
import com.viber.provider.contacts.d;
import com.viber.voip.util.al;
import com.viber.voip.util.fe;
import com.viber.voip.util.fl;
import java.util.ArrayList;
import java.util.List;

class p
  implements fl
{
  p(n paramn, z paramz) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    String str2;
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      int i = paramCursor.getColumnIndex("_id");
      int j = paramCursor.getColumnIndex("low_display_name");
      do
      {
        long l = paramCursor.getLong(i);
        String str1 = paramCursor.getString(j);
        ContentProviderOperation.Builder localBuilder = ContentProviderOperation.newUpdate(d.a);
        if (str1 == null) {
          break;
        }
        str2 = str1.toLowerCase();
        localArrayList.add(localBuilder.withValue("low_display_name", str2).withSelection("_id=" + l, null).withYieldAllowed(true).build());
      } while (paramCursor.moveToNext());
      n.a(this.b).a(0, "com.viber.provider.vibercontacts", null, localArrayList, new q(this), false, false);
    }
    for (;;)
    {
      al.a(paramCursor);
      return;
      str2 = null;
      break;
      this.b.b(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.p
 * JD-Core Version:    0.7.0.1
 */