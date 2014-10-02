package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.support.v4.app.LoaderManager;
import com.viber.provider.e;
import com.viber.provider.messages.b.c;
import com.viber.voip.messages.conversation.d;
import com.viber.voip.messages.conversation.g;
import com.viber.voip.messages.i;

public class ap
  extends d
{
  public ap(Context paramContext, LoaderManager paramLoaderManager, i parami, g paramg, e parame)
  {
    super(c.a, paramContext, paramLoaderManager, parame, parami, paramg);
    a(aq.b);
  }
  
  public ap(Context paramContext, i parami, g paramg, e parame)
  {
    super(paramContext, parami, paramg, parame);
    a(aq.b);
  }
  
  public aq f(int paramInt)
  {
    if (c(paramInt)) {
      return new aq(this.e);
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.ap
 * JD-Core Version:    0.7.0.1
 */