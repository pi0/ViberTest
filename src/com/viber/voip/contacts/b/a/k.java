package com.viber.voip.contacts.b.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.contacts.b.b.a.a;
import com.viber.voip.contacts.b.b.e;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;

public class k
  extends CreatorHelper
{
  public static final int a = 19;
  public static final int b = 20;
  public static final int c = 21;
  public static final int d = 22;
  public static final int e = 23;
  public static final int f = 24;
  public static final int g = 25;
  public static final int h = 26;
  protected static final String[] i = addProjections(j.getProjections(), new String[] { "vibernumbers.canonized_number", "vibernumbers.photo", "vibernumbers.actual_photo", "phonebookdata.data2", "phonebookdata.data3", "phonebookdata.data1", "phonebookdata.data4", "phonebookdata.data5" });
  private static final d j = new l();
  
  public k()
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
    e locale = (e)j.createInstance(paramCursor, paramInt);
    try
    {
      locale.f(paramCursor.getString(paramInt + a) + ":" + paramCursor.getString(paramInt + b) + ":" + paramCursor.getString(paramInt + c));
      locale.c(paramCursor.getString(paramInt + d) + ":" + paramCursor.getString(paramInt + e) + ":" + paramCursor.getString(paramInt + f) + ":" + paramCursor.getString(paramInt + g));
      locale.e(paramCursor.getString(paramInt + a) + ":" + paramCursor.getString(paramInt + h));
      locale.d(paramCursor.getString(g));
      return locale;
    }
    catch (Exception localException) {}
    return locale;
  }
  
  public Uri getContentUri()
  {
    return com.viber.provider.contacts.d.e;
  }
  
  public String[] getProjections()
  {
    return i;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.a.k
 * JD-Core Version:    0.7.0.1
 */