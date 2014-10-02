package com.viber.voip.messages.conversation.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.text.ClipboardManager;
import android.text.TextUtils;
import com.viber.jni.OnlineContactInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.lastonline.LastOnlineDelegate;
import com.viber.jni.lastonline.LastOnlineListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.du;
import com.viber.voip.messages.extras.fb.af;
import com.viber.voip.messages.i;
import com.viber.voip.messages.ui.MessageComposerView;
import com.viber.voip.messages.ui.ParticipantsCallChooser;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.util.at;
import com.viber.voip.util.bj;
import com.viber.voip.util.gk;
import com.viber.voip.util.gn;
import com.viber.voip.util.gv;
import com.viber.voip.util.hd;
import com.viber.voip.util.hm;
import com.viber.voip.util.hs;
import com.viber.voip.util.hu;
import com.viber.voip.util.w;
import java.util.HashMap;
import java.util.List;

public class m
{
  private static final String a = m.class.getSimpleName();
  private static boolean k = false;
  private ba b;
  private final Resources c;
  private final ConversationFragment d;
  private final i e;
  private final com.viber.voip.messages.a.a f;
  private final com.viber.voip.messages.extras.fb.s g;
  private com.viber.voip.messages.conversation.h h;
  private String i = "";
  private boolean j;
  private final Handler l = dc.a(dk.a);
  private af m = new n(this);
  private du n = new s(this);
  private hs o = new t(this);
  private HashMap<String, ct> p = new HashMap();
  private HashMap<String, ab> q = new HashMap();
  private ac r;
  private final PhoneControllerDelegateAdapter s = new u(this);
  private final LastOnlineDelegate t = new v(this);
  
  public m(ConversationFragment paramConversationFragment)
  {
    this.d = paramConversationFragment;
    this.c = ViberApplication.getInstance().getResources();
    this.e = ViberApplication.getInstance().getMessagesManager();
    this.f = ViberApplication.getInstance().getParticipantManager();
    this.g = ViberApplication.getInstance().getFacebookManager();
    this.g.a(this.m);
    this.j = ViberApplication.preferences().b(j.Y(), j.Z());
    hm.a(this.o);
    com.viber.voip.stickers.r.a().n();
  }
  
  private void a(Context paramContext, long paramLong1, boolean paramBoolean, long paramLong2, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    at.a(paramContext, paramInt1, paramContext.getResources().getString(paramInt2), new r(this, paramString, paramContext, paramLong1, paramLong2), null, paramInt3, false);
  }
  
  private void a(OnlineContactInfo paramOnlineContactInfo)
  {
    if (paramOnlineContactInfo != null) {
      this.d.a(w.a(paramOnlineContactInfo.isOnLine, paramOnlineContactInfo.time));
    }
  }
  
  private void a(CharSequence paramCharSequence, boolean paramBoolean)
  {
    this.l.post(new x(this, paramCharSequence, paramBoolean));
  }
  
  private void a(String paramString, Runnable paramRunnable)
  {
    ViberApplication.getInstance().getContactManager().a(paramString, new aa(this, paramString, paramRunnable));
  }
  
  private void e(String paramString) {}
  
  private boolean o()
  {
    return this.d instanceof com.viber.voip.messages.ui.chathead.a.b;
  }
  
  public String a()
  {
    return this.i;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    Context localContext = this.d.D();
    if (localContext == null) {
      return;
    }
    at.a(localContext, paramInt1, paramInt2, null);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    Context localContext = this.d.D();
    if (localContext != null) {
      at.a(localContext, paramInt1, localContext.getString(paramInt2), new q(this), null, paramInt3, false);
    }
  }
  
  public void a(long paramLong1, long paramLong2, String paramString1, Uri paramUri, String paramString2)
  {
    FragmentActivity localFragmentActivity = this.d.getActivity();
    if (localFragmentActivity != null)
    {
      gn.a(localFragmentActivity, ViberApplication.isTablet(), paramLong1, paramLong2, paramString1, "", paramUri, paramString2);
      return;
    }
    gn.a(this.d.D(), ViberApplication.isTablet(), paramLong1, paramLong2, paramString1, "", paramUri, paramString2);
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama)
  {
    this.d.c(parama);
  }
  
  public void a(com.viber.voip.messages.conversation.h paramh)
  {
    this.h = paramh;
    this.i = gk.b(this.h);
    if ((this.j) && (this.h != null) && (!this.h.l()) && (!i()))
    {
      e("sendHandleGetLastOnline lastOnlineEnabled:" + this.j);
      this.e.c().a(this.h.e());
    }
  }
  
  public void a(ConversationData paramConversationData)
  {
    if ((!TextUtils.isEmpty(paramConversationData.k)) && (this.j)) {
      a(ViberApplication.getInstance().getCachedOnlineContactInfo(paramConversationData.k));
    }
    this.i = gk.a(paramConversationData);
  }
  
  public void a(ba paramba)
  {
    this.b = paramba;
  }
  
  public void a(String paramString)
  {
    String str = hd.a(ViberApplication.getInstance(), paramString, paramString);
    hd.a(ViberApplication.getInstance(), paramString, new o(this, str));
  }
  
  public void a(String paramString1, String paramString2, Uri paramUri, String paramString3)
  {
    FragmentActivity localFragmentActivity = this.d.getActivity();
    if (localFragmentActivity != null)
    {
      gn.a(localFragmentActivity, ViberApplication.isTablet(), paramString1, paramString2, paramUri, true, paramString3);
      return;
    }
    gn.a(this.d.D(), ViberApplication.isTablet(), paramString1, paramString2, paramUri, true, paramString3);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    if (this.h == null) {}
    do
    {
      return;
      if ((this.h.l()) && (paramString != null)) {
        try
        {
          ab localab = (ab)this.q.get(paramString);
          if (localab != null)
          {
            this.l.removeCallbacks(localab);
            this.l.post(localab);
          }
          return;
        }
        finally {}
      }
    } while (paramBoolean);
    try
    {
      if (this.r != null)
      {
        this.l.removeCallbacks(this.r);
        this.l.post(this.r);
      }
      return;
    }
    finally {}
  }
  
  public void a(List<Long> paramList)
  {
    this.d.a(paramList);
  }
  
  public void a(boolean paramBoolean)
  {
    this.b.h.c();
    String str = e();
    if (h())
    {
      localIntent = new Intent(this.d.D(), ParticipantsCallChooser.class);
      localIntent.putExtra("thread_id", b());
      this.d.startActivity(localIntent);
    }
    while (TextUtils.isEmpty(str))
    {
      Intent localIntent;
      return;
    }
    a(str, new z(this, str, new y(this, str, paramBoolean)));
  }
  
  public boolean a(Context paramContext, long paramLong, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Parameter must not be null");
    }
    int i1;
    if (paramBoolean2)
    {
      i1 = 2131493949;
      if (!paramBoolean2) {
        break label70;
      }
    }
    label70:
    for (int i2 = 2131493951;; i2 = 2131494121)
    {
      String str = com.viber.voip.messages.extras.image.h.a(paramContext, Uri.parse(paramString2));
      if (str == null) {
        break label129;
      }
      if (!bj.a(paramContext, str)) {
        break label78;
      }
      return true;
      i1 = 2131494120;
      break;
    }
    label78:
    if (paramBoolean1) {
      a(paramContext, this.h.a(), this.h.l(), paramLong, paramString1, i1, 2131493952, 2131494119);
    }
    for (;;)
    {
      return false;
      at.a(paramContext, i1, 2131493953, null);
      continue;
      label129:
      a(paramContext, this.h.a(), this.h.l(), paramLong, paramString1, i1, i2, 2131494119);
    }
  }
  
  public long b()
  {
    return this.h.a();
  }
  
  public void b(com.viber.voip.messages.conversation.a.a.a parama)
  {
    Context localContext = this.d.D();
    if (localContext == null) {
      return;
    }
    boolean bool = parama.p();
    String str1 = parama.e();
    String str2 = parama.H();
    if (("image".equals(str1)) && (str2 == null) && (bool))
    {
      a(2131494117, 2131494118, 2131494119);
      return;
    }
    if (("image".equals(str1)) && (!bj.a(localContext, str2)))
    {
      if (bool)
      {
        a(2131494117, 2131493952, 2131494119);
        return;
      }
      a(2131494117, 2131493953);
      return;
    }
    if (parama.x())
    {
      Intent localIntent1 = new Intent("com.viber.voip.action.INVITE_TO_PUBLIC_GROUP");
      localIntent1.putExtra("thread_id", b());
      localIntent1.putExtra("extra_group_id", parama.ag());
      localIntent1.putExtra("extra_group_name", parama.y());
      this.d.startActivity(localIntent1);
      return;
    }
    Intent localIntent2 = new Intent("com.viber.voip.action.ACTION_FORWARD").putExtra("default_message_id", parama.a());
    this.d.startActivity(localIntent2);
  }
  
  public void b(String paramString)
  {
    Context localContext = this.d.D();
    if (localContext == null) {
      return;
    }
    ((ClipboardManager)localContext.getSystemService("clipboard")).setText(paramString);
  }
  
  public void b(String paramString, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", hd.a(ViberApplication.getInstance(), paramString, paramString), null));
    localIntent.setFlags(268435456);
    if (paramBoolean) {
      localIntent.putExtra("viber_out", true);
    }
    if (f() != null) {
      localIntent.putExtra("prev_action", f().a());
    }
    ViberApplication.getInstance().startActivity(localIntent);
  }
  
  public long c()
  {
    return this.h.d();
  }
  
  public void c(String paramString)
  {
    Context localContext = this.d.D();
    Intent localIntent = gv.c(localContext, paramString);
    if (this.d.getActivity() != null)
    {
      this.d.startActivity(localIntent);
      return;
    }
    localContext.startActivity(localIntent);
  }
  
  public String d()
  {
    if (this.h != null) {
      return this.h.i();
    }
    return this.d.g().h;
  }
  
  public void d(String paramString)
  {
    if (this.h != null) {
      this.e.c().a(this.h.a(), paramString);
    }
  }
  
  public String e()
  {
    if (this.h != null) {
      return this.h.e();
    }
    return this.d.g().k;
  }
  
  public com.viber.voip.a.m f()
  {
    return this.d.l();
  }
  
  public boolean g()
  {
    return this.h != null;
  }
  
  public boolean h()
  {
    return (this.h != null) && (this.h.l());
  }
  
  public boolean i()
  {
    if (this.h != null) {
      return this.h.n();
    }
    return false;
  }
  
  public boolean j()
  {
    return this.h.o();
  }
  
  public void k()
  {
    ViberApplication.getInstance().registerMediaMountListener(this.n);
    com.viber.voip.stickers.r.a().r();
    ViberApplication.getInstance().getLocationManager().a();
    if ((this.d instanceof com.viber.voip.messages.ui.chathead.a.b)) {
      hu.a().a(true);
    }
    hm.a(this.o);
    ViberApplication.getInstance().getPhoneController(false).registerDelegate(this.s);
    LastOnlineListener localLastOnlineListener = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getLastOnlineListener();
    LastOnlineDelegate[] arrayOfLastOnlineDelegate = new LastOnlineDelegate[1];
    arrayOfLastOnlineDelegate[0] = this.t;
    localLastOnlineListener.registerDelegate(arrayOfLastOnlineDelegate);
  }
  
  public void l()
  {
    ViberApplication.getInstance().unregisterMediaMountListener(this.n);
    ViberApplication.getInstance().getPhoneController(false).removeDelegate(this.s);
    ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getLastOnlineListener().removeDelegate(this.t);
  }
  
  public void m()
  {
    com.viber.voip.stickers.r.a().o();
    this.d.v();
    this.g.b(this.m);
    hm.a(null);
    if (!k)
    {
      ViberApplication.getInstance().getPhoneApp().c();
      return;
    }
    k = false;
  }
  
  public void n()
  {
    FragmentActivity localFragmentActivity = this.d.getActivity();
    if (localFragmentActivity != null)
    {
      if (ViberApplication.isTablet()) {}
      for (String str2 = "com.viber.voip.action.YOU_DIALOG";; str2 = "com.viber.voip.action.YOU")
      {
        localFragmentActivity.startActivity(new Intent(str2));
        return;
      }
    }
    if (ViberApplication.isTablet()) {}
    for (String str1 = "com.viber.voip.action.YOU_DIALOG";; str1 = "com.viber.voip.action.YOU")
    {
      Intent localIntent = new Intent(str1);
      localIntent.addFlags(268435456);
      this.d.D().sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP"));
      this.d.D().startActivity(localIntent);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.m
 * JD-Core Version:    0.7.0.1
 */