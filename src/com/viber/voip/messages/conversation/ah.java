package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import com.viber.provider.e;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

public class ah
  extends ai<an>
{
  public ah(Context paramContext, LoaderManager paramLoaderManager, i parami, e parame)
  {
    super(paramContext, 4, paramLoaderManager, parami, parame);
    a("messages.conversation_id=? AND deleted=0 AND ( messages.extra_mime IN ( 'image', 'video', 'animated_message' ))");
    b("date DESC, token DESC");
  }
  
  protected an a(MessageEntityImpl paramMessageEntityImpl)
  {
    return new an(paramMessageEntityImpl);
  }
  
  public void a(long paramLong)
  {
    this.i = paramLong;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(this.i);
    b(arrayOfString);
  }
  
  protected an b(Cursor paramCursor)
  {
    return new an(paramCursor);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ah
 * JD-Core Version:    0.7.0.1
 */