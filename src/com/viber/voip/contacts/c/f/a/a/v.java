package com.viber.voip.contacts.c.f.a.a;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.database.Cursor;
import android.text.TextUtils;
import com.viber.provider.contacts.d;
import com.viber.provider.contacts.f;
import com.viber.voip.contacts.b.b.k;
import com.viber.voip.i.a;
import com.viber.voip.util.al;
import com.viber.voip.util.fe;
import com.viber.voip.util.fl;
import java.util.ArrayList;
import java.util.List;

class v
  implements fl
{
  v(n paramn, z paramz) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    long l;
    int k;
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      int i = paramCursor.getColumnIndex("_id");
      int j = paramCursor.getColumnIndex("data2");
      l = paramCursor.getLong(i);
      String str = paramCursor.getString(j);
      if (!TextUtils.isEmpty(str))
      {
        k = k.a(str);
        if (k == 1) {
          localArrayList1.add(Long.valueOf(l));
        }
      }
      else
      {
        label105:
        if (paramCursor.moveToNext()) {
          break label322;
        }
        ArrayList localArrayList3 = new ArrayList();
        localArrayList3.add(ContentProviderOperation.newUpdate(f.a).withValue("int_data2", Integer.valueOf(1)).withSelection("_id IN (" + a.c(localArrayList1) + ")", null).build());
        localArrayList3.add(ContentProviderOperation.newUpdate(f.a).withValue("int_data2", Integer.valueOf(-1)).withSelection("_id IN (" + a.c(localArrayList2) + ")", null).build());
        localArrayList3.add(ContentProviderOperation.newUpdate(d.a).withValue("viber_out", Boolean.valueOf(true)).withSelection("phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.int_data2=1 AND phonebookdata.mime_type=0)", null).build());
        n.a(this.b).a(0, "com.viber.provider.vibercontacts", null, localArrayList3, new w(this), false, false);
      }
    }
    for (;;)
    {
      al.a(paramCursor);
      return;
      if (k != -1) {
        break label105;
      }
      localArrayList2.add(Long.valueOf(l));
      break label105;
      label322:
      break;
      this.a.a();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.v
 * JD-Core Version:    0.7.0.1
 */