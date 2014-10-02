package com.viber.voip.contacts.b.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.calls.entities.CallEntity;
import com.viber.voip.calls.entities.impl.AggregatedCallEntityImpl;
import com.viber.voip.calls.entities.impl.CallEntityImpl;
import com.viber.voip.contacts.b.b.a.l;
import com.viber.voip.contacts.b.b.a.o;
import com.viber.voip.contacts.b.b.e;
import com.viber.voip.contacts.b.b.k;
import com.viber.voip.contacts.b.f;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.JoinCreator;
import com.viber.voip.messages.orm.entity.Entity;
import java.util.TreeSet;

public class a
  extends JoinCreator
{
  public static final com.viber.voip.calls.entities.impl.b a = new c();
  private static final d b = new b();
  private int c = getProjectionColumn(CallEntityImpl.b, "_id");
  private int d = getProjectionColumn(CallEntityImpl.b, "aggregate_hash");
  private int e = getProjectionColumn(b, "phonebookcontact._id");
  
  public a()
  {
    super(localUri, com.viber.provider.contacts.c.class, arrayOfCreator);
  }
  
  public Entity createInstance(Cursor paramCursor)
  {
    for (;;)
    {
      try
      {
        long l1 = paramCursor.getLong(this.d);
        l2 = -1L;
        TreeSet localTreeSet = new TreeSet(e.j);
        AggregatedCallEntityImpl localAggregatedCallEntityImpl = (AggregatedCallEntityImpl)createInstancesInternal(paramCursor, a);
        k localk = (k)createInstancesInternal(paramCursor, l.k);
        e locale = (e)createInstancesInternal(paramCursor, b);
        if (localk.getId() != 0L) {
          localAggregatedCallEntityImpl.a(localk);
        }
        if (locale.getId() != 0L)
        {
          locale.a(localTreeSet);
          localAggregatedCallEntityImpl.a(locale);
        }
        long l3 = paramCursor.getLong(this.c);
        long l4 = paramCursor.getLong(this.e);
        if ((localAggregatedCallEntityImpl.c() != null) && (localAggregatedCallEntityImpl.c().getId() == l4))
        {
          o localo = (o)createInstancesInternal(paramCursor, o.a);
          if (localo.getId() != 0L)
          {
            localTreeSet.add(localo);
            if ((localAggregatedCallEntityImpl.b() != null) && (localo.a().equals(localAggregatedCallEntityImpl.b().b()))) {
              localAggregatedCallEntityImpl.a(localo);
            }
          }
        }
        if (l3 == l2) {
          break label298;
        }
        localAggregatedCallEntityImpl.a((CallEntity)createInstancesInternal(paramCursor, a));
        l5 = l3;
        if (paramCursor.moveToNext())
        {
          long l6 = paramCursor.getLong(this.d);
          if (l1 == l6) {}
        }
        else
        {
          return localAggregatedCallEntityImpl;
        }
      }
      finally {}
      long l2 = l5;
      continue;
      label298:
      long l5 = l2;
    }
  }
  
  public int getAggregateField()
  {
    return this.d;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.a.a
 * JD-Core Version:    0.7.0.1
 */