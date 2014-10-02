package com.viber.voip.contacts.b.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.provider.contacts.d;
import com.viber.voip.contacts.b.b.e;
import com.viber.voip.messages.orm.entity.Entity;

public class j
  extends m
{
  protected String[] a = { "phonebookcontact._id", "phonebookcontact.native_id", "phonebookcontact.native_photo_id", "phonebookcontact.display_name", "SUM(phonebookdata.int_data1) AS sms_count", "GROUP_CONCAT(vibernumbers.canonized_number||':'||vibernumbers.photo||':'||vibernumbers.actual_photo) AS viber_numbers", "GROUP_CONCAT(phonebookdata.data2) AS canonized_numbers" };
  
  public Entity createInstance(Cursor paramCursor)
  {
    return createInstance(paramCursor, 0);
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    e locale = new e();
    try
    {
      locale.setId(paramCursor.getLong(0));
      locale.b(paramCursor.getLong(1));
      locale.c(paramCursor.getLong(2));
      locale.i(paramCursor.getString(3));
      locale.a(paramCursor.getInt(4));
      locale.f(paramCursor.getString(5));
      locale.a(paramCursor.getString(6));
      return locale;
    }
    catch (Exception localException) {}
    return locale;
  }
  
  public Uri getContentUri()
  {
    return d.d;
  }
  
  public String[] getProjections()
  {
    return this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.a.j
 * JD-Core Version:    0.7.0.1
 */