package com.viber.voip.contacts.b.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.contacts.b.b.a.a;
import com.viber.voip.contacts.b.b.e;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;

public class m
  extends CreatorHelper
{
  private static final d a = new n();
  protected static final String[] b = addProjections(a.getProjections(), new String[] { "SUM(phonebookdata.int_data1) AS sms_count", "GROUP_CONCAT(vibernumbers.canonized_number||':'||vibernumbers.photo||':'||vibernumbers.actual_photo) AS viber_numbers", "GROUP_CONCAT(phonebookdata.data2||':'||phonebookdata.data3||':'||phonebookdata.data1||':'||ifnull(phonebookdata.data4, '')) AS all_numbers", "GROUP_CONCAT(phonebookdata.data2||':'||ifnull(phonebookdata.data5,phonebookdata.data2)) AS numbers_labels" });
  
  public m()
  {
    super(a.class);
  }
  
  public e a()
  {
    return new e();
  }
  
  public Entity createInstance(Cursor paramCursor)
  {
    return createInstance(paramCursor, 0);
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    e locale = (e)a.createInstance(paramCursor, paramInt);
    try
    {
      locale.a(paramCursor.getInt(paramCursor.getColumnIndex("sms_count")));
      locale.f(paramCursor.getString(paramCursor.getColumnIndex("viber_numbers")));
      locale.c(paramCursor.getString(paramCursor.getColumnIndex("all_numbers")));
      locale.e(paramCursor.getString(paramCursor.getColumnIndex("numbers_labels")));
      return locale;
    }
    catch (Exception localException) {}
    return locale;
  }
  
  public Uri getContentUri()
  {
    return com.viber.provider.contacts.d.d;
  }
  
  public String[] getProjections()
  {
    return b;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.a.m
 * JD-Core Version:    0.7.0.1
 */