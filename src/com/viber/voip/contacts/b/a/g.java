package com.viber.voip.contacts.b.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.contacts.b.b.a.a;
import com.viber.voip.contacts.b.b.a.e;
import com.viber.voip.contacts.b.b.a.l;
import com.viber.voip.contacts.b.b.a.o;
import com.viber.voip.contacts.b.b.i;
import com.viber.voip.contacts.b.b.k;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.JoinCreator;

public class g
  extends JoinCreator
{
  private static final d a = new h();
  private int b = 0;
  
  public g()
  {
    super(localUri, a.class, arrayOfCreator);
  }
  
  public i a()
  {
    return new i();
  }
  
  public final i a(Cursor paramCursor)
  {
    i locali = (i)createInstancesInternal(paramCursor, a);
    do
    {
      l locall = (l)createInstancesInternal(paramCursor, l.k);
      o localo = (o)createInstancesInternal(paramCursor, o.a);
      if ((locall instanceof k))
      {
        e locale = new e((k)locall);
        locali.a(locale);
        if (localo.isIdValid()) {
          locali.a(localo, locale);
        }
      }
    } while (moveToNext(paramCursor, locali.getId()));
    return locali;
  }
  
  public int getAggregateField()
  {
    return this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.a.g
 * JD-Core Version:    0.7.0.1
 */