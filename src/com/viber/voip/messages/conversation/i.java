package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.app.LoaderManager;
import android.text.TextUtils;
import com.viber.provider.e;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.i.a;
import com.viber.voip.messages.controller.ah;
import com.viber.voip.messages.controller.c.ap;
import com.viber.voip.messages.controller.cx;
import com.viber.voip.messages.controller.db;
import com.viber.voip.messages.controller.df;
import com.viber.voip.messages.controller.dh;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.ui.dl;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public abstract class i<T extends ConversationLoaderEntity>
  extends com.viber.provider.b
{
  protected final com.viber.voip.messages.i h;
  protected final Handler i;
  protected String j;
  protected Set<Long> k;
  protected ArrayList<T> l;
  protected Runnable m = new o(this);
  private boolean n;
  private boolean o;
  private boolean p;
  private db q = new j(this);
  private df r = new k(this);
  private dh s = new l(this);
  private final ah t = new m(this);
  
  protected i(Context paramContext, Uri paramUri, LoaderManager paramLoaderManager, com.viber.voip.messages.i parami, e parame)
  {
    this(paramContext, paramUri, paramLoaderManager, parami, false, false, parame);
  }
  
  private i(Context paramContext, Uri paramUri, LoaderManager paramLoaderManager, com.viber.voip.messages.i parami, boolean paramBoolean1, boolean paramBoolean2, e parame)
  {
    super(0, paramUri, paramContext, paramLoaderManager, parame, 0);
    this.n = paramBoolean1;
    this.o = paramBoolean2;
    this.h = parami;
    this.k = p();
    this.i = dc.a(dk.a);
    a(ConversationLoaderEntity.a);
    a(m());
    b("conversations.date DESC");
    x();
  }
  
  public i(Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.messages.i parami, boolean paramBoolean1, boolean paramBoolean2, e parame)
  {
    this(paramContext, com.viber.provider.messages.b.b.a, paramLoaderManager, parami, paramBoolean1, paramBoolean2, parame);
  }
  
  public i(Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.messages.i parami, boolean paramBoolean1, boolean paramBoolean2, ArrayList paramArrayList, String paramString, e parame)
  {
    this(paramContext, paramLoaderManager, parami, paramBoolean1, paramBoolean2, parame);
    this.l = paramArrayList;
    this.j = paramString;
  }
  
  public i(Context paramContext, com.viber.voip.messages.i parami, e parame)
  {
    super(11, com.viber.provider.messages.b.b.a, paramContext, null, parame, 0);
    this.n = false;
    this.o = false;
    this.h = parami;
    this.k = p();
    this.i = dc.a(dk.a);
    a(ConversationLoaderEntity.a);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(this.k);
    a(String.format("((conversations.deleted=0 AND conversations.conversation_type=1) OR (conversations.last_message_id>0 AND conversations.conversation_type=0) OR conversations._id IN (%s)) AND conversations.flags & 1 = 0", arrayOfObject));
    b("conversations.date DESC");
  }
  
  private void w()
  {
    a(m());
  }
  
  private void x() {}
  
  protected abstract T a(Cursor paramCursor);
  
  public Map<Long, dl> a(Set<Long> paramSet)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (c(0)) {
      do
      {
        long l1 = this.e.getLong(0);
        if ((paramSet == null) || (paramSet.contains(Long.valueOf(l1)))) {
          localLinkedHashMap.put(Long.valueOf(l1), u());
        }
      } while (this.e.moveToNext());
    }
    return localLinkedHashMap;
  }
  
  protected void a(String paramString, long paramLong, boolean paramBoolean)
  {
    if ((TextUtils.isEmpty(paramString)) || (TextUtils.isEmpty(paramString.trim())))
    {
      this.l = null;
      this.j = null;
      if (this.a != null) {
        this.a.a(this, false);
      }
    }
    while ((paramBoolean) && (paramString.trim().equals(this.j))) {
      return;
    }
    this.j = paramString.trim();
    this.i.removeCallbacks(this.m);
    this.i.postDelayed(this.m, paramLong);
  }
  
  public long a_(int paramInt)
  {
    if (this.l == null) {
      return super.a_(paramInt);
    }
    ConversationLoaderEntity localConversationLoaderEntity = (ConversationLoaderEntity)this.l.get(paramInt);
    if (localConversationLoaderEntity != null) {
      return localConversationLoaderEntity.a();
    }
    return 0L;
  }
  
  public void d(String paramString)
  {
    a(paramString, 200L, true);
  }
  
  public T e(int paramInt)
  {
    if (this.l == null)
    {
      if (c(paramInt)) {
        return a(this.e);
      }
    }
    else if ((paramInt >= 0) && (paramInt < this.l.size())) {
      return (ConversationLoaderEntity)this.l.get(paramInt);
    }
    return null;
  }
  
  public void g()
  {
    if (!TextUtils.isEmpty(this.j)) {
      a(this.j, 500L, false);
    }
    super.g();
  }
  
  public int getCount()
  {
    if (this.l == null) {
      return super.getCount();
    }
    return this.l.size();
  }
  
  protected String m()
  {
    if (this.o) {}
    for (String str = "(conversations.deleted=0 AND conversations.conversation_type=1) OR (conversations.last_message_id>0 AND conversations.conversation_type=0) OR conversations._id IN (%s)";; str = "((conversations.deleted=0 AND conversations.conversation_type=1) OR (conversations.last_message_id>0 AND conversations.conversation_type=0) OR conversations._id IN (%s)) AND conversations.flags & 1 = 0")
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.c(this.k);
      return String.format(str, arrayOfObject);
    }
  }
  
  protected void n()
  {
    this.h.c().a(o().a(), this.t);
  }
  
  protected ap o()
  {
    ap localap = new ap().a(this.j);
    localap.b(ViberApplication.getInstance().getString(2131494051));
    if (this.p)
    {
      localap.b(true);
      localap.a(false);
      localap.c(true);
    }
    localap.d(this.o);
    return localap;
  }
  
  protected Set<Long> p()
  {
    return this.h.a().b();
  }
  
  public void q()
  {
    this.h.b().b(this.r);
    this.h.b().b(this.q);
    this.h.b().b(this.s);
  }
  
  public void r()
  {
    this.h.b().a(this.r);
    this.h.b().a(this.s);
    this.h.b().a(this.q);
  }
  
  public void s()
  {
    this.p = true;
  }
  
  public Map<Long, dl> t()
  {
    return a(null);
  }
  
  protected dl u()
  {
    int i1 = 1;
    if (this.e.getInt(i1) != 0) {}
    for (;;)
    {
      return new dl(i1, false);
      int i2 = 0;
    }
  }
  
  public ArrayList<T> v()
  {
    return this.l;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.i
 * JD-Core Version:    0.7.0.1
 */