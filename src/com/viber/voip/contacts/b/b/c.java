package com.viber.voip.contacts.b.b;

import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;

final class c
  extends CreatorHelper
{
  c(Class paramClass)
  {
    super(paramClass);
  }
  
  public b a()
  {
    return new b();
  }
  
  public Entity createInstance(Cursor paramCursor)
  {
    return createInstance(paramCursor, 0);
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    return a.a(a(), paramCursor, paramInt);
  }
  
  public Uri getContentUri()
  {
    return com.viber.provider.contacts.b.a;
  }
  
  public String[] getProjections()
  {
    return a.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.c
 * JD-Core Version:    0.7.0.1
 */