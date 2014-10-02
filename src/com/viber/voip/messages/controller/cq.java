package com.viber.voip.messages.controller;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.KeyguardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.e.u;
import com.viber.voip.g.a;
import com.viber.voip.h.b;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.v;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.util.gj;
import java.util.List;

public class cq
{
  public static String a = "MessageControllerUtils";
  private static final String[] b = { "com.android.camera", "com.sec.android.app.camera" };
  private static cq h = null;
  private Context c;
  private KeyguardManager d = null;
  private dk e;
  private PowerManager.WakeLock f;
  private as g;
  
  private cq(Context paramContext)
  {
    this.c = paramContext;
    this.d = ((KeyguardManager)paramContext.getSystemService("keyguard"));
    this.g = as.a();
    this.e = new dk(dc.a(com.viber.voip.dk.g));
    this.f = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(805306394, cq.class.getSimpleName());
    this.f.setReferenceCounted(false);
  }
  
  public static cq a()
  {
    try
    {
      if (h == null) {
        h = new cq(ViberApplication.getInstance());
      }
      cq localcq = h;
      return localcq;
    }
    finally {}
  }
  
  private static void a(String paramString) {}
  
  private void a(boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    a("startReceiveSound viberOnForeground:" + paramBoolean1 + " flags:" + paramInt);
    this.e.a(paramBoolean1);
    this.e.a(0, paramBoolean2);
    if (a(paramInt)) {
      if (a(paramInt)) {
        break label64;
      }
    }
    label64:
    while (!g()) {
      return;
    }
    if ((!paramBoolean1) && (ViberApplication.preferences().b(j.N(), j.O())))
    {
      String str = ViberApplication.preferences().b(j.aw(), null);
      if (str == null) {}
      for (Uri localUri = Settings.System.DEFAULT_NOTIFICATION_URI;; localUri = Uri.parse(str))
      {
        this.e.a(localUri);
        if ((str != null) && (gj.c(str))) {
          break;
        }
        this.e.a(2, paramBoolean2);
        return;
      }
    }
    this.e.a(3, paramBoolean2);
  }
  
  private boolean a(int paramInt)
  {
    return (paramInt & 0x1) != 0;
  }
  
  public static boolean a(Context paramContext)
  {
    return ViberApplication.getInstance().isOnForeground();
  }
  
  private boolean b(long paramLong)
  {
    return paramLong >= 1073741824L;
  }
  
  private boolean e()
  {
    boolean bool = this.d.inKeyguardRestrictedInputMode();
    if (((ActivityManager.RunningTaskInfo)((ActivityManager)this.c.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getShortClassName().equals(".messages.ui.ConversationActivity")) {}
    for (int i = 1;; i = 0) {
      return (i != 0) && (!bool);
    }
  }
  
  private boolean f()
  {
    return a(this.c);
  }
  
  private boolean g()
  {
    return this.e.a();
  }
  
  void a(long paramLong)
  {
    this.f.acquire(paramLong);
  }
  
  public void a(ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean)
  {
    a(paramConversationEntityImpl, paramParticipantInfoEntityImpl, paramMessageEntityImpl, paramBoolean, false);
  }
  
  public void a(ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i;
    int j;
    long l1;
    if ((paramConversationEntityImpl.isSmartNotificationOn()) && (!paramMessageEntityImpl.isNotification()))
    {
      i = 1;
      j = paramConversationEntityImpl.getUnreadMessagesCount();
      if (j <= 2) {
        break label182;
      }
      l1 = paramConversationEntityImpl.getSmartEventDate();
      label35:
      if (j != 1) {
        break label188;
      }
    }
    boolean bool2;
    label182:
    label188:
    for (boolean bool1 = true;; bool1 = false)
    {
      a("onPostMessageReceived: currentThreadMessageCount=" + j + " smartEventTime=" + l1 + " restartSmart=" + bool1);
      bool2 = ViberApplication.getInstance().getPhoneApp().a().f(paramMessageEntityImpl.getConversationId());
      a("onPostMessageReceived: skipNotification=" + bool2);
      if (((bool2) || (!paramConversationEntityImpl.isMuteNotifications())) && ((i == 0) || (l1 == 0L) || (300000L + l1 <= System.currentTimeMillis()))) {
        break label194;
      }
      a("onPostMessageReceived: Skip notification");
      return;
      i = 0;
      break;
      l1 = 0L;
      break label35;
    }
    label194:
    if ((!bool2) && (i != 0) && (l1 != 0L) && (300000L + l1 < System.currentTimeMillis()))
    {
      a("onPostMessageReceived: Restart smart notification");
      l1 = 0L;
      bool1 = true;
      paramConversationEntityImpl.setSmartEventDate(0L);
      this.g.b(paramConversationEntityImpl);
    }
    boolean bool3 = bool1;
    long l2;
    long l3;
    label274:
    boolean bool9;
    if (!bool2)
    {
      l2 = System.currentTimeMillis();
      if (i != 0) {
        break label717;
      }
      l3 = -1L;
      a("onPostMessageReceived: lastMessageSmartTime=" + l3);
      u localu = ViberApplication.getInstance().getPhoneApp().a();
      if ((i == 0) || (bool3)) {
        break label748;
      }
      bool9 = true;
      label322:
      localu.a(paramMessageEntityImpl, paramParticipantInfoEntityImpl, paramConversationEntityImpl, bool9, false, paramBoolean1, l3);
      if ((i != 0) && (!bool3) && (l1 == 0L))
      {
        paramConversationEntityImpl.setSmartEventDate(l2);
        this.g.b(paramConversationEntityImpl);
      }
    }
    boolean bool4 = ViberApplication.preferences().b(j.q(), j.r());
    if ((!ViberApplication.getInstance().getPhoneApp().f().d()) && (!paramMessageEntityImpl.isSilentMessage()) && (bool4)) {
      b();
    }
    k localk = ViberApplication.getInstance().getPhoneController(false).getCurrentCall();
    int k;
    label444:
    boolean bool8;
    label494:
    boolean bool6;
    int m;
    label547:
    int n;
    if ((localk != null) && (localk.g()))
    {
      k = 1;
      if ((!b.d().a()) && (!paramMessageEntityImpl.isSilentMessage()) && (!paramMessageEntityImpl.isSms()) && (!paramMessageEntityImpl.isCall()) && (k == 0))
      {
        if ((!e()) || (!bool2)) {
          break label760;
        }
        bool8 = true;
        a(bool8, paramMessageEntityImpl.getFlag(), paramBoolean2);
      }
      TelephonyManager localTelephonyManager = (TelephonyManager)this.c.getSystemService("phone");
      boolean bool5 = this.d.inKeyguardRestrictedInputMode();
      bool6 = f();
      if (localTelephonyManager.getCallState() != 0) {
        break label766;
      }
      m = 1;
      if (ViberApplication.getInstance().getPhoneController(false).getCurrentCall() != null) {
        break label772;
      }
      n = 1;
      label563:
      if (!ViberApplication.isTablet()) {
        break label778;
      }
      label569:
      if (0 != 0) {
        i = 0;
      }
      if ((i != 0) || (paramMessageEntityImpl.isSilentMessage()) || (paramMessageEntityImpl.isCall()) || (paramMessageEntityImpl.isNotification()) || (!ViberApplication.preferences().b(j.i(), j.j())) || ((bool6) && (!bool5)) || (m == 0) || (n == 0)) {
        break label781;
      }
    }
    label772:
    label778:
    label781:
    for (boolean bool7 = true;; bool7 = false)
    {
      a("onPostMessageReceived:enabled = " + bool7 + " , viberOnForeground = " + bool6);
      if (!bool7) {
        break;
      }
      Intent localIntent = new Intent("com.viber.voip.action.MESSAGE_POPUP");
      localIntent.setFlags(268435456);
      com.viber.voip.messages.ui.popup.PopupMessageActivity.a = true;
      this.c.startActivity(localIntent);
      return;
      label717:
      if ((i != 0) && (!bool3) && (l1 == 0L))
      {
        l3 = l2;
        break label274;
      }
      l3 = l1;
      break label274;
      label748:
      bool9 = false;
      break label322;
      k = 0;
      break label444;
      label760:
      bool8 = false;
      break label494;
      label766:
      m = 0;
      break label547;
      n = 0;
      break label563;
      break label569;
    }
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl)
  {
    String str1;
    Intent localIntent;
    String str2;
    if (paramMessageEntityImpl.isGroup())
    {
      str1 = "com.viber.voip.action.NO_LONGER_IN_GROUP_DIALOG";
      localIntent = new Intent(str1).setFlags(268435456);
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl = this.g.c(paramMessageEntityImpl.getRecipientNumber());
      if (localParticipantInfoEntityImpl == null) {
        break label115;
      }
      str2 = localParticipantInfoEntityImpl.getContactName();
      label51:
      localIntent.putExtra("sms_body", str2);
      localIntent.putExtra("address", paramMessageEntityImpl.getRecipientNumber());
      if ("text".equals(paramMessageEntityImpl.getMimeType())) {
        break label123;
      }
    }
    label115:
    label123:
    for (boolean bool = true;; bool = false)
    {
      localIntent.putExtra("disable_sms", bool);
      this.c.startActivity(localIntent);
      return;
      str1 = "com.viber.voip.action.NO_LONGER_VIBER_PROBLEM";
      break;
      str2 = "";
      break label51;
    }
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl1, MessageEntityImpl paramMessageEntityImpl2, MessageEntityImpl paramMessageEntityImpl3)
  {
    if ((paramMessageEntityImpl1 == null) || (paramMessageEntityImpl1.getMessageToken() == 0L) || (!b(paramMessageEntityImpl1.getMessageToken())) || ((paramMessageEntityImpl3 != null) && (paramMessageEntityImpl1.getMessageToken() == paramMessageEntityImpl3.getMessageToken()))) {}
    do
    {
      return;
      if ((paramMessageEntityImpl3 != null) && (paramMessageEntityImpl1.getDate() > paramMessageEntityImpl3.getDate()))
      {
        paramMessageEntityImpl1.setDate(paramMessageEntityImpl3.getDate());
        return;
      }
    } while ((paramMessageEntityImpl2 == null) || (paramMessageEntityImpl1.getDate() >= paramMessageEntityImpl2.getDate()));
    paramMessageEntityImpl1.setDate(paramMessageEntityImpl2.getDate());
  }
  
  public void b()
  {
    a(10000L);
  }
  
  public void c()
  {
    if ((g()) && (ViberApplication.preferences().b(j.at(), j.au()))) {
      this.e.a(4, false);
    }
  }
  
  public void d()
  {
    a("startSmsReceiveSound");
    a(e(), 0, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.cq
 * JD-Core Version:    0.7.0.1
 */