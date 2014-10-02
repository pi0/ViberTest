package com.viber.voip.messages.controller.c;

import android.content.Context;
import android.os.Handler;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.connection.ConnectionListener;
import com.viber.jni.ptt.PttDownloaderListener;
import com.viber.jni.ptt.PttPlayerListener;
import com.viber.jni.ptt.PttReceiverListener;
import com.viber.jni.ptt.PttRecorderListener;
import com.viber.jni.ptt.PttUploaderListener;
import com.viber.jni.publicgroup.PublicGroupControllerDelegate.InviteReceive;
import com.viber.jni.publicgroup.PublicGroupControllerDelegate.PublicGroupInfoReceiver;
import com.viber.jni.publicgroup.PublicGroupInfoReceiverListener;
import com.viber.jni.publicgroup.PublicGroupInviteReceiveListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.a.aa;
import com.viber.voip.messages.controller.a.br;
import com.viber.voip.messages.controller.a.h;
import com.viber.voip.messages.controller.a.j;
import com.viber.voip.messages.controller.a.m;
import com.viber.voip.messages.controller.a.p;
import com.viber.voip.messages.controller.ak;
import com.viber.voip.messages.controller.by;
import com.viber.voip.messages.controller.cx;
import com.viber.voip.messages.controller.dn;
import com.viber.voip.messages.controller.dp;
import com.viber.voip.messages.controller.r;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.process.k;
import com.viber.voip.settings.l;

public class c
  implements i
{
  private static c a;
  private final Context b;
  private final Handler c;
  private final Handler d;
  private final x e;
  private final GroupController f;
  private final dn g;
  private final com.viber.voip.messages.controller.a.a h;
  private final com.viber.voip.messages.controller.a.c i;
  private final m j;
  private final br k;
  private final p l;
  private final aa m;
  private final h n;
  private final b o;
  
  private c(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    this.c = dk.d.a();
    this.d = dk.e.a();
    this.o = b.a();
    com.viber.voip.messages.a.b.d().a();
    com.viber.voip.messages.a.b.d().c();
    com.viber.voip.messages.a.b.d().b();
    this.e = new ak(this.c, this.d, new by(this.b));
    this.i = new com.viber.voip.messages.controller.a.c(this.b);
    this.j = new m(this.b);
    this.l = new p(this.b, this.d);
    this.k = new br(this.b);
    this.n = new h();
    r localr = new r(this.b);
    this.f = new com.viber.voip.messages.controller.c(this.c, localr);
    this.h = new j(this.b, localr);
    this.g = new dp(this.c, this.k);
    Handler localHandler1 = this.c;
    Handler localHandler2 = this.d;
    m localm = this.j;
    com.viber.voip.messages.controller.a.a[] arrayOfa = new com.viber.voip.messages.controller.a.a[5];
    arrayOfa[0] = this.h;
    arrayOfa[1] = this.i;
    arrayOfa[2] = this.j;
    arrayOfa[3] = this.l;
    arrayOfa[4] = this.k;
    this.m = new aa(localHandler1, localHandler2, localm, arrayOfa);
    PhoneControllerListener localPhoneControllerListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager();
    localPhoneControllerListener.getPttRecorderListener().registerDelegate(this.n, this.c);
    localPhoneControllerListener.getPttUploaderListener().registerDelegate(this.n, this.c);
    localPhoneControllerListener.getPttDownloaderListener().registerDelegate(this.n, this.c);
    localPhoneControllerListener.getPttPlayerListener().registerDelegate(this.n, this.c);
    localPhoneControllerListener.getPublicGroupInviteReceiveListener().registerDelegate((PublicGroupControllerDelegate.InviteReceive)this.h, this.c);
    localPhoneControllerListener.getPublicGroupInfoReceiverListener().registerDelegate((PublicGroupControllerDelegate.PublicGroupInfoReceiver)this.h, this.c);
    localPhoneControllerListener.registerDelegate(this.m, null);
    localPhoneControllerListener.getPttReceiverListener().registerDelegate(this.m, null);
    localPhoneControllerListener.getConnectionListener().registerDelegate(this.m, null);
    this.m.a(ViberApplication.getInstance().getPhoneController(false));
    this.c.postAtFrontOfQueue(new d(this));
  }
  
  public static i a(Context paramContext)
  {
    if ((a == null) && (k.a() == k.a)) {}
    try
    {
      if (a == null) {
        a = new c(paramContext);
      }
      return a;
    }
    finally {}
  }
  
  private void f()
  {
    l locall = ViberApplication.preferences();
    if (locall.b("PREF_SHOW_COMPOSE_GROUP_PROMO", true))
    {
      boolean bool = as.a().x();
      ConversationEntityImpl localConversationEntityImpl = as.a().d();
      if ((!bool) || ((localConversationEntityImpl != null) && (System.currentTimeMillis() - localConversationEntityImpl.getDate() < 1209600000L))) {
        ViberApplication.preferences().a("PREF_SHOW_COMPOSE_GROUP_PROMO", false);
      }
    }
    if ((locall.b("PREF_SHOW_DESKTOP_PROMO_COUNT", 3) > 0) && (as.a().y())) {
      ViberApplication.preferences().a("PREF_SHOW_DESKTOP_PROMO_COUNT", 0);
    }
  }
  
  public b a()
  {
    return this.o;
  }
  
  public void a(long paramLong)
  {
    this.l.b(paramLong);
  }
  
  public void a(long paramLong, String paramString1, String paramString2)
  {
    this.l.a(paramLong, paramString1, paramString2);
  }
  
  public cx b()
  {
    return e.a();
  }
  
  public void b(long paramLong)
  {
    this.h.a(paramLong);
  }
  
  public x c()
  {
    return this.e;
  }
  
  public GroupController d()
  {
    return this.f;
  }
  
  public dn e()
  {
    return this.g;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.c
 * JD-Core Version:    0.7.0.1
 */