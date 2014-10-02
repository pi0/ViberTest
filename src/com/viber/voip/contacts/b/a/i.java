package com.viber.voip.contacts.b.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.provider.contacts.d;
import com.viber.voip.contacts.b.b.e;
import com.viber.voip.messages.orm.entity.Entity;

public class i
  extends m
{
  protected String[] a = { "phonebookcontact._id", "phonebookcontact.native_id", "phonebookcontact.display_name", "phonebookcontact.low_display_name", "phonebookcontact.contact_lookup_key", "phonebookcontact.viber", "phonebookcontact.viber_out", "phonebookcontact.starred", "phonebookcontact.native_photo_id", "phonebookcontact.version", "phonebookcontact.phone_label", "GROUP_CONCAT(vibernumbers.canonized_number||':'||vibernumbers.photo||':'||vibernumbers.actual_photo) AS viber_numbers", "GROUP_CONCAT(phonebookdata.data2||':'||phonebookdata.int_data2) AS locale_numbers" };
  
  public Entity createInstance(Cursor paramCursor)
  {
    return createInstance(paramCursor, 0);
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    int i = 1;
    locale = new e();
    try
    {
      locale.setId(paramCursor.getLong(0));
      locale.b(paramCursor.getLong(1));
      locale.i(paramCursor.getString(2));
      locale.m(paramCursor.getString(3));
      locale.n(paramCursor.getString(4));
      if (paramCursor.getInt(5) == i)
      {
        int k = i;
        locale.b(k);
        if (paramCursor.getInt(6) != i) {
          break label207;
        }
        int n = i;
        label108:
        locale.c(n);
        if (paramCursor.getInt(7) != i) {
          break label213;
        }
      }
      for (;;)
      {
        locale.a(i);
        locale.c(paramCursor.getLong(8));
        locale.k(paramCursor.getString(10));
        locale.f(paramCursor.getString(11));
        locale.g(paramCursor.getString(12));
        locale.c(paramCursor.getInt(9));
        return locale;
        int m = 0;
        break;
        label207:
        int i1 = 0;
        break label108;
        label213:
        int j = 0;
      }
      return locale;
    }
    catch (Exception localException) {}
  }
  
  public Uri getContentUri()
  {
    return d.c;
  }
  
  public String[] getProjections()
  {
    return this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.a.i
 * JD-Core Version:    0.7.0.1
 */