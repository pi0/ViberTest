package com.viber.voip.contacts.b.a;

import android.database.Cursor;
import com.viber.voip.calls.entities.impl.AggregatedCallEntityImpl;
import com.viber.voip.calls.entities.impl.b;
import com.viber.voip.messages.orm.entity.Entity;

final class c
  extends b
{
  public AggregatedCallEntityImpl a()
  {
    return new AggregatedCallEntityImpl();
  }
  
  public Entity createInstance(Cursor paramCursor)
  {
    return createInstance(paramCursor, 0);
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    return a(a(), paramCursor, paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.a.c
 * JD-Core Version:    0.7.0.1
 */