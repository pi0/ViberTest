package com.viber.voip.contacts.b.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.contacts.b.b.a.a;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;

public class d
  extends CreatorHelper
{
  public static final String a = d.class.getSimpleName();
  private static final String[] b = { "phonebookcontact._id", "phonebookcontact.native_id", "phonebookcontact.display_name", "phonebookcontact.low_display_name", "phonebookcontact.numbers_name", "phonebookcontact.starred", "phonebookcontact.viber", "phonebookcontact.viber_out", "phonebookcontact.contact_lookup_key", "phonebookcontact.contact_hash", "phonebookcontact.has_number", "phonebookcontact.has_name", "phonebookcontact.native_photo_id", "phonebookcontact.recently_joined_date", "phonebookcontact.joined_date", "phonebookcontact.version", "phonebookcontact.flags", "phonebookcontact.phone_label", "phonebookcontact.phonetic_name" };
  
  public d()
  {
    super(a.class);
  }
  
  public a a()
  {
    return new a();
  }
  
  public Entity createInstance(Cursor paramCursor)
  {
    return createInstance(paramCursor, 0);
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    int i = 1;
    locala = a();
    int k = paramInt + 0;
    try
    {
      locala.setId(paramCursor.getLong(k));
      locala.b(paramCursor.getLong(paramInt + 1));
      if (paramCursor.getInt(paramInt + 5) == i)
      {
        int m = i;
        locala.a(m);
        locala.i(paramCursor.getString(paramInt + 2));
        locala.m(paramCursor.getString(paramInt + 3));
        if (paramCursor.getInt(paramInt + 6) != i) {
          break label342;
        }
        int i1 = i;
        label109:
        locala.b(i1);
        if (paramCursor.getInt(paramInt + 7) != i) {
          break label348;
        }
        int i3 = i;
        label133:
        locala.c(i3);
        locala.n(paramCursor.getString(paramInt + 8));
        if (paramCursor.getInt(paramInt + 10) != i) {
          break label354;
        }
        int i5 = i;
        label172:
        locala.d(i5);
        if (paramCursor.getInt(paramInt + 11) != i) {
          break label360;
        }
      }
      for (;;)
      {
        locala.e(i);
        locala.c(paramCursor.getLong(paramInt + 12));
        locala.b(paramCursor.getInt(paramInt + 9));
        locala.e(paramCursor.getLong(paramInt + 14));
        locala.d(paramCursor.getLong(paramInt + 13));
        locala.l(paramCursor.getString(paramInt + 4));
        locala.d(paramCursor.getInt(paramInt + 16));
        locala.c(paramCursor.getInt(paramInt + 15));
        locala.k(paramCursor.getString(paramInt + 17));
        locala.j(paramCursor.getString(paramInt + 18));
        return locala;
        int n = 0;
        break;
        label342:
        int i2 = 0;
        break label109;
        label348:
        int i4 = 0;
        break label133;
        label354:
        int i6 = 0;
        break label172;
        label360:
        int j = 0;
      }
      return locala;
    }
    catch (Exception localException) {}
  }
  
  public Uri getContentUri()
  {
    return com.viber.provider.contacts.d.a;
  }
  
  public ContentValues getContentValues(Entity paramEntity)
  {
    return paramEntity.getContentValues();
  }
  
  public String[] getProjections()
  {
    return b;
  }
  
  public String getTable()
  {
    return "";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.a.d
 * JD-Core Version:    0.7.0.1
 */