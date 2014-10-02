package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import com.viber.provider.e;
import java.util.ArrayList;

public class aw
  extends i<ConversationLoaderEntity>
{
  public aw(Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.messages.i parami, boolean paramBoolean1, boolean paramBoolean2, ArrayList paramArrayList, String paramString, e parame)
  {
    super(paramContext, paramLoaderManager, parami, paramBoolean1, paramBoolean2, paramArrayList, paramString, parame);
  }
  
  public aw(Context paramContext, com.viber.voip.messages.i parami, e parame)
  {
    super(paramContext, parami, parame);
  }
  
  protected ConversationLoaderEntity a(Cursor paramCursor)
  {
    return new ConversationLoaderEntity(paramCursor);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.aw
 * JD-Core Version:    0.7.0.1
 */