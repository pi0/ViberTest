package com.viber.voip.calls.entities.impl;

import android.database.Cursor;
import com.viber.voip.messages.orm.entity.Entity;

final class c
  extends b
{
  public CallEntityImpl a()
  {
    return new CallEntityImpl();
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


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.entities.impl.c
 * JD-Core Version:    0.7.0.1
 */