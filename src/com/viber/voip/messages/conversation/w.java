package com.viber.voip.messages.conversation;

import android.content.Context;
import android.net.Uri;
import android.support.v4.app.LoaderManager;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PublicGroupInfo;
import com.viber.provider.e;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationData;
import com.viber.voip.messages.conversation.publicgroup.ap;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

public class w
{
  private static final String a = w.class.getSimpleName();
  private ConversationData b;
  private d c;
  private v d;
  private i e;
  private ad f;
  private boolean g;
  private e h = new x(this);
  private e i = new y(this);
  private g j = new z(this);
  
  public w(Context paramContext, LoaderManager paramLoaderManager, i parami, int paramInt, ad paramad)
  {
    this.f = paramad;
    this.e = parami;
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown conversationType=" + paramInt);
    case 0: 
    case 1: 
      this.d = new ae(paramContext, paramLoaderManager, parami, this.h);
      this.c = new d(paramContext, paramLoaderManager, parami, this.j, this.i);
      return;
    }
    this.d = new c(paramContext, paramLoaderManager, parami, this.h);
    this.c = new ap(paramContext, paramLoaderManager, parami, this.j, this.i);
  }
  
  public w(Context paramContext, i parami, int paramInt, ad paramad)
  {
    this.f = paramad;
    this.e = parami;
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown conversationType=" + paramInt);
    case 0: 
    case 1: 
      this.d = new ae(paramContext, parami, this.h);
      this.c = new d(paramContext, parami, this.j, this.i);
      return;
    }
    this.d = new c(paramContext, parami, this.h);
    this.c = new ap(paramContext, parami, this.j, this.i);
  }
  
  private void a(long paramLong1, long paramLong2)
  {
    this.d.a(paramLong1, paramLong2);
    b(paramLong1);
  }
  
  private void a(String paramString) {}
  
  private void b(long paramLong)
  {
    this.c.a(paramLong);
    this.d.a(paramLong);
    this.c.e();
    this.d.e();
  }
  
  private void m()
  {
    long l1 = this.c.o();
    long l2 = this.d.r();
    if ((l1 != 0L) && (l2 != 0L) && (l2 <= l1)) {}
    for (boolean bool = true;; bool = false)
    {
      this.g = bool;
      return;
    }
  }
  
  public void a()
  {
    this.c.l();
    this.d.l();
  }
  
  public void a(long paramLong)
  {
    this.c.a(paramLong);
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl)
  {
    if (paramMessageEntityImpl.getMessageSeq() <= 0) {
      paramMessageEntityImpl.setMessageSeq(ViberApplication.getInstance().getPhoneController(true).generateSequence());
    }
    this.d.a(this.d.a(paramMessageEntityImpl));
    this.e.c().a(paramMessageEntityImpl);
    m();
  }
  
  public void a(boolean paramBoolean)
  {
    this.d.a(paramBoolean);
  }
  
  public void a(MessageEntityImpl[] paramArrayOfMessageEntityImpl)
  {
    int k = paramArrayOfMessageEntityImpl.length;
    for (int m = 0; m < k; m++)
    {
      MessageEntityImpl localMessageEntityImpl = paramArrayOfMessageEntityImpl[m];
      if (localMessageEntityImpl.getMessageSeq() <= 0) {
        localMessageEntityImpl.setMessageSeq(ViberApplication.getInstance().getPhoneController(true).generateSequence());
      }
      this.d.a(this.d.a(localMessageEntityImpl));
    }
    this.e.c().a(paramArrayOfMessageEntityImpl);
    m();
  }
  
  public boolean a(ConversationData paramConversationData, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool2;
    if (paramConversationData.l > 0L)
    {
      if ((this.b != null) && (this.b.equals(paramConversationData))) {
        break label323;
      }
      bool2 = true;
      if (paramBoolean1)
      {
        this.c.h();
        this.d.h();
      }
    }
    for (;;)
    {
      if (paramBoolean2) {
        a(paramConversationData.l, paramConversationData.o);
      }
      for (;;)
      {
        this.b = paramConversationData;
        return bool2;
        b(paramConversationData.l);
      }
      boolean bool1;
      if (this.b != null)
      {
        boolean bool4 = this.b.equals(paramConversationData);
        bool1 = false;
        if (bool4) {}
      }
      else
      {
        bool1 = true;
        if (paramBoolean1)
        {
          this.c.h();
          this.d.h();
        }
      }
      bool2 = bool1;
      ab localab = new ab(this);
      String str1 = "";
      boolean bool3 = paramConversationData instanceof PublicGroupConversationData;
      int k = 0;
      PublicGroupInfo localPublicGroupInfo = null;
      String str3;
      label214:
      Object localObject;
      int m;
      if (bool3)
      {
        PublicGroupConversationData localPublicGroupConversationData = (PublicGroupConversationData)paramConversationData;
        k = localPublicGroupConversationData.c;
        str1 = localPublicGroupConversationData.d;
        localPublicGroupInfo = localPublicGroupConversationData.e;
        if (localPublicGroupInfo == null) {
          if (localPublicGroupConversationData.b != null)
          {
            str3 = localPublicGroupConversationData.b.getLastPathSegment();
            localPublicGroupInfo = new PublicGroupInfo(0, paramConversationData.m, paramConversationData.j, k, str1, str3, null, null, null, 3, null, null, null, 0, 0, localPublicGroupConversationData.a);
            int n = k;
            localObject = str1;
            m = n;
          }
        }
      }
      for (;;)
      {
        this.e.c().a(paramConversationData.r, paramConversationData.k, paramConversationData.m, (String)localObject, m, true, localPublicGroupInfo, localab);
        break;
        str3 = null;
        break label214;
        String str2 = str1;
        m = k;
        localObject = str2;
      }
      label323:
      bool2 = false;
    }
  }
  
  public void b()
  {
    a("destroy");
    this.f = null;
    this.c.f();
    this.d.f();
  }
  
  public boolean c()
  {
    return this.g;
  }
  
  public boolean d()
  {
    return this.d.s();
  }
  
  public v e()
  {
    return this.d;
  }
  
  public h f()
  {
    return this.c.e(0);
  }
  
  public void g()
  {
    this.d.u();
    this.c.m();
  }
  
  public void h()
  {
    this.d.v();
    this.c.n();
  }
  
  public void i()
  {
    this.d.o();
  }
  
  public boolean j()
  {
    return this.d.p();
  }
  
  public long k()
  {
    return this.c.p();
  }
  
  public void l()
  {
    if (this.d != null) {
      this.d.k();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.w
 * JD-Core Version:    0.7.0.1
 */