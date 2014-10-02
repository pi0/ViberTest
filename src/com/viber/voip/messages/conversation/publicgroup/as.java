package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import com.viber.provider.e;
import com.viber.provider.messages.b.c;

public class as
  extends com.viber.voip.messages.conversation.i<PublicGroupDataLoaderEntity>
{
  public as(Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.messages.i parami, e parame, long paramLong)
  {
    super(paramContext, c.a, paramLoaderManager, parami, parame);
    a(PublicGroupDataLoaderEntity.m);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    b(arrayOfString);
  }
  
  protected PublicGroupDataLoaderEntity b(Cursor paramCursor)
  {
    return new PublicGroupDataLoaderEntity(paramCursor);
  }
  
  protected String m()
  {
    return "(conversations.group_id=?)";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.as
 * JD-Core Version:    0.7.0.1
 */