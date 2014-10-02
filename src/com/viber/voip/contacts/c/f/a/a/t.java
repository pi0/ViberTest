package com.viber.voip.contacts.c.f.a.a;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.database.Cursor;
import android.text.TextUtils;
import com.viber.provider.contacts.d;
import com.viber.voip.util.al;
import com.viber.voip.util.fe;
import com.viber.voip.util.fl;
import java.util.ArrayList;
import java.util.List;

class t
  implements fl
{
  t(n paramn, z paramz) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      int i = paramCursor.getColumnIndex("_id");
      int j = paramCursor.getColumnIndex("low_display_name");
      do
      {
        long l = paramCursor.getLong(i);
        String str1 = paramCursor.getString(j);
        if ((!TextUtils.isEmpty(str1)) && (!Character.isDigit(str1.charAt(0))) && (!Character.isLetter(str1.charAt(0))))
        {
          String str2 = " " + str1;
          localArrayList.add(ContentProviderOperation.newUpdate(d.a).withValue("low_display_name", str2).withSelection("_id=" + l, null).withYieldAllowed(true).build());
        }
      } while (paramCursor.moveToNext());
      n.a(this.b).a(0, "com.viber.provider.vibercontacts", null, localArrayList, new u(this), false, false);
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
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.t
 * JD-Core Version:    0.7.0.1
 */