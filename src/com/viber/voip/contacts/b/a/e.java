package com.viber.voip.contacts.b.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.contacts.b.b.a.a;
import com.viber.voip.contacts.b.b.a.i;
import com.viber.voip.contacts.b.b.a.l;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.JoinCreator;
import com.viber.voip.messages.orm.entity.Entity;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class e
  extends JoinCreator
{
  private static final d a = new f();
  private int b = 0;
  
  public e()
  {
    super(localUri, a.class, arrayOfCreator);
  }
  
  public Entity createInstance(Cursor paramCursor)
  {
    com.viber.voip.contacts.b.b.d locald;
    try
    {
      HashMap localHashMap = new HashMap();
      long l = paramCursor.getLong(this.b);
      locald = null;
      do
      {
        i locali1 = (i)createInstancesInternal(paramCursor, i.a);
        l locall = (l)createInstancesInternal(paramCursor, l.k);
        if (locald == null) {
          locald = (com.viber.voip.contacts.b.b.d)createInstancesInternal(paramCursor, a);
        }
        if (!localHashMap.containsKey(locali1))
        {
          locali1.a(locald);
          localHashMap.put(locali1, new HashSet());
        }
        if (locall.getId() != 0L)
        {
          locall.a(locali1);
          locall.a(locald);
          ((Set)localHashMap.get(locali1)).add(locall);
        }
      } while ((paramCursor.moveToNext()) && (l == paramCursor.getLong(this.b)));
      locald.a(new HashSet(localHashMap.keySet()));
      Iterator localIterator = locald.b().iterator();
      while (localIterator.hasNext())
      {
        i locali2 = (i)localIterator.next();
        locali2.a((Set)localHashMap.get(locali2));
      }
    }
    finally {}
    return locald;
  }
  
  public int getAggregateField()
  {
    return this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.a.e
 * JD-Core Version:    0.7.0.1
 */