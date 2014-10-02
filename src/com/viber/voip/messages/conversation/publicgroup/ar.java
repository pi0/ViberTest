package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import com.viber.provider.e;
import com.viber.provider.messages.b.c;
import com.viber.voip.i.a;
import com.viber.voip.messages.controller.c.ap;
import com.viber.voip.messages.conversation.ConversationLoaderPublicGroupEntity;
import com.viber.voip.messages.ui.dl;
import com.viber.voip.messages.ui.ee;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class ar
  extends com.viber.voip.messages.conversation.i<ConversationLoaderPublicGroupEntity>
{
  public ar(Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.messages.i parami, String paramString, ArrayList<ConversationLoaderPublicGroupEntity> paramArrayList, e parame)
  {
    super(paramContext, c.a, paramLoaderManager, parami, parame);
    a(ConversationLoaderPublicGroupEntity.c);
    this.l = paramArrayList;
    this.j = paramString;
  }
  
  protected ConversationLoaderPublicGroupEntity b(Cursor paramCursor)
  {
    return new ConversationLoaderPublicGroupEntity(paramCursor);
  }
  
  protected String m()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(this.k);
    return String.format("(conversations.deleted=0 AND conversations.conversation_type=2) OR conversations._id IN (%s) GROUP BY conversations._id", arrayOfObject);
  }
  
  protected ap o()
  {
    return super.o().e(true);
  }
  
  protected Set<Long> p()
  {
    return new HashSet();
  }
  
  protected dl u()
  {
    int i = 1;
    int k;
    if (this.e.getInt(i) != 0)
    {
      k = i;
      if ((3 != this.e.getInt(ConversationLoaderPublicGroupEntity.d)) && (4 != this.e.getInt(ConversationLoaderPublicGroupEntity.d))) {
        break label77;
      }
    }
    for (;;)
    {
      return new ee(k, false, i, this.e.getInt(ConversationLoaderPublicGroupEntity.i));
      int m = 0;
      break;
      label77:
      int j = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.ar
 * JD-Core Version:    0.7.0.1
 */