package com.viber.voip.gallery.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.orm.entity.BaseEntity;

public class b
  extends BaseEntity
{
  public static final String[] a = { "_id", "bucket_id", "bucket_display_name", "MAX(datetaken) AS datetaken", "_data", "COUNT(*)" };
  private String b;
  private String c;
  private long d;
  private Uri e;
  private int f;
  
  public b(Cursor paramCursor)
  {
    a(this, paramCursor);
  }
  
  private static void a(b paramb, Cursor paramCursor)
  {
    paramb.id = paramCursor.getLong(0);
    paramb.b = paramCursor.getString(1);
    paramb.c = paramCursor.getString(2);
    paramb.d = paramCursor.getLong(3);
    paramb.e = h.a(paramb.id);
    paramb.f = paramCursor.getInt(5);
  }
  
  public String a()
  {
    return this.b;
  }
  
  public String b()
  {
    return this.c;
  }
  
  public Uri c()
  {
    return this.e;
  }
  
  public int d()
  {
    return this.f;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.a.b
 * JD-Core Version:    0.7.0.1
 */