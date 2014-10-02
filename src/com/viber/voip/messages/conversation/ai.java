package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.app.LoaderManager;
import android.support.v4.util.LruCache;
import com.viber.provider.b;
import com.viber.provider.e;
import com.viber.provider.messages.b.d;
import com.viber.voip.messages.controller.cx;
import com.viber.voip.messages.controller.db;
import com.viber.voip.messages.controller.df;
import com.viber.voip.messages.controller.dh;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

public abstract class ai<T extends an>
  extends b
{
  private LruCache<Integer, T> h = new aj(this, 20);
  protected long i;
  protected i j;
  private df k = new ak(this);
  private dh l = new al(this);
  private db m = new am(this);
  
  public ai(Context paramContext, int paramInt, LoaderManager paramLoaderManager, i parami, e parame)
  {
    super(paramInt, d.a, paramContext, paramLoaderManager, parame, 0);
    this.j = parami;
    a(an.e);
    a("messages.conversation_id=? AND deleted=0");
  }
  
  public ai(Context paramContext, Uri paramUri, String[] paramArrayOfString, LoaderManager paramLoaderManager, i parami, e parame)
  {
    super(2, paramUri, paramContext, paramLoaderManager, parame, 0);
    this.j = parami;
    a(paramArrayOfString);
    a("messages.conversation_id=? AND deleted=0");
  }
  
  public ai(Context paramContext, Uri paramUri, String[] paramArrayOfString, i parami, e parame)
  {
    super(10, paramUri, paramContext, null, parame, 0);
    this.j = parami;
    a(paramArrayOfString);
    a("messages.conversation_id=? AND deleted=0");
  }
  
  protected abstract T a(MessageEntityImpl paramMessageEntityImpl);
  
  public void a(long paramLong)
  {
    this.i = paramLong;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(this.i);
    b(arrayOfString);
  }
  
  protected void a(long paramLong1, long paramLong2, boolean paramBoolean) {}
  
  protected abstract T b(Cursor paramCursor);
  
  public T e(int paramInt)
  {
    an localan = (an)this.h.get(Integer.valueOf(paramInt));
    if ((localan == null) && (c(paramInt)))
    {
      localan = b(this.e);
      this.h.put(Integer.valueOf(paramInt), localan);
    }
    return localan;
  }
  
  protected void k()
  {
    super.k();
    this.h.evictAll();
  }
  
  public void u()
  {
    this.j.b().b(this.k);
    this.j.b().b(this.l);
    this.j.b().b(this.m);
  }
  
  public void v()
  {
    this.j.b().a(this.k);
    this.j.b().a(this.l);
    this.j.b().a(this.m);
  }
  
  public long w()
  {
    return this.i;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ai
 * JD-Core Version:    0.7.0.1
 */