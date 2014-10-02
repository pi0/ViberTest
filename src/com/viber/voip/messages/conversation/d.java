package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.app.LoaderManager;
import com.viber.voip.messages.controller.cx;
import com.viber.voip.messages.controller.db;
import com.viber.voip.messages.controller.dh;
import com.viber.voip.messages.i;

public class d
  extends com.viber.provider.b
{
  private final g h;
  private final i i;
  private long j;
  private db k = new e(this);
  private dh l = new f(this);
  
  public d(Context paramContext, LoaderManager paramLoaderManager, i parami, g paramg, com.viber.provider.e parame)
  {
    super(0, com.viber.provider.messages.b.b.a, paramContext, paramLoaderManager, parame, 0);
    this.i = parami;
    this.h = paramg;
    a(h.a);
    a("conversations._id=?");
  }
  
  public d(Context paramContext, i parami, g paramg, com.viber.provider.e parame)
  {
    super(9, com.viber.provider.messages.b.b.a, paramContext, null, parame, 0);
    this.i = parami;
    this.h = paramg;
    a(h.a);
    a("conversations._id=?");
  }
  
  public d(Uri paramUri, Context paramContext, LoaderManager paramLoaderManager, com.viber.provider.e parame, i parami, g paramg)
  {
    super(0, paramUri, paramContext, paramLoaderManager, parame, 0);
    this.i = parami;
    this.h = paramg;
    a(h.a);
    a("conversations._id=?");
  }
  
  public void a(long paramLong)
  {
    this.j = paramLong;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    b(arrayOfString);
  }
  
  public h e(int paramInt)
  {
    if (c(paramInt)) {
      return new h(this.e);
    }
    return null;
  }
  
  public void e()
  {
    super.e();
  }
  
  public void m()
  {
    this.i.b().b(this.k);
    this.i.b().b(this.l);
  }
  
  public void n()
  {
    this.i.b().a(this.k);
    this.i.b().a(this.l);
  }
  
  public long o()
  {
    if (c(0)) {
      return this.e.getLong(19);
    }
    return 0L;
  }
  
  public long p()
  {
    return this.j;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.d
 * JD-Core Version:    0.7.0.1
 */