package com.viber.voip.contacts.c.f.a.a;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.database.Cursor;
import com.viber.provider.contacts.f;
import com.viber.voip.util.al;
import com.viber.voip.util.fe;
import com.viber.voip.util.fl;
import java.util.ArrayList;
import java.util.List;

class r
  implements fl
{
  r(n paramn, z paramz) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      int i = paramCursor.getColumnIndex("_id");
      int j = paramCursor.getColumnIndex("data2");
      int k = paramCursor.getColumnIndex("data3");
      do
      {
        long l = paramCursor.getLong(i);
        String str1 = paramCursor.getString(k);
        String str2 = paramCursor.getString(j);
        localArrayList.add(ContentProviderOperation.newUpdate(f.a).withValue("data5", str1).withValue("data4", str2).withSelection("_id=" + l, null).withYieldAllowed(true).build());
      } while (paramCursor.moveToNext());
      n.a(this.b).a(0, "com.viber.provider.vibercontacts", null, localArrayList, new s(this), false, false);
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
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.r
 * JD-Core Version:    0.7.0.1
 */