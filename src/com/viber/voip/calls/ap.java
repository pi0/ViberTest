package com.viber.voip.calls;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.database.Cursor;
import com.viber.provider.contacts.d;
import com.viber.voip.util.al;
import com.viber.voip.util.fe;
import com.viber.voip.util.fl;
import java.util.ArrayList;
import java.util.List;

class ap
  implements fl
{
  ap(ao paramao) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    int j;
    long l;
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      int i = paramCursor.getColumnIndex("_id");
      j = paramCursor.getColumnIndex("display_name");
      l = paramCursor.getLong(i);
      if (paramCursor.getString(j) == null) {
        break label168;
      }
    }
    label168:
    for (String str = paramCursor.getString(j).toLowerCase();; str = null)
    {
      localArrayList.add(ContentProviderOperation.newUpdate(d.a).withValue("numbers_name", this.a.a(str)).withSelection("_id=" + l, null).withYieldAllowed(true).build());
      if (paramCursor.moveToNext()) {
        break;
      }
      ao.a(this.a).a(0, "com.viber.provider.vibercontacts", null, localArrayList, null, false, false);
      al.a(paramCursor);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ap
 * JD-Core Version:    0.7.0.1
 */