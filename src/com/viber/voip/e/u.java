package com.viber.voip.e;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompat.Builder;
import android.util.SparseIntArray;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.e.a.a.e;
import com.viber.voip.e.a.a.f;
import com.viber.voip.e.a.a.h;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.ConversationEntity;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;
import com.viber.voip.messages.ui.g;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.registration.cp;
import com.viber.voip.settings.l;
import com.viber.voip.util.gj;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.util.hv;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class u
  extends PhoneControllerDelegateAdapter
  implements g, com.viber.voip.settings.m
{
  public static SparseIntArray a = new SparseIntArray();
  static SparseIntArray b = new SparseIntArray();
  static SparseIntArray c = new SparseIntArray();
  public static boolean d;
  private static u e;
  private static boolean i;
  private ViberApplication f;
  private NotificationManager g;
  private com.viber.voip.e.a.a h;
  private long j = 0L;
  private int k = 0;
  private int l = 0;
  private Map<Long, List<ParticipantInfoEntityImpl>> m = new HashMap();
  private HashSet<Long> n = new HashSet();
  private long o = -1L;
  private long p = -1L;
  private long q = -1L;
  private boolean r;
  private String[] s;
  private as t;
  private ac u;
  private Handler v;
  private com.viber.voip.util.b.w w;
  private q x = new v(this);
  private Runnable y;
  
  static
  {
    b.put(0, 2131493593);
    b.put(1, 2131493595);
    b.put(3, 2131493596);
    b.put(6, 2131493597);
    b.put(2, 2131493598);
    b.put(4, 2131493599);
    b.put(5, 2131493594);
    b.put(11, 2131494104);
    b.put(12, 2131493810);
    b.put(-5, 2131494596);
    a.put(0, 2131493600);
    a.put(1, 2131493602);
    a.put(3, 2131493603);
    a.put(6, 2131493604);
    a.put(2, 2131493605);
    a.put(4, 2131493606);
    a.put(5, 2131493601);
    a.put(11, 2131494104);
    a.put(12, 2131493810);
    a.put(-5, 2131494596);
    c.put(0, 2131493586);
    c.put(1, 2131493588);
    c.put(3, 2131493589);
    c.put(6, 2131493590);
    c.put(2, 2131493591);
    c.put(4, 2131493592);
    c.put(5, 2131493587);
  }
  
  private u(ViberApplication paramViberApplication)
  {
    this.f = paramViberApplication;
    this.g = ((NotificationManager)this.f.getSystemService("notification"));
    this.v = dc.a(dk.d);
    this.w = com.viber.voip.util.b.w.a(paramViberApplication);
    this.u = new ac();
    this.t = as.a();
    this.s = this.f.getResources().getStringArray(2131623939);
    ViberApplication.preferences().a(this);
    a.a().a(this.x);
    i();
    n();
    try
    {
      i = ViberApplication.preferences().b(com.viber.voip.settings.j.y(), com.viber.voip.settings.j.z());
      e("setServiceContext showNotification:" + i);
      d = ViberApplication.preferences().b(com.viber.voip.settings.j.k(), com.viber.voip.settings.j.l());
      j();
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      int i1 = ViberApplication.preferences().b(com.viber.voip.settings.j.y(), 0);
      e("setServiceContext ClassCastException:" + localClassCastException + ",showNotification:" + i1);
      if (i1 != 1) {}
    }
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      break;
    }
  }
  
  private Notification a(ConversationEntityImpl paramConversationEntityImpl)
  {
    PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = this.t.b(paramConversationEntityImpl.getGroupId());
    com.viber.voip.contacts.b.b localb = ViberApplication.getInstance().getContactManager().b(localPublicGroupConversationEntityImpl.getInviter());
    if (localb != null) {}
    for (String str = localb.a();; str = localPublicGroupConversationEntityImpl.getInviter())
    {
      Uri localUri = hv.b(localPublicGroupConversationEntityImpl.getIconId());
      Bitmap localBitmap = com.viber.voip.util.b.w.a(this.f, localUri, false);
      return this.h.a(paramConversationEntityImpl, localBitmap, str).build();
    }
  }
  
  private Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, MessageEntityImpl paramMessageEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntityImpl paramConversationEntityImpl, int paramInt, boolean paramBoolean, String paramString)
  {
    String str1;
    String str2;
    label35:
    String str3;
    label104:
    Intent localIntent;
    label116:
    Notification localNotification;
    if (gj.c(paramConversationEntityImpl.getGroupName()))
    {
      str1 = this.f.getString(2131494051);
      if (!paramConversationEntityImpl.isConversationGroup()) {
        break label189;
      }
      str2 = str1;
      if (((com.viber.voip.messages.j.a(paramMessageEntityImpl.getMimeType()) != 1) && (com.viber.voip.messages.j.a(paramMessageEntityImpl.getMimeType()) != 3) && (com.viber.voip.messages.j.a(paramMessageEntityImpl.getMimeType()) != 6)) || (this.u.e() != 1) || (paramBoolean)) {
        break label211;
      }
      if (!paramConversationEntityImpl.isConversationGroup()) {
        break label200;
      }
      str3 = com.viber.voip.a.a.o.a();
      localIntent = a(paramMessageEntityImpl, str3, str2);
      a(localIntent);
      if (com.viber.voip.messages.j.a(paramMessageEntityImpl.getMimeType()) != 12) {
        break label230;
      }
      localNotification = this.h.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, this.u.i(), this.u.j(), paramParticipantInfoEntityImpl, paramMessageEntityImpl.getDate(), localIntent, paramInt).build();
    }
    label189:
    label200:
    label211:
    label230:
    boolean bool;
    do
    {
      return localNotification;
      str1 = paramConversationEntityImpl.getGroupName();
      break;
      str2 = paramParticipantInfoEntityImpl.getCommonContactName(false);
      break label35;
      str3 = com.viber.voip.a.a.n.a();
      break label104;
      localIntent = a(paramMessageEntityImpl, paramParticipantInfoEntityImpl, paramConversationEntityImpl, paramBoolean, paramString);
      break label116;
      if (com.viber.voip.messages.j.a(paramMessageEntityImpl.getMimeType()) != 10) {
        break label516;
      }
      if ("rename".equals(paramString)) {
        return this.h.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, localIntent, paramInt, paramConversationEntityImpl, paramParticipantInfoEntityImpl).build();
      }
      if ("you_join".equals(paramString))
      {
        if ((paramConversationEntityImpl.isPublicGroup()) && ("you_join".equals(paramString))) {
          return a(paramConversationEntityImpl);
        }
        return this.h.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramConversationEntityImpl.getId(), str1, (List)this.m.get(Long.valueOf(paramMessageEntityImpl.getConversationId())), localIntent, paramInt).build();
      }
      if ("join".equals(paramString)) {
        return this.h.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramConversationEntityImpl.getId(), str1, (List)this.m.get(Long.valueOf(paramMessageEntityImpl.getConversationId())), localIntent, paramInt).build();
      }
      if ("pg_join".equals(paramString)) {
        return a(paramCharSequence1.toString(), paramCharSequence2.toString(), paramConversationEntityImpl, paramMessageEntityImpl, localIntent, paramInt);
      }
      if (("group_icon_changed".equals(paramString)) || ("group_background_changed".equals(paramString))) {
        break label492;
      }
      bool = "group_many_attrs_changed".equals(paramString);
      localNotification = null;
    } while (!bool);
    label492:
    return this.h.b(paramCharSequence1, paramCharSequence2, paramCharSequence3, localIntent, paramInt, paramConversationEntityImpl, paramParticipantInfoEntityImpl).build();
    label516:
    if (com.viber.voip.messages.j.a(paramMessageEntityImpl.getMimeType()) == -5) {
      return this.h.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, localIntent, paramInt, paramConversationEntityImpl.getId(), paramParticipantInfoEntityImpl).build();
    }
    return this.h.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, this.u.e(), this.u.g(), paramBoolean, paramParticipantInfoEntityImpl, paramConversationEntityImpl, paramMessageEntityImpl, localIntent, paramInt);
  }
  
  private Notification a(String paramString1, String paramString2, ConversationEntityImpl paramConversationEntityImpl, MessageEntityImpl paramMessageEntityImpl, Intent paramIntent, int paramInt)
  {
    Uri localUri = hv.b(this.t.b(paramConversationEntityImpl.getGroupId()).getIconId());
    Bitmap localBitmap = com.viber.voip.util.b.w.a(this.f, localUri, false);
    return this.h.a(paramString1, paramString2, paramString2, localBitmap, paramIntent, paramInt).build();
  }
  
  private Intent a(MessageEntityImpl paramMessageEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntity paramConversationEntity, boolean paramBoolean, String paramString)
  {
    int i1;
    long l1;
    long l2;
    String str1;
    label52:
    int i2;
    long l3;
    label70:
    long l4;
    if (com.viber.voip.messages.j.a(paramMessageEntityImpl.getMimeType()) == 12) {
      if (this.u.j())
      {
        i1 = 1;
        if (i1 == 0) {
          break label177;
        }
        l1 = paramMessageEntityImpl.getConversationId();
        l2 = paramMessageEntityImpl.getGroupId();
        if (paramParticipantInfoEntityImpl == null) {
          break label153;
        }
        str1 = paramParticipantInfoEntityImpl.getNumber();
        i2 = paramConversationEntity.getConversationType();
        if (paramParticipantInfoEntityImpl == null) {
          break label159;
        }
        l3 = paramParticipantInfoEntityImpl.getContactId();
        if (paramParticipantInfoEntityImpl == null) {
          break label165;
        }
        l4 = paramParticipantInfoEntityImpl.getNativeContactId();
        label80:
        if (paramParticipantInfoEntityImpl == null) {
          break label171;
        }
      }
    }
    label153:
    label159:
    label165:
    label171:
    for (String str2 = paramParticipantInfoEntityImpl.getContactName();; str2 = null)
    {
      return com.viber.voip.messages.j.a(l1, l2, str1, i2, l3, l4, str2, true);
      i1 = 0;
      break;
      if ((this.u.g()) || (paramBoolean) || (paramString.equals("join")))
      {
        i1 = 1;
        break;
      }
      i1 = 0;
      break;
      str1 = null;
      break label52;
      l3 = 0L;
      break label70;
      l4 = 0L;
      break label80;
    }
    label177:
    return new Intent("com.viber.voip.action.MESSAGES");
  }
  
  public static u a()
  {
    if (e == null) {}
    try
    {
      if (e == null) {
        e = new u(ViberApplication.getInstance());
      }
      return e;
    }
    finally {}
  }
  
  private String a(String paramString1, String paramString2)
  {
    String str = "";
    if (gj.c(paramString2)) {
      str = this.f.getString(2131493610, new Object[] { paramString1 });
    }
    while (!gj.c(str))
    {
      return str;
      String[] arrayOfString = this.s;
      int i1 = arrayOfString.length;
      for (int i2 = 0; i2 < i1; i2++) {
        if (paramString2.equalsIgnoreCase(arrayOfString[i2])) {
          str = this.f.getString(2131493607, new Object[] { paramString1, paramString2 });
        }
      }
    }
    if (paramString2.equalsIgnoreCase("BlackBerry")) {
      return this.f.getString(2131493608, new Object[] { paramString1, paramString2 });
    }
    if (paramString2.equalsIgnoreCase("WP")) {
      return this.f.getString(2131493608, new Object[] { paramString1, "Windows Phone" });
    }
    if (paramString2.equalsIgnoreCase("Bada")) {
      return this.f.getString(2131493608, new Object[] { paramString1, "Samsung Bada" });
    }
    if ((paramString2.equalsIgnoreCase("Windows 8")) || (paramString2.equalsIgnoreCase("Mac"))) {
      return this.f.getString(2131493609, new Object[] { paramString1, paramString2 });
    }
    if ((paramString2.equalsIgnoreCase("PC")) || (paramString2.equalsIgnoreCase("Windows PC"))) {
      return this.f.getString(2131493609, new Object[] { paramString1, "a Windows PC" });
    }
    return this.f.getString(2131493610, new Object[] { paramString1 });
  }
  
  private void a(long paramLong, boolean paramBoolean)
  {
    try
    {
      this.g.notify(124791207, this.h.a(b(paramLong, paramBoolean), m(), b(paramBoolean), true).build());
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void a(Context paramContext)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).notify(321, new NotificationCompat.Builder(paramContext).setContentTitle(paramContext.getString(2131494447)).setContentText(paramContext.getString(2131494448)).setSmallIcon(2130838333).setContentIntent(PendingIntent.getActivity(paramContext, 0, new Intent("android.intent.action.VIEW").setData(Uri.parse("market://details?id=" + paramContext.getPackageName())), 0)).build());
  }
  
  public static void a(Intent paramIntent)
  {
    paramIntent.putExtra("from_notification", 1);
  }
  
  private void a(PhoneControllerDelegate.ViberConnectionState paramViberConnectionState)
  {
    e("onServiceStateChanged updateServiceStatus:" + paramViberConnectionState + ",showNotification:" + i);
    if (i)
    {
      int i1 = ab.a[paramViberConnectionState.ordinal()];
      Object localObject = null;
      switch (i1)
      {
      }
      for (;;)
      {
        if (localObject != null)
        {
          Intent localIntent2 = new Intent("com.viber.voip.action.VIBER_SERVICE_FOREGROUND");
          localIntent2.putExtra("notification", (Parcelable)localObject);
          localIntent2.putExtra("notification_id", 124791207);
          this.f.startService(localIntent2);
        }
        return;
        localObject = this.h.a(this.f.getText(2131493748), 2130838514).build();
        continue;
        localObject = this.h.a(this.f.getText(2131493747), 2130838512).build();
        continue;
        localObject = this.h.a(this.f.getText(2131493746), 2130838513).build();
      }
    }
    Intent localIntent1 = new Intent("com.viber.voip.action.VIBER_SERVICE_BACKGROUND");
    this.f.startService(localIntent1);
  }
  
  private void a(MessageEntityImpl paramMessageEntityImpl, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    if ((paramMessageEntityImpl != null) && (paramConversationEntityImpl != null) && (paramParticipantInfoEntityImpl != null))
    {
      e("recreateSmartNotification: showMessageNotification");
      a(paramMessageEntityImpl, paramParticipantInfoEntityImpl, paramConversationEntityImpl, true, true, false, -1L);
    }
  }
  
  private int b(boolean paramBoolean)
  {
    if (paramBoolean) {
      return 2130838515;
    }
    return 2130838511;
  }
  
  private String b(long paramLong, boolean paramBoolean)
  {
    if (paramBoolean) {
      return this.f.getString(2131493906);
    }
    ViberApplication localViberApplication = this.f;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = com.viber.voip.w.b.format(Long.valueOf(paramLong));
    return localViberApplication.getString(2131493845, arrayOfObject);
  }
  
  private void b(MessageEntityImpl paramMessageEntityImpl, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    if ((paramMessageEntityImpl != null) && (paramConversationEntityImpl != null) && (paramParticipantInfoEntityImpl != null))
    {
      e("restoreNotificationMessage: showMessageNotification");
      a(paramMessageEntityImpl, paramParticipantInfoEntityImpl, paramConversationEntityImpl, false, true, false, -1L);
    }
  }
  
  private void b(MessageEntityImpl paramMessageEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntityImpl paramConversationEntityImpl, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, long paramLong)
  {
    this.n.add(Long.valueOf(paramConversationEntityImpl.getId()));
    ad localad = new ad(this.f.getResources(), paramMessageEntityImpl, paramParticipantInfoEntityImpl, paramConversationEntityImpl, paramBoolean1, paramBoolean3);
    String str1 = localad.a();
    CharSequence localCharSequence1 = localad.b();
    CharSequence localCharSequence2 = localad.c();
    ViberApplication localViberApplication1;
    Object[] arrayOfObject1;
    if (("join".equals(localad.d())) || (("you_join".equals(localad.d())) && (!paramConversationEntityImpl.isPublicGroup())))
    {
      Object localObject1 = (List)this.m.get(Long.valueOf(paramMessageEntityImpl.getConversationId()));
      if (localObject1 == null)
      {
        localObject1 = new LinkedList();
        this.m.put(Long.valueOf(paramMessageEntityImpl.getConversationId()), localObject1);
      }
      String[] arrayOfString = paramMessageEntityImpl.getBody().split("/");
      String str2 = ViberApplication.getInstance().getRegistrationValues().f();
      if ((arrayOfString.length > 1) && (str2 != null) && (!str2.equals(arrayOfString[1]))) {
        ((List)localObject1).add(paramParticipantInfoEntityImpl);
      }
      if (((List)localObject1).size() <= 1) {
        break label499;
      }
      localViberApplication1 = this.f;
      arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(((List)localObject1).size());
      arrayOfObject1[1] = paramConversationEntityImpl.getGroupName();
    }
    label465:
    label499:
    for (Object localObject2 = localViberApplication1.getString(2131493581, arrayOfObject1);; localObject2 = localCharSequence1)
    {
      Object localObject3 = str1;
      Object localObject4 = localObject2;
      for (;;)
      {
        Notification localNotification = a((CharSequence)localObject3, (CharSequence)localObject4, localCharSequence2, paramMessageEntityImpl, paramParticipantInfoEntityImpl, paramConversationEntityImpl, localad.e(), paramBoolean1, localad.d());
        if (localNotification == null) {}
        for (;;)
        {
          return;
          if (!paramBoolean1)
          {
            if (!paramBoolean2)
            {
              d(paramLong, false);
              this.k = this.u.e();
              if (paramLong != -1L) {
                this.g.cancel("smart", (int)paramMessageEntityImpl.getConversationId());
              }
              this.l = this.u.i();
            }
            if ((this.l > 1) && ("call".equals(paramMessageEntityImpl.getMimeType())))
            {
              ViberApplication localViberApplication2 = this.f;
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = Integer.valueOf(this.u.i());
              String str3 = localViberApplication2.getString(2131493560, arrayOfObject2);
              localObject4 = localCharSequence1;
              localObject3 = str3;
              break;
              if (paramBoolean2) {
                localNotification.tickerText = null;
              }
              try
              {
                this.g.notify(localad.d(), localad.e(), localNotification);
                if ((paramBoolean1) && (!paramBoolean2))
                {
                  c(paramLong, false);
                  return;
                }
              }
              catch (Exception localException)
              {
                break label465;
              }
            }
          }
        }
        localObject3 = str1;
        localObject4 = localCharSequence1;
      }
    }
  }
  
  private void b(String paramString)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CALL");
    a(localIntent);
    this.g.notify(124791207, this.h.a(this.f.getString(2131493843), paramString, 2130838253, localIntent).build());
  }
  
  public static boolean b(Intent paramIntent)
  {
    return paramIntent.getIntExtra("from_notification", 0) == 1;
  }
  
  private void c(long paramLong, boolean paramBoolean)
  {
    e("updateViberSmsNotification: lastMessageSmartDate=" + paramLong);
    d(paramLong, paramBoolean);
    this.k = this.u.e();
    this.l = this.u.i();
    e("updateViberSmsNotification: messagesCount=" + this.k + " missedCallsCount=" + this.l);
    if (this.k == 0) {
      this.g.cancel("message", -3);
    }
    if (this.l == 0) {
      this.g.cancel("missed_call", -3);
    }
    if ((this.l != 0) || (this.k != 0)) {
      o();
    }
  }
  
  private void c(String paramString)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CALL");
    a(localIntent);
    this.g.notify(124791207, this.h.a(this.f.getString(2131493844), paramString, 2130838281, localIntent).build());
  }
  
  private void d(long paramLong, boolean paramBoolean)
  {
    e(paramLong, paramBoolean);
    g(paramLong);
  }
  
  private void d(String paramString)
  {
    try
    {
      e("onCallInProgress() contactName=" + paramString);
      k();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void e(long paramLong, boolean paramBoolean)
  {
    List localList = this.t.l();
    LinkedList localLinkedList = new LinkedList();
    HashMap localHashMap = new HashMap();
    int i1 = localList.size();
    int i2 = 0;
    Object localObject1;
    ConversationEntityImpl localConversationEntityImpl;
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl;
    if (i1 != 0)
    {
      localObject1 = (MessageEntityImpl)localList.get(0);
      if (localObject1 == null) {
        break label557;
      }
      localConversationEntityImpl = this.t.c(((MessageEntityImpl)localObject1).getConversationId());
      localParticipantInfoEntityImpl = this.t.j(((MessageEntityImpl)localObject1).getParticipantId());
    }
    for (;;)
    {
      int i3 = 0;
      Object localObject2 = localParticipantInfoEntityImpl;
      Object localObject3 = localConversationEntityImpl;
      label101:
      Object localObject4;
      Object localObject5;
      label155:
      Object localObject6;
      Object localObject7;
      if (i3 < i1)
      {
        localObject4 = (MessageEntityImpl)localList.get(i3);
        e("getNotificationInfo" + localObject4);
        if (i3 == 0)
        {
          localObject5 = localObject3;
          if (localObject5 != null) {
            break label213;
          }
          localObject4 = localObject1;
          localObject6 = localObject2;
          localObject7 = localObject3;
        }
      }
      for (;;)
      {
        i3++;
        localObject2 = localObject6;
        localObject3 = localObject7;
        localObject1 = localObject4;
        break label101;
        localObject1 = null;
        break;
        localObject5 = this.t.c(((MessageEntityImpl)localObject4).getConversationId());
        break label155;
        label213:
        int i4 = this.t.x(((ConversationEntityImpl)localObject5).getId());
        boolean bool2 = ((ConversationEntityImpl)localObject5).isSmartNotificationOn();
        long l2;
        label264:
        int i5;
        if (bool2)
        {
          long l1 = ((MessageEntityImpl)localObject4).getDate();
          if ((localObject1 == localObject4) && (paramLong != -1L))
          {
            l2 = paramLong;
            if ((l2 != 0L) || (l1 - l2 < 300000L) || (l2 > l1)) {
              break label392;
            }
            localLinkedList.add(Long.valueOf(((MessageEntityImpl)localObject4).getConversationId()));
            i5 = i2 + i4;
            localHashMap.put(Long.valueOf(((MessageEntityImpl)localObject4).getConversationId()), new t(i4, (MessageEntityImpl)localObject4, bool2));
            label341:
            i2 = i5;
          }
        }
        for (;;)
        {
          if (!paramBoolean)
          {
            localObject6 = this.t.j(((MessageEntityImpl)localObject4).getParticipantId());
            localObject7 = localObject5;
            break;
            if (i4 == 1)
            {
              l2 = 0L;
              break label264;
            }
            l2 = ((ConversationEntityImpl)localObject5).getSmartEventDate();
            break label264;
            label392:
            if (paramBoolean) {
              a((MessageEntityImpl)localObject4, (ConversationEntityImpl)localObject5, this.t.j(((MessageEntityImpl)localObject4).getParticipantId()));
            }
            i5 = i2;
            break label341;
            localLinkedList.add(Long.valueOf(((MessageEntityImpl)localObject4).getConversationId()));
            i2 += i4;
            localHashMap.put(Long.valueOf(((MessageEntityImpl)localObject4).getConversationId()), new t(i4, (MessageEntityImpl)localObject4, bool2));
            continue;
            if (localLinkedList.size() > 1) {}
            for (boolean bool1 = false;; bool1 = true)
            {
              this.u.a((MessageEntityImpl)localObject1);
              this.u.a(i2);
              this.u.a(bool1);
              this.u.a((ConversationEntityImpl)localObject3);
              this.u.a((ParticipantInfoEntityImpl)localObject2);
              return;
            }
          }
        }
        localObject4 = localObject1;
        localObject6 = localObject2;
        localObject7 = localObject3;
      }
      label557:
      localParticipantInfoEntityImpl = null;
      localConversationEntityImpl = null;
    }
  }
  
  private static void e(String paramString)
  {
    ViberApplication.log(3, "Notifier", paramString);
  }
  
  private void g(long paramLong)
  {
    List localList = this.t.n();
    int i1 = localList.size();
    MessageEntityImpl localMessageEntityImpl1;
    ConversationEntityImpl localConversationEntityImpl1;
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl1;
    if (i1 != 0)
    {
      localMessageEntityImpl1 = (MessageEntityImpl)localList.get(0);
      if (localMessageEntityImpl1 == null) {
        break label224;
      }
      ConversationEntityImpl localConversationEntityImpl3 = this.t.c(localMessageEntityImpl1.getConversationId());
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl2 = this.t.j(localMessageEntityImpl1.getParticipantId());
      localConversationEntityImpl1 = localConversationEntityImpl3;
      localParticipantInfoEntityImpl1 = localParticipantInfoEntityImpl2;
    }
    for (;;)
    {
      int i2 = 0;
      int i3 = 0;
      label80:
      if (i2 < i1)
      {
        MessageEntityImpl localMessageEntityImpl2 = (MessageEntityImpl)localList.get(i2);
        ConversationEntityImpl localConversationEntityImpl2;
        if (i2 == 0)
        {
          localConversationEntityImpl2 = localConversationEntityImpl1;
          label109:
          if (localConversationEntityImpl2 == null) {
            break label157;
          }
        }
        for (int i4 = localConversationEntityImpl2.getUnreadCallsCount();; i4 = 0)
        {
          i3 += i4;
          i2++;
          break label80;
          localMessageEntityImpl1 = null;
          break;
          localConversationEntityImpl2 = this.t.c(localMessageEntityImpl2.getConversationId());
          break label109;
        }
      }
      label157:
      boolean bool = false;
      if (i1 > 1) {}
      for (;;)
      {
        this.u.b(localMessageEntityImpl1);
        this.u.b(i3);
        this.u.b(bool);
        this.u.b(localConversationEntityImpl1);
        this.u.b(localParticipantInfoEntityImpl1);
        return;
        bool = true;
      }
      label224:
      localParticipantInfoEntityImpl1 = null;
      localConversationEntityImpl1 = null;
    }
  }
  
  private void i()
  {
    if (gl.g())
    {
      e("initNotificationFactory: Expandable notification type");
      this.h = new f(this.f);
      return;
    }
    if (gl.b())
    {
      e("initNotificationFactory: Advanced notification type");
      this.h = new e(this.f);
      return;
    }
    e("initNotificationFactory: Simple notification type");
    this.h = new h(this.f);
  }
  
  private void j()
  {
    a(this.f.getPhoneController(false).getServiceState());
  }
  
  private void k()
  {
    Intent localIntent1 = new Intent("com.viber.voip.action.CALL");
    a(localIntent1);
    Notification localNotification = this.h.a(b(0L, false), m(), b(false), localIntent1).build();
    if (!i)
    {
      Intent localIntent2 = new Intent("com.viber.voip.action.VIBER_SERVICE_FOREGROUND");
      localIntent2.putExtra("notification", localNotification);
      localIntent2.putExtra("notification_id", 124791207);
      this.f.startService(localIntent2);
      return;
    }
    this.g.notify(124791207, localNotification);
  }
  
  private void l()
  {
    e("onCallIdle , changing the icon");
    if (i)
    {
      e("onCallIdle , service icon will be shown");
      j();
      return;
    }
    e("onCallIdle , hiding the icon");
    if (!i)
    {
      Intent localIntent = new Intent("com.viber.voip.action.VIBER_SERVICE_BACKGROUND");
      this.f.startService(localIntent);
    }
    this.g.cancel(124791207);
  }
  
  private String m()
  {
    k localk = this.f.getPhoneController(false).getCurrentCall();
    if ((localk != null) && (localk.g())) {
      return localk.c().a();
    }
    return "";
  }
  
  private void n()
  {
    boolean bool = ViberApplication.isActivated();
    e("prepareNotifications: isActivated=" + bool);
    if (ViberApplication.isActivated()) {
      this.v.post(new y(this));
    }
  }
  
  private void o()
  {
    if ((this.u.f() != null) && (this.u.a() != null) && (this.u.b() != null))
    {
      e("recreateNotification: showMessageNotification");
      a(this.u.f(), this.u.b(), this.u.a(), false, true, false, -1L);
    }
    if ((this.u.h() != null) && (this.u.c() != null) && (this.u.d() != null))
    {
      e("recreateNotification: showMissedCallNotification");
      a(this.u.h(), this.u.d(), this.u.c(), false, true, false, -1L);
    }
  }
  
  private void p()
  {
    e("restoreSystemNotificaitons");
    List localList = this.t.m();
    int i1 = localList.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      MessageEntityImpl localMessageEntityImpl = (MessageEntityImpl)localList.get(i2);
      b(localMessageEntityImpl, this.t.c(localMessageEntityImpl.getConversationId()), this.t.j(localMessageEntityImpl.getParticipantId()));
    }
  }
  
  public Intent a(MessageEntityImpl paramMessageEntityImpl, String paramString1, String paramString2)
  {
    Intent localIntent = gn.a(paramMessageEntityImpl.getConversationId(), paramMessageEntityImpl.getId(), paramString2, paramString1);
    localIntent.putExtra("navigated_to_conversation_on_back", true);
    return localIntent;
  }
  
  public void a(long paramLong)
  {
    try
    {
      e("notifyConversationActive: conversationId=" + paramLong);
      this.q = paramLong;
      this.p = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl)
  {
    String str1 = paramMessageEntityImpl.getRecipientNumber();
    List localList = this.t.n(paramMessageEntityImpl.getConversationId());
    ConversationEntityImpl localConversationEntityImpl = this.t.c(paramMessageEntityImpl.getConversationId());
    if (!gj.c(str1)) {}
    for (ParticipantInfoEntityImpl localParticipantInfoEntityImpl = this.t.c(paramMessageEntityImpl.getRecipientNumber()); localConversationEntityImpl == null; localParticipantInfoEntityImpl = null) {
      return;
    }
    String str2;
    String str3;
    int i1;
    label130:
    String str4;
    if (localConversationEntityImpl.isConversationGroup()) {
      if (gj.c(localConversationEntityImpl.getGroupName()))
      {
        str2 = this.f.getString(2131494051);
        str3 = this.f.getString(2131493913);
        ViberApplication localViberApplication = this.f;
        if ((localList == null) || (localList.size() <= 1)) {
          break label297;
        }
        i1 = 2131493911;
        str4 = localViberApplication.getString(i1, new Object[] { str2 });
        if (localParticipantInfoEntityImpl == null) {
          break label305;
        }
      }
    }
    label297:
    label305:
    for (Intent localIntent = com.viber.voip.messages.j.a(paramMessageEntityImpl.getConversationId(), paramMessageEntityImpl.getGroupId(), localParticipantInfoEntityImpl.getNumber(), localConversationEntityImpl.getConversationType(), localParticipantInfoEntityImpl.getContactId(), localParticipantInfoEntityImpl.getNativeContactId(), localParticipantInfoEntityImpl.getContactName(), true);; localIntent = com.viber.voip.messages.j.a(paramMessageEntityImpl.getConversationId(), paramMessageEntityImpl.getGroupId(), null, localConversationEntityImpl.getConversationType(), -1L, -1L, null, true))
    {
      NotificationManager localNotificationManager = this.g;
      int i2 = (int)paramMessageEntityImpl.getConversationId();
      com.viber.voip.e.a.a locala = this.h;
      int i3 = localList.size();
      localNotificationManager.notify("message", i2, locala.a(str4, str3, localParticipantInfoEntityImpl, localConversationEntityImpl, i3, localIntent).build());
      return;
      str2 = localConversationEntityImpl.getGroupName();
      break;
      if ((localParticipantInfoEntityImpl != null) && (!gj.c(localParticipantInfoEntityImpl.getCommonContactName())))
      {
        str2 = localParticipantInfoEntityImpl.getCommonContactName();
        break;
      }
      str2 = paramMessageEntityImpl.getRecipientNumber();
      break;
      i1 = 2131493910;
      break label130;
    }
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntityImpl paramConversationEntityImpl, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, long paramLong)
  {
    if (this.y != null) {
      this.v.removeCallbacks(this.y);
    }
    this.y = new x(this, paramMessageEntityImpl, paramParticipantInfoEntityImpl, paramConversationEntityImpl, paramBoolean1, paramBoolean2, paramBoolean3, paramLong);
    Handler localHandler = this.v;
    Runnable localRunnable = this.y;
    if ((paramConversationEntityImpl.isConversationGroup()) && (!paramConversationEntityImpl.isPublicGroup())) {}
    for (long l1 = 1000L;; l1 = 0L)
    {
      localHandler.postDelayed(localRunnable, l1);
      return;
    }
  }
  
  public void a(Set<Long> paramSet)
  {
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext()) {
      d(((Long)localIterator.next()).longValue());
    }
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      e("setConversationShowed: showed=" + paramBoolean);
      this.r = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    ViberApplication.getInstance().getContactManager().a(paramString1, new w(this, paramString2));
  }
  
  public void b()
  {
    this.g.notify(-4, this.h.a().build());
  }
  
  public void b(long paramLong)
  {
    try
    {
      e("notyfyActiveConversationRemoved: previous active conversationId=" + paramLong);
      this.q = -1L;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void c()
  {
    this.g.cancel(-3);
  }
  
  public void c(long paramLong)
  {
    if (paramLong == this.o) {
      this.g.cancel(-5);
    }
  }
  
  public void d()
  {
    this.g.cancel(-5);
    this.o = -1L;
  }
  
  public void d(long paramLong)
  {
    this.v.post(new z(this, paramLong));
  }
  
  public long e()
  {
    return this.o;
  }
  
  public void e(long paramLong)
  {
    this.v.post(new aa(this, paramLong));
  }
  
  public void f()
  {
    this.g.cancelAll();
  }
  
  /* Error */
  public boolean f(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 1023	com/viber/voip/e/u:r	Z
    //   6: ifeq +24 -> 30
    //   9: aload_0
    //   10: getfield 121	com/viber/voip/e/u:q	J
    //   13: lstore 5
    //   15: lload 5
    //   17: lload_1
    //   18: lcmp
    //   19: ifne +11 -> 30
    //   22: iconst_1
    //   23: istore 4
    //   25: aload_0
    //   26: monitorexit
    //   27: iload 4
    //   29: ireturn
    //   30: iconst_0
    //   31: istore 4
    //   33: goto -8 -> 25
    //   36: astore_3
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_3
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	u
    //   0	41	1	paramLong	long
    //   36	4	3	localObject	Object
    //   23	9	4	bool	boolean
    //   13	3	5	l1	long
    // Exception table:
    //   from	to	target	type
    //   2	15	36	finally
  }
  
  /* Error */
  public long g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 223	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   9: ldc_w 1050
    //   12: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_0
    //   16: getfield 1023	com/viber/voip/e/u:r	Z
    //   19: invokevirtual 233	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   22: ldc_w 1052
    //   25: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: aload_0
    //   29: getfield 121	com/viber/voip/e/u:q	J
    //   32: invokevirtual 759	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   35: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 239	com/viber/voip/e/u:e	(Ljava/lang/String;)V
    //   41: aload_0
    //   42: getfield 1023	com/viber/voip/e/u:r	Z
    //   45: ifeq +12 -> 57
    //   48: aload_0
    //   49: getfield 121	com/viber/voip/e/u:q	J
    //   52: lstore_2
    //   53: aload_0
    //   54: monitorexit
    //   55: lload_2
    //   56: lreturn
    //   57: ldc2_w 114
    //   60: lstore_2
    //   61: goto -8 -> 53
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	u
    //   64	4	1	localObject	Object
    //   52	9	2	l1	long
    // Exception table:
    //   from	to	target	type
    //   2	53	64	finally
  }
  
  public long h()
  {
    try
    {
      long l1 = this.p;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    a(PhoneControllerDelegate.ViberConnectionState.resolveEnum(paramInt));
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    int i1 = 1;
    if (paramString.equals(com.viber.voip.settings.j.y())) {}
    while (!paramString.equals(com.viber.voip.settings.j.k()))
    {
      try
      {
        i = paraml.b(com.viber.voip.settings.j.y(), com.viber.voip.settings.j.z());
        e("onSharedPreferenceChanged showNotification:" + i);
        j();
        return;
      }
      catch (ClassCastException localClassCastException)
      {
        int i2 = paraml.b(com.viber.voip.settings.j.y(), 0);
        e("onSharedPreferenceChanged ClassCastException:" + localClassCastException + ",showNotification:" + i2);
        if (i2 != i1) {}
      }
      for (;;)
      {
        i = i1;
        break;
        i1 = 0;
      }
    }
    d = paraml.b(com.viber.voip.settings.j.k(), com.viber.voip.settings.j.l());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.u
 * JD-Core Version:    0.7.0.1
 */