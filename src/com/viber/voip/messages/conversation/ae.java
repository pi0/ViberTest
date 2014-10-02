package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import com.viber.provider.e;
import com.viber.provider.messages.b.d;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

public class ae
  extends v<an>
{
  public ae(Context paramContext, LoaderManager paramLoaderManager, i parami, e parame)
  {
    super(paramContext, d.a, an.e, paramLoaderManager, parami, parame);
  }
  
  public ae(Context paramContext, i parami, e parame)
  {
    super(paramContext, d.a, an.e, parami, parame);
  }
  
  protected an a(MessageEntityImpl paramMessageEntityImpl)
  {
    return new an(paramMessageEntityImpl);
  }
  
  protected an b(Cursor paramCursor)
  {
    return new an(this.e);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ae
 * JD-Core Version:    0.7.0.1
 */