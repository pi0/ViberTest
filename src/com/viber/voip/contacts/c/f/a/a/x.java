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

class x
  implements fl
{
  x(n paramn, z paramz) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      int i = paramCursor.getColumnIndex("_id");
      int j = paramCursor.getColumnIndex("photo_id");
      ArrayList localArrayList = new ArrayList();
      do
      {
        long l1 = paramCursor.getLong(i);
        long l2 = paramCursor.getLong(j);
        localArrayList.add(ContentProviderOperation.newUpdate(d.a).withValue("native_photo_id", Long.valueOf(l2)).withSelection("_id=" + l1, null).build());
      } while (paramCursor.moveToNext());
      n.a(this.b).a(0, "com.viber.provider.vibercontacts", null, localArrayList, new y(this), false, false);
    }
    for (;;)
    {
      al.a(paramCursor);
      return;
      this.a.a();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.x
 * JD-Core Version:    0.7.0.1
 */