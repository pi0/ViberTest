package com.viber.voip.gallery.a;

import android.database.Cursor;
import com.viber.voip.gallery.GalleryItem;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.orm.entity.BaseEntity;

public class d
  extends BaseEntity
{
  public static final String[] a = { "_id", "datetaken", "_data" };
  private long b;
  private GalleryItem c;
  
  public d(Cursor paramCursor)
  {
    a(this, paramCursor);
  }
  
  private static void a(d paramd, Cursor paramCursor)
  {
    paramd.id = paramCursor.getLong(0);
    paramd.b = paramCursor.getLong(1);
    paramd.c = GalleryItem.a(h.a(paramd.id));
  }
  
  public GalleryItem a()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.a.d
 * JD-Core Version:    0.7.0.1
 */