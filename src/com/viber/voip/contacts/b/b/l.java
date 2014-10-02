package com.viber.voip.contacts.b.b;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.voip.contacts.b.b.a.o;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.JoinCreator;

final class l
  extends JoinCreator
{
  l(Uri paramUri, Class paramClass, Creator... paramVarArgs)
  {
    super(paramUri, paramClass, paramVarArgs);
  }
  
  public k a(Cursor paramCursor)
  {
    try
    {
      k localk = (k)createInstancesInternal(paramCursor, com.viber.voip.contacts.b.b.a.l.k, this);
      o localo = (o)createInstancesInternal(paramCursor, o.a);
      b localb = (b)createInstancesInternal(paramCursor, b.a);
      if (!TextUtils.isEmpty(localo.a())) {
        k.a(localk, localo);
      }
      if (!TextUtils.isEmpty(localb.a())) {
        k.a(localk, localb);
      }
      return localk;
    }
    finally {}
  }
  
  public k a(Cursor paramCursor, int paramInt)
  {
    localk = new k();
    try
    {
      int i = getProjectionColumn("_id", paramInt);
      if (!paramCursor.isNull(i)) {
        k.a(localk, paramCursor.getLong(i));
      }
      for (;;)
      {
        k.c(localk, paramCursor.getLong(getProjectionColumn("contact_id", paramInt)));
        k.d(localk, paramCursor.getLong(getProjectionColumn("raw_id", paramInt)));
        k.a(localk, paramCursor.getString(getProjectionColumn("data1", paramInt)));
        k.b(localk, paramCursor.getString(getProjectionColumn("data2", paramInt)));
        k.c(localk, paramCursor.getString(getProjectionColumn("data3", paramInt)));
        k.d(localk, paramCursor.getString(getProjectionColumn("data4", paramInt)));
        k.e(localk, paramCursor.getString(getProjectionColumn("data5", paramInt)));
        k.a(localk, paramCursor.getInt(getProjectionColumn("int_data2", paramInt)));
        k.b(localk, paramCursor.getInt(getProjectionColumn("mime_type", paramInt)));
        return localk;
        k.b(localk, -1L);
      }
      return localk;
    }
    catch (Exception localException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.l
 * JD-Core Version:    0.7.0.1
 */