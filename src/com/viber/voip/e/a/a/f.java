package com.viber.voip.e.a.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat.Builder;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.viber.voip.ViberApplication;
import com.viber.voip.e.u;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.de;
import com.viber.voip.messages.extras.image.k;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;
import com.viber.voip.phone.v;
import com.viber.voip.stickers.ba;
import com.viber.voip.stickers.bb;
import com.viber.voip.stickers.r;
import com.viber.voip.util.b.w;
import com.viber.voip.util.hv;
import com.viber.voip.util.l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class f
  extends e
  implements com.viber.voip.e.a.a, de
{
  private static final int e;
  private Bitmap f = Bitmap.createBitmap(e, e / 2, Bitmap.Config.ARGB_8888);
  private HashSet<Long> g = new HashSet();
  private a h;
  
  static
  {
    if (Build.MODEL.equalsIgnoreCase("sgp321")) {}
    for (float f1 = 550.0F;; f1 = 450.0F)
    {
      e = com.viber.voip.messages.extras.image.h.a(f1);
      return;
    }
  }
  
  public f(Context paramContext)
  {
    super(paramContext);
    com.viber.voip.messages.controller.c.e.a().a(this);
    this.h = new a(paramContext);
  }
  
  private Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, MessageEntityImpl paramMessageEntityImpl, Bitmap paramBitmap, PendingIntent paramPendingIntent)
  {
    try
    {
      com.viber.voip.stickers.c.a locala = r.a().l((int)paramMessageEntityImpl.getObjectId());
      Object localObject;
      if (locala.j())
      {
        Picture localPicture = r.a().e().a(locala.l, locala.m, locala.u, true, ba.a);
        localObject = Bitmap.createBitmap(locala.l, locala.m, Bitmap.Config.ARGB_8888);
        new Canvas((Bitmap)localObject).drawPicture(localPicture);
      }
      for (;;)
      {
        Bitmap localBitmap2 = new k((Bitmap)localObject, -2, -2).a(this.f, true, 1.0F);
        return a(paramCharSequence2, paramCharSequence1, 2130838517, paramCharSequence3, "", paramCharSequence2, paramMessageEntityImpl.getDate(), paramBitmap, localBitmap2, paramPendingIntent).build();
        Bitmap localBitmap1 = r.a().d().a(locala, false, true, ba.a).a();
        localObject = localBitmap1;
      }
      return a(paramCharSequence2, paramCharSequence1, 2130838517, paramCharSequence3, "", paramMessageEntityImpl.getDate(), paramBitmap, paramPendingIntent).build();
    }
    catch (NullPointerException localNullPointerException) {}
  }
  
  private Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, MessageEntityImpl paramMessageEntityImpl, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, Bitmap paramBitmap, PendingIntent paramPendingIntent)
  {
    NotificationCompat.Builder localBuilder = a(paramCharSequence2, paramCharSequence1, 2130838517, paramCharSequence3, "", paramMessageEntityImpl.getDate(), paramBitmap, paramPendingIntent);
    Bundle localBundle = new Bundle();
    localBundle.putLong("notif_extra_ptt_message_id_for_playing", paramMessageEntityImpl.getId());
    return this.h.a(localBuilder, paramConversationEntityImpl.getId(), paramConversationEntityImpl.getGroupId(), paramConversationEntityImpl.getConversationType(), paramParticipantInfoEntityImpl, localBundle).build();
  }
  
  private Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, MessageEntityImpl paramMessageEntityImpl, ConversationEntityImpl paramConversationEntityImpl, String paramString, Bitmap paramBitmap, PendingIntent paramPendingIntent, Intent paramIntent)
  {
    CharSequence localCharSequence1 = a(paramCharSequence2, paramConversationEntityImpl.isConversationGroup(), paramMessageEntityImpl.getDescription(), paramString);
    CharSequence localCharSequence2 = this.d.f(paramCharSequence2.toString(), paramMessageEntityImpl.getDescription());
    String str = paramMessageEntityImpl.getBody();
    boolean bool = TextUtils.isEmpty(str);
    Bitmap localBitmap = null;
    if (!bool) {
      localBitmap = w.a(this.a, Uri.parse(str), false);
    }
    NotificationCompat.Builder localBuilder = a(localCharSequence2, paramCharSequence1, 2130838517, paramCharSequence3, "", localCharSequence1, paramMessageEntityImpl.getDate(), paramBitmap, localBitmap, paramPendingIntent);
    return this.h.a(localBuilder, paramIntent).build();
  }
  
  private Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean, String paramString, Bitmap paramBitmap, PendingIntent paramPendingIntent)
  {
    Bitmap localBitmap = w.a(Uri.parse(com.viber.voip.messages.extras.map.d.a(paramMessageEntityImpl, e, e / 2)), false, true, -2, e / 4 - com.viber.voip.messages.extras.map.d.a());
    String str = a(paramMessageEntityImpl.getLat(), paramMessageEntityImpl.getLng());
    if (paramBoolean) {
      str = this.d.d(paramString, str).toString();
    }
    long l = paramMessageEntityImpl.getDate();
    return a(str, paramCharSequence1, 2130838517, paramCharSequence3, "", str, l, paramBitmap, localBitmap, paramPendingIntent).build();
  }
  
  private Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, long paramLong1, int paramInt, long paramLong2, boolean paramBoolean1, boolean paramBoolean2, Bitmap paramBitmap, PendingIntent paramPendingIntent, boolean paramBoolean3)
  {
    if (paramInt == 1)
    {
      int i;
      if (paramBoolean3)
      {
        i = 2130838290;
        if (paramInt != 1) {
          break label58;
        }
      }
      label58:
      for (String str = "";; str = "" + paramInt)
      {
        return a(paramCharSequence2, paramCharSequence1, i, paramCharSequence3, str, "Viber", paramLong2, paramBitmap, paramCharSequence2, paramPendingIntent).build();
        i = 2130838517;
        break;
      }
    }
    return null;
  }
  
  private Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, long paramLong1, int paramInt1, boolean paramBoolean1, long paramLong2, int paramInt2, Bitmap paramBitmap, PendingIntent paramPendingIntent, boolean paramBoolean2)
  {
    as localas = as.a();
    if (paramBoolean1)
    {
      List localList = as.a().p(paramLong1);
      int j;
      String[] arrayOfString;
      int k;
      label46:
      String str5;
      boolean bool;
      label121:
      String str6;
      if (localList.size() > 10)
      {
        j = 10;
        arrayOfString = new String[j];
        k = 0;
        if (k >= j) {
          break label214;
        }
        str5 = a((MessageEntityImpl)localList.get(k));
        if (paramInt2 == 0) {
          break label204;
        }
        ParticipantInfoEntityImpl localParticipantInfoEntityImpl = localas.j(((MessageEntityImpl)localList.get(k)).getParticipantId());
        StringBuilder localStringBuilder = new StringBuilder().append("prepareAggregatedMessagesNotification: participantInfo is null:");
        if (localParticipantInfoEntityImpl != null) {
          break label191;
        }
        bool = true;
        a(bool);
        l locall = this.d;
        if (localParticipantInfoEntityImpl == null) {
          break label197;
        }
        str6 = localParticipantInfoEntityImpl.getCommonContactName(true);
        label154:
        arrayOfString[k] = locall.d(str6, str5).toString();
      }
      for (;;)
      {
        k++;
        break label46;
        j = localList.size();
        break;
        label191:
        bool = false;
        break label121;
        label197:
        str6 = "";
        break label154;
        label204:
        arrayOfString[k] = str5;
      }
      label214:
      int m;
      if (paramBoolean2)
      {
        m = 2130838290;
        if (paramInt1 != 1) {
          break label267;
        }
      }
      label267:
      for (String str4 = "";; str4 = "" + paramInt1)
      {
        return a(paramCharSequence2, paramCharSequence1, m, paramCharSequence3, str4, "Viber", paramLong2, paramBitmap, arrayOfString, paramPendingIntent).build();
        m = 2130838517;
        break;
      }
    }
    d locald = b();
    Context localContext = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    String str1 = localContext.getString(2131493570, arrayOfObject);
    String str2 = locald.b;
    Bitmap localBitmap = a(2130838218, (Uri[])locald.a.toArray(new Uri[locald.a.size()]));
    int i;
    if (paramBoolean2)
    {
      i = 2130838290;
      if (paramInt1 != 1) {
        break label423;
      }
    }
    label423:
    for (String str3 = "";; str3 = "" + paramInt1)
    {
      return a(str2, str1, i, paramCharSequence3, str3, paramLong2, localBitmap, paramPendingIntent).build();
      i = 2130838517;
      break;
    }
  }
  
  private CharSequence a(CharSequence paramCharSequence, boolean paramBoolean, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return paramCharSequence;
    }
    if (paramBoolean) {
      return this.d.d(paramString2, paramString1.toString());
    }
    return paramString1;
  }
  
  private String a(MessageEntityImpl paramMessageEntityImpl)
  {
    String str;
    if (("text".equals(paramMessageEntityImpl.getMimeType())) || ("sms".equals(paramMessageEntityImpl.getMimeType()))) {
      if (u.d) {
        str = paramMessageEntityImpl.getBody();
      }
    }
    do
    {
      do
      {
        do
        {
          return str;
          return this.a.getString(u.a.get(0));
          if ("sticker".equals(paramMessageEntityImpl.getMimeType())) {
            return this.a.getString(u.a.get(4));
          }
          if (!"location".equals(paramMessageEntityImpl.getMimeType())) {
            break;
          }
          str = this.a.getString(u.a.get(5));
        } while (!u.d);
        return this.d.d(str, a(paramMessageEntityImpl.getLat(), paramMessageEntityImpl.getLng())).toString();
        if (!"image".equals(paramMessageEntityImpl.getMimeType())) {
          break;
        }
        str = this.a.getString(u.a.get(1));
      } while (!u.d);
      return this.d.f(str, paramMessageEntityImpl.getDescription()).toString();
      if (!"video".equals(paramMessageEntityImpl.getMimeType())) {
        break;
      }
      str = this.a.getString(u.a.get(3));
    } while (!u.d);
    return this.d.f(str, paramMessageEntityImpl.getDescription()).toString();
    if ("animated_message".equals(paramMessageEntityImpl.getMimeType())) {
      return this.a.getString(u.a.get(6));
    }
    if ("sound".equals(paramMessageEntityImpl.getMimeType())) {
      return this.a.getString(u.a.get(2));
    }
    return "NO_TEXT";
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "ViberExpandableNotificationFactory", paramString);
  }
  
  private Notification b(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean, String paramString, Bitmap paramBitmap, PendingIntent paramPendingIntent)
  {
    String str = paramMessageEntityImpl.getMediaUri();
    if (!TextUtils.isEmpty(str)) {}
    CharSequence localCharSequence2;
    for (Bitmap localBitmap = w.a(this.a, Uri.parse(str), false);; localBitmap = null)
    {
      if ((localBitmap != null) && (localBitmap.getWidth() < e) && (localBitmap.getHeight() < e / 2)) {
        localBitmap = new k(localBitmap, -2, -2).a(this.f);
      }
      CharSequence localCharSequence1 = a(paramCharSequence2, paramBoolean, paramMessageEntityImpl.getDescription(), paramString);
      localCharSequence2 = this.d.f(paramCharSequence2.toString(), paramMessageEntityImpl.getDescription());
      if (localBitmap == null) {
        break;
      }
      return a(localCharSequence2, paramCharSequence1, 2130838517, paramCharSequence3, "", localCharSequence1, paramMessageEntityImpl.getDate(), paramBitmap, localBitmap, paramPendingIntent).build();
      this.g.add(Long.valueOf(paramMessageEntityImpl.getMessageToken()));
    }
    return a(localCharSequence2, paramCharSequence1, 2130838517, paramCharSequence3, "", paramMessageEntityImpl.getDate(), paramBitmap, paramPendingIntent).build();
  }
  
  public Notification a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, boolean paramBoolean1, boolean paramBoolean2, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntityImpl paramConversationEntityImpl, MessageEntityImpl paramMessageEntityImpl, Intent paramIntent, int paramInt2)
  {
    paramIntent.putExtra("popup_action_id", 11);
    PendingIntent localPendingIntent = a(paramIntent, paramInt2);
    boolean bool1 = paramConversationEntityImpl.isConversationGroup();
    boolean bool2 = paramMessageEntityImpl.isRakutenSystemMessage();
    if (!paramBoolean2)
    {
      localObject = null;
      if (!paramBoolean1) {}
    }
    else
    {
      if (!paramConversationEntityImpl.isPublicGroup()) {
        break label137;
      }
    }
    label137:
    Bitmap localBitmap;
    for (Object localObject = b(hv.b(as.a().b(paramConversationEntityImpl.getGroupId()).getIconId()), 2130838219);; localObject = localBitmap)
    {
      a("createMessageNotification: sShowPreview=" + u.d);
      if (!paramBoolean2) {
        break label202;
      }
      return a(paramCharSequence2, paramCharSequence1, 2130838517, paramCharSequence3, "", paramMessageEntityImpl.getDate(), (Bitmap)localObject, localPendingIntent).build();
      if (!bool1) {
        break;
      }
      localBitmap = a(paramConversationEntityImpl.getId(), paramParticipantInfoEntityImpl);
    }
    Uri localUri = paramParticipantInfoEntityImpl.getCommonContactImage(bool1);
    if (bool2) {}
    for (int i = 2130838289;; i = 2130838219)
    {
      localBitmap = b(localUri, i);
      break;
    }
    label202:
    if ((paramInt1 > 1) && ((u.d) || (!paramBoolean1))) {
      return a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramConversationEntityImpl.getId(), paramInt1, paramBoolean1, paramMessageEntityImpl.getDate(), paramConversationEntityImpl.getConversationType(), (Bitmap)localObject, localPendingIntent, bool2);
    }
    if (u.d)
    {
      if (("text".equals(paramMessageEntityImpl.getMimeType())) || ("sms".equals(paramMessageEntityImpl.getMimeType()))) {
        return a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramConversationEntityImpl.getId(), paramInt1, paramMessageEntityImpl.getDate(), paramBoolean2, paramBoolean1, (Bitmap)localObject, localPendingIntent, bool2);
      }
      if ("sticker".equals(paramMessageEntityImpl.getMimeType())) {
        return a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt1, paramMessageEntityImpl, (Bitmap)localObject, localPendingIntent);
      }
      if ("location".equals(paramMessageEntityImpl.getMimeType())) {
        return a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt1, paramMessageEntityImpl, bool1, paramParticipantInfoEntityImpl.getCommonContactName(bool1), (Bitmap)localObject, localPendingIntent);
      }
      if ("image".equals(paramMessageEntityImpl.getMimeType())) {
        return b(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt1, paramMessageEntityImpl, bool1, paramParticipantInfoEntityImpl.getCommonContactName(bool1), (Bitmap)localObject, localPendingIntent);
      }
      if (("video".equals(paramMessageEntityImpl.getMimeType())) || ("animated_message".equals(paramMessageEntityImpl.getMimeType()))) {
        return a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt1, paramMessageEntityImpl, paramConversationEntityImpl, paramParticipantInfoEntityImpl.getCommonContactName(bool1), (Bitmap)localObject, localPendingIntent, new Intent(paramIntent));
      }
      if ("sound".equals(paramMessageEntityImpl.getMimeType())) {
        return a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt1, paramMessageEntityImpl, paramConversationEntityImpl, paramParticipantInfoEntityImpl, (Bitmap)localObject, localPendingIntent);
      }
    }
    else
    {
      String str1;
      NotificationCompat.Builder localBuilder;
      if (paramInt1 == 1)
      {
        str1 = "";
        localBuilder = a(paramCharSequence2, paramCharSequence1, 2130838517, paramCharSequence3, str1, paramMessageEntityImpl.getDate(), (Bitmap)localObject, localPendingIntent);
        if (!"video".equals(paramMessageEntityImpl.getMimeType())) {
          break label616;
        }
        this.h.a(localBuilder, new Intent(paramIntent));
      }
      for (;;)
      {
        return localBuilder.build();
        str1 = "" + paramInt1;
        break;
        label616:
        if ("sound".equals(paramMessageEntityImpl.getMimeType()))
        {
          Bundle localBundle = new Bundle();
          localBundle.putLong("notif_extra_ptt_message_id_for_playing", paramMessageEntityImpl.getId());
          this.h.a(localBuilder, paramConversationEntityImpl.getId(), paramConversationEntityImpl.getGroupId(), paramConversationEntityImpl.getConversationType(), paramParticipantInfoEntityImpl, localBundle);
        }
      }
    }
    if (paramInt1 == 1) {}
    for (String str2 = "";; str2 = "" + paramInt1) {
      return a(paramCharSequence2, paramCharSequence1, 2130838517, paramCharSequence3, str2, "Viber", paramMessageEntityImpl.getDate(), (Bitmap)localObject, paramCharSequence2, localPendingIntent).build();
    }
  }
  
  public NotificationCompat.Builder a(ConversationEntityImpl paramConversationEntityImpl, Bitmap paramBitmap, String paramString)
  {
    NotificationCompat.Builder localBuilder = super.a(paramConversationEntityImpl, paramBitmap, paramString);
    Context localContext = this.a;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = paramConversationEntityImpl.getGroupName();
    return localBuilder.setStyle(a("", localContext.getString(2131494579, arrayOfObject)));
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence, long paramLong, com.viber.voip.contacts.b.b paramb, String paramString, Intent paramIntent)
  {
    a("CreateJoinedContactNotification: contentText = " + paramCharSequence + " contentTitle = " + paramb.a() + " ticker = " + paramb.a() + " photoContactUri = " + paramb.b());
    NotificationCompat.Builder localBuilder = super.a(paramCharSequence, paramLong, paramb, paramString, paramIntent).setStyle(a(null, paramCharSequence));
    this.h.a(localBuilder, paramb.getId(), paramString);
    Bundle localBundle = new Bundle();
    localBundle.putLong("notif_extra_message", paramb.getId());
    this.h.a(localBuilder, paramb.getId(), paramb.c(), paramString, paramb.a(), paramb.b(), localBundle);
    return localBuilder;
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, boolean paramBoolean, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, long paramLong, Intent paramIntent, int paramInt2)
  {
    NotificationCompat.Builder localBuilder = super.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt1, paramBoolean, paramParticipantInfoEntityImpl, paramLong, paramIntent, paramInt2);
    if (paramBoolean)
    {
      this.h.a(localBuilder, paramParticipantInfoEntityImpl.getContactId(), paramParticipantInfoEntityImpl.getNumber());
      this.h.a(localBuilder, paramParticipantInfoEntityImpl.getContactId(), paramParticipantInfoEntityImpl.getNativeContactId(), paramParticipantInfoEntityImpl.getNumber(), paramParticipantInfoEntityImpl.getDispalyName(), paramParticipantInfoEntityImpl.getCommonContactImage(false));
      return localBuilder.setStyle(a(null, paramCharSequence2));
    }
    List localList = as.a().n();
    int i;
    String[] arrayOfString;
    int j;
    label128:
    ConversationEntityImpl localConversationEntityImpl;
    String str1;
    label202:
    StringBuilder localStringBuilder2;
    if (localList.size() > 10)
    {
      i = 10;
      arrayOfString = new String[i];
      j = 0;
      if (j >= i) {
        break label304;
      }
      localConversationEntityImpl = as.a().c(((MessageEntityImpl)localList.get(j)).getConversationId());
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl = as.a().j(((MessageEntityImpl)localList.get(j)).getParticipantId());
      StringBuilder localStringBuilder1 = new StringBuilder();
      if (localParticipantInfoEntityImpl == null) {
        break label262;
      }
      str1 = localParticipantInfoEntityImpl.getCommonContactName();
      localStringBuilder2 = localStringBuilder1.append(str1);
      if ((localConversationEntityImpl != null) && (localConversationEntityImpl.getUnreadCallsCount() != 1)) {
        break label269;
      }
    }
    label262:
    label269:
    for (String str2 = "";; str2 = " (" + localConversationEntityImpl.getUnreadCallsCount() + ")")
    {
      arrayOfString[j] = str2;
      j++;
      break label128;
      i = localList.size();
      break;
      str1 = "";
      break label202;
    }
    label304:
    return localBuilder.setStyle(a("Viber", arrayOfString));
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, long paramLong, String paramString, List<ParticipantInfoEntityImpl> paramList, Intent paramIntent, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((ParticipantInfoEntityImpl)localIterator.next()).getCommonContactName());
    }
    if (localArrayList.size() == 0) {}
    for (CharSequence localCharSequence = paramCharSequence2;; localCharSequence = this.d.a(localArrayList, paramString)) {
      return super.a(paramCharSequence1, localCharSequence, paramCharSequence3, paramLong, paramString, paramList, paramIntent, paramInt).setStyle(a("Viber", localCharSequence));
    }
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, long paramLong, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    return super.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramIntent, paramInt, paramLong, paramParticipantInfoEntityImpl).setStyle(a("Viber", paramCharSequence2));
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    return super.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramIntent, paramInt, paramConversationEntityImpl, paramParticipantInfoEntityImpl).setStyle(a("Viber", paramCharSequence2));
  }
  
  public NotificationCompat.Builder a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Intent paramIntent, int paramInt)
  {
    return super.a(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramBitmap, paramIntent, paramInt).setStyle(a("Viber", paramCharSequence2));
  }
  
  public void a(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean) {}
  
  public void a(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    if (this.g.contains(Long.valueOf(paramLong2)))
    {
      MessageEntityImpl localMessageEntityImpl = as.a().k(paramLong2);
      if ((localMessageEntityImpl != null) && (!TextUtils.isEmpty(localMessageEntityImpl.getMediaUri())))
      {
        a("onChange: message exist messageToken=" + paramLong2);
        this.g.remove(Long.valueOf(paramLong2));
        ViberApplication.getInstance().getPhoneApp().a().e(localMessageEntityImpl.getId());
      }
    }
  }
  
  public void a(String paramString, boolean paramBoolean) {}
  
  public void a(Set<Long> paramSet, boolean paramBoolean) {}
  
  public NotificationCompat.Builder b(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Intent paramIntent, int paramInt, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl)
  {
    return super.b(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramIntent, paramInt, paramConversationEntityImpl, paramParticipantInfoEntityImpl).setStyle(a("", paramCharSequence2));
  }
  
  public void b(Set<Long> paramSet, boolean paramBoolean) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.a.a.f
 * JD-Core Version:    0.7.0.1
 */