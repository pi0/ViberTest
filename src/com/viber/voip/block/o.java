package com.viber.voip.block;

import android.content.Context;
import android.support.v4.app.LoaderManager;
import com.viber.provider.e;
import com.viber.voip.contacts.c.c.a.g;
import com.viber.voip.contacts.c.c.c;
import com.viber.voip.contacts.c.c.d;

public class o
  extends com.viber.provider.b
{
  private c h;
  private d i = new p(this);
  
  public o(Context paramContext, LoaderManager paramLoaderManager, e parame)
  {
    super(5, com.viber.provider.contacts.b.b, paramContext, paramLoaderManager, parame, 0);
    a(q.a);
    b("blockednumbers.blocked_date DESC");
    this.h = new g();
  }
  
  public q e(int paramInt)
  {
    if (c(paramInt)) {
      return new q(this.e);
    }
    return null;
  }
  
  public void m()
  {
    this.h.b(this.i);
  }
  
  public void n()
  {
    this.h.a(this.i);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.block.o
 * JD-Core Version:    0.7.0.1
 */