package com.viber.voip.messages.controller.a;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.viber.jni.CGroupAttributesChanged;
import com.viber.jni.ClientMessages.DeviceTypes;
import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PublicGroupChangeEvent;
import com.viber.jni.PublicGroupMessage;
import com.viber.jni.PublicGroupUserInfo;
import com.viber.jni.ptt.PttController;
import com.viber.jni.ptt.PttControllerDelegate.Receiver;
import com.viber.provider.messages.b.g;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ai;
import com.viber.voip.a.aj;
import com.viber.voip.a.bc;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.b.c;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.ce;
import com.viber.voip.messages.controller.cq;
import com.viber.voip.messages.controller.cr;
import com.viber.voip.messages.controller.cv;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.h;
import com.viber.voip.messages.i;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;
import com.viber.voip.registration.ActivateSecondaryActivity;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class m
  extends a
  implements PttControllerDelegate.Receiver
{
  private static final String c = m.class.getSimpleName();
  private Context d;
  private cq e;
  private cr f;
  private final ce g;
  
  public m(Context paramContext)
  {
    this.d = paramContext;
    this.e = cq.a();
    this.f = new cr(paramContext);
    this.g = new ce(paramContext, dc.a(dk.d));
  }
  
  private cv a(MessageEntityImpl paramMessageEntityImpl, String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    cr localcr = this.f;
    boolean bool1;
    cv localcv;
    if (!paramMessageEntityImpl.isSyncedMessage())
    {
      bool1 = true;
      localcv = localcr.a(paramMessageEntityImpl, paramString, bool1);
      if ((localcv.b) && (paramMessageEntityImpl.isPublicGroup())) {
        this.f.a(paramMessageEntityImpl.getMessageToken(), paramMessageEntityImpl.getConversationId());
      }
      if (((localcv.a) || (localcv.b)) && (!paramMessageEntityImpl.isSyncedMessage()))
      {
        boolean bool2;
        if (localcv.e != null)
        {
          boolean bool3 = localcv.e.getContactId() < 0L;
          bool2 = false;
          if (bool3) {}
        }
        else
        {
          bool2 = true;
        }
        this.b.handleSendMessageReceivedAck(paramMessageEntityImpl.getMessageToken(), bool2);
      }
      if ((localcv.b) && (paramMessageEntityImpl.isIncoming()) && (!paramMessageEntityImpl.isRead()) && (!paramMessageEntityImpl.isPublicWatcher())) {
        this.e.a(localcv.d, localcv.e, localcv.f, localcv.c, true);
      }
      if (localcv.b)
      {
        if ((!this.g.a(paramMessageEntityImpl)) || ((!"image".equals(paramMessageEntityImpl.getMimeType())) && (!"video".equals(paramMessageEntityImpl.getMimeType())) && (!"animated_message".equals(paramMessageEntityImpl.getMimeType())) && (!"animated_message_cache".equals(paramMessageEntityImpl.getMimeType())))) {
          break label283;
        }
        ViberApplication.getInstance().getMessagesManager().c().a(paramMessageEntityImpl.getId());
      }
    }
    label283:
    while (!"sound".equals(paramMessageEntityImpl.getMimeType()))
    {
      return localcv;
      bool1 = false;
      break;
    }
    this.b.getPttController().handleDownloadPtt(paramMessageEntityImpl.getDownloadId());
    return localcv;
  }
  
  private void a(int paramInt, com.viber.voip.a.m paramm)
  {
    switch (paramInt)
    {
    case 2: 
    default: 
      return;
    case 0: 
      bc.a().a(paramm.g.a(aj.a));
      return;
    case 5: 
      bc.a().a(paramm.g.a(aj.e));
      return;
    case 4: 
      bc.a().a(paramm.g.a(aj.d));
      return;
    case 1: 
      bc.a().a(paramm.g.a(aj.b));
      return;
    }
    bc.a().a(paramm.g.a(aj.c));
  }
  
  private void a(ConversationEntityImpl paramConversationEntityImpl, PublicGroupChangeEvent[] paramArrayOfPublicGroupChangeEvent, long paramLong, int paramInt)
  {
    c localc = new c();
    int i = paramArrayOfPublicGroupChangeEvent.length;
    int j = 0;
    if (j < i)
    {
      PublicGroupChangeEvent localPublicGroupChangeEvent = paramArrayOfPublicGroupChangeEvent[j];
      switch (localPublicGroupChangeEvent.getMsgType())
      {
      }
      do
      {
        for (;;)
        {
          j++;
          break;
          MessageEntityImpl localMessageEntityImpl2 = localc.a(this.d, localPublicGroupChangeEvent.getAttributes().getFlags(), paramConversationEntityImpl, localPublicGroupChangeEvent.getActorPhoneNumber(), paramInt, localPublicGroupChangeEvent.getTimeSent(), localPublicGroupChangeEvent.getEventToken(), localPublicGroupChangeEvent.getAttributes().getGroupName(), paramConversationEntityImpl.getGroupName(), localPublicGroupChangeEvent.getEventId());
          if (localMessageEntityImpl2 != null)
          {
            localMessageEntityImpl2.addExtraFlag(3);
            a(localMessageEntityImpl2, paramConversationEntityImpl.getGroupName());
          }
        }
      } while (localPublicGroupChangeEvent.getMembers() == null);
      String[] arrayOfString = new String[localPublicGroupChangeEvent.getMembers().length];
      int k = 0;
      if (k < localPublicGroupChangeEvent.getMembers().length)
      {
        PublicGroupUserInfo localPublicGroupUserInfo = localPublicGroupChangeEvent.getMembers()[k];
        if (TextUtils.isEmpty(localPublicGroupUserInfo.clientName)) {}
        for (String str3 = null;; str3 = localPublicGroupUserInfo.clientName)
        {
          if (str3 == null) {
            str3 = "Unknown";
          }
          arrayOfString[k] = str3;
          k++;
          break;
        }
      }
      String str1;
      if (localPublicGroupChangeEvent.getMembers().length == 1)
      {
        str1 = localPublicGroupChangeEvent.getMembers()[0].phoneNumber;
        label253:
        if (localPublicGroupChangeEvent.getMembers().length != 1) {
          break label343;
        }
      }
      label343:
      for (String str2 = h.a(localPublicGroupChangeEvent.getMembers()[0].phoneNumber);; str2 = h.a(arrayOfString))
      {
        MessageEntityImpl localMessageEntityImpl1 = localc.a(paramLong, 2, localPublicGroupChangeEvent.getTimeSent(), str1, paramInt, localPublicGroupChangeEvent.getEventToken(), str2, localPublicGroupChangeEvent.getEventId());
        if (localMessageEntityImpl1 == null) {
          break;
        }
        localMessageEntityImpl1.addExtraFlag(3);
        a(localMessageEntityImpl1, paramConversationEntityImpl.getGroupName());
        break;
        str1 = localPublicGroupChangeEvent.getActorPhoneNumber();
        break label253;
      }
    }
  }
  
  private void a(String paramString) {}
  
  private void a(boolean paramBoolean1, boolean paramBoolean2, long paramLong1, String paramString1, long paramLong2, String paramString2, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, String paramString4, int paramInt3)
  {
    int i = a(paramBoolean1, paramInt3);
    if (paramBoolean1) {}
    for (com.viber.voip.messages.controller.b.a locala = new com.viber.voip.messages.controller.b.a(paramLong1, paramString4, paramString2, paramLong2, paramLong3, paramInt1, paramInt2, paramLocationInfo, i);; locala = new com.viber.voip.messages.controller.b.a(paramString2, paramString4, paramLong2, paramLong3, paramInt1, paramInt2, paramLocationInfo))
    {
      MessageEntityImpl localMessageEntityImpl = locala.a("sound", null, paramInt3);
      localMessageEntityImpl.setDownloadId(paramString3);
      localMessageEntityImpl.setExtraStatus(6);
      if (paramBoolean2) {
        localMessageEntityImpl.addExtraFlag(3);
      }
      a(localMessageEntityImpl, paramString1);
      return;
    }
  }
  
  private boolean a(long paramLong, int paramInt)
  {
    if ((!this.a) && (paramInt > 0))
    {
      this.b.handleSendMessageReceivedAck(paramLong, false);
      return false;
    }
    return true;
  }
  
  public void a(Set<com.viber.voip.messages.e> paramSet)
  {
    System.currentTimeMillis();
    as.a().c().beginTransaction();
    for (;;)
    {
      try
      {
        Iterator localIterator1 = paramSet.iterator();
        if (!localIterator1.hasNext()) {
          break;
        }
        com.viber.voip.messages.e locale = (com.viber.voip.messages.e)localIterator1.next();
        Iterator localIterator2 = locale.b().iterator();
        if (localIterator2.hasNext())
        {
          MessageEntityImpl localMessageEntityImpl = (MessageEntityImpl)localIterator2.next();
          if (locale.c())
          {
            str = locale.a();
            a(localMessageEntityImpl, str);
          }
        }
        else
        {
          continue;
        }
        String str = null;
      }
      finally
      {
        as.a().c().endTransaction();
      }
    }
    as.a().c().setTransactionSuccessful();
    as.a().c().endTransaction();
  }
  
  public boolean a(boolean paramBoolean1, boolean paramBoolean2, long paramLong1, long paramLong2, String paramString1, String paramString2, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, String paramString4, int paramInt3)
  {
    int i = a(paramBoolean1, paramInt3);
    if (paramBoolean1) {}
    for (com.viber.voip.messages.controller.b.a locala = new com.viber.voip.messages.controller.b.a(paramLong1, paramString4, paramString1, paramLong2, paramLong3, paramInt1, paramInt2, paramLocationInfo, i);; locala = new com.viber.voip.messages.controller.b.a(paramString1, paramString3, paramLong2, paramLong3, paramInt1, paramInt2, paramLocationInfo))
    {
      MessageEntityImpl localMessageEntityImpl = locala.a("text", paramString2, paramInt3);
      if (paramBoolean2) {
        localMessageEntityImpl.addExtraFlag(3);
      }
      a(localMessageEntityImpl, paramString4);
      return false;
    }
  }
  
  boolean a(boolean paramBoolean1, boolean paramBoolean2, long paramLong1, long paramLong2, String paramString1, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4, int paramInt5)
  {
    MessageEntityImpl localMessageEntityImpl = j.a(paramLong1, paramLong2, paramString1, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString2, paramString3, paramString4, paramString5, paramString6, paramInt4, paramInt5, a(paramBoolean1, paramInt5));
    if (paramBoolean2) {
      localMessageEntityImpl.addExtraFlag(3);
    }
    a(localMessageEntityImpl, paramString5);
    return false;
  }
  
  public boolean onAnimatedMessageReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3)
  {
    return a(false, false, -1L, paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, 6, paramString2, com.viber.voip.k.a.a(paramString2), paramString3, "", "", 0, 0);
  }
  
  public boolean onAnimatedMessageReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, String paramString4, int paramInt3)
  {
    if (a(paramLong2, paramInt3)) {
      a(true, false, paramLong1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, 6, paramString3, com.viber.voip.k.a.a(paramString3), paramString4, paramString1, "", 0, paramInt3);
    }
    return false;
  }
  
  public void onGetPublicGroupMessages(int paramInt1, long paramLong, PublicGroupMessage[] paramArrayOfPublicGroupMessage, PublicGroupChangeEvent[] paramArrayOfPublicGroupChangeEvent, int paramInt2)
  {
    System.currentTimeMillis();
    if (paramInt2 != 0) {
      return;
    }
    com.viber.voip.messages.controller.c.e locale = com.viber.voip.messages.controller.c.e.a();
    SQLiteDatabase localSQLiteDatabase = g.a(ViberApplication.getInstance()).getWritableDatabase();
    locale.a(paramInt1, paramLong, paramInt2, true);
    localSQLiteDatabase.beginTransaction();
    ConversationEntityImpl localConversationEntityImpl = as.a().a(paramLong);
    PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = as.a().b(paramLong);
    if (localConversationEntityImpl == null)
    {
      a("onGetPublicGroupMessages CONVERSATION EMPTY. ignore sync!");
      locale.a(paramInt1, paramLong, paramInt2, false);
      return;
    }
    long l = localConversationEntityImpl.getId();
    int i = 8;
    List localList1 = Arrays.asList(paramArrayOfPublicGroupMessage);
    List localList2 = Arrays.asList(paramArrayOfPublicGroupChangeEvent);
    Collections.sort(localList2, new n(this));
    Collections.sort(localList1, new o(this));
    int j;
    int k;
    if (localList1.size() > 0)
    {
      j = ((PublicGroupMessage)localList1.get(0)).getMessageID();
      if (localList2.size() <= 0) {
        break label573;
      }
      k = ((PublicGroupChangeEvent)localList2.get(0)).getEventId();
      label185:
      int m = Math.max(j, k);
      if ((localPublicGroupConversationEntityImpl.getLastLocalMessageId() <= m) && (localPublicGroupConversationEntityImpl.getLastLocalMessageId() != 0)) {
        break label579;
      }
    }
    label561:
    label573:
    label579:
    for (int n = 1;; n = 0)
    {
      if (n != 0) {
        i = 72;
      }
      for (;;)
      {
        int i2;
        PublicGroupMessage localPublicGroupMessage;
        try
        {
          int i1 = paramArrayOfPublicGroupMessage.length;
          i2 = 0;
          if (i2 >= i1) {
            break label489;
          }
          localPublicGroupMessage = paramArrayOfPublicGroupMessage[i2];
          switch (localPublicGroupMessage.getMediaType())
          {
          case 1: 
          default: 
            a(true, true, paramLong, localPublicGroupMessage.getMessageToken(), localPublicGroupMessage.getPhoneNumber(), null, localPublicGroupMessage.getTimeSent(), i, localPublicGroupMessage.getMessageSeq(), localPublicGroupMessage.getLocation(), localPublicGroupMessage.getMediaType(), localPublicGroupMessage.getBucketName(), localPublicGroupMessage.getDownloadId(), localPublicGroupMessage.getSenderName(), null, localPublicGroupMessage.getText(), (int)localPublicGroupMessage.getDuration(), localPublicGroupMessage.getMessageID());
          }
        }
        finally
        {
          localSQLiteDatabase.endTransaction();
          locale.a(l, 0L, 0L, false);
          locale.a(paramInt1, paramLong, paramInt2, false);
        }
        a(true, true, paramLong, null, localPublicGroupMessage.getMessageToken(), localPublicGroupMessage.getPhoneNumber(), localPublicGroupMessage.getTimeSent(), i, localPublicGroupMessage.getMessageSeq(), localPublicGroupMessage.getLocation(), localPublicGroupMessage.getDownloadId(), localPublicGroupMessage.getSenderName(), localPublicGroupMessage.getMessageID());
        break label561;
        a(true, true, paramLong, localPublicGroupMessage.getMessageToken(), localPublicGroupMessage.getPhoneNumber(), localPublicGroupMessage.getText(), localPublicGroupMessage.getTimeSent(), i, localPublicGroupMessage.getMessageSeq(), localPublicGroupMessage.getLocation(), localPublicGroupMessage.getSenderName(), null, localPublicGroupMessage.getMessageID());
        break label561;
        label489:
        a(localConversationEntityImpl, paramArrayOfPublicGroupChangeEvent, paramLong, i);
        as.a().e(l, 0L);
        as.a().a(l, localConversationEntityImpl.getConversationType());
        as.a().v(l);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        locale.a(l, 0L, 0L, false);
        locale.a(paramInt1, paramLong, paramInt2, false);
        return;
        i2++;
      }
      j = 0;
      break;
      k = 0;
      break label185;
    }
  }
  
  public boolean onMediaReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    a(paramInt3, com.viber.voip.a.a.n);
    a(false, false, 0L, paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString2, paramString3, paramString4, null, paramString5, 0, 0);
    return false;
  }
  
  public boolean onMediaReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4)
  {
    a(paramInt3, com.viber.voip.a.a.o);
    if (a(paramLong2, paramInt4)) {
      a(true, false, paramLong1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString3, paramString4, paramString5, paramString1, paramString6, 0, paramInt4);
    }
    return false;
  }
  
  public boolean onPttReceived(long paramLong1, String paramString1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, int paramInt3, String paramString3)
  {
    a(false, false, 0L, null, paramLong1, paramString1, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString2, paramString3, 0);
    return false;
  }
  
  public boolean onPttReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, int paramInt3, String paramString4, int paramInt4)
  {
    if (a(paramLong2, paramInt4)) {
      a(true, false, paramLong1, paramString1, paramLong2, paramString2, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString3, paramString4, paramInt4);
    }
    return false;
  }
  
  public boolean onSecondaryRegistered(long paramLong, int paramInt1, int paramInt2, int paramInt3)
  {
    Resources localResources = this.d.getResources();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    String str1 = String.format("%04d", arrayOfObject);
    String str2 = ClientMessages.DeviceTypes.toString(paramInt2, localResources);
    String str3 = localResources.getString(2131494442, new Object[] { str1, str2 });
    MessageEntityImpl localMessageEntityImpl = new com.viber.voip.messages.controller.b.a("viber".substring(0, 1).toUpperCase() + "viber".substring(1), "", paramLong, System.currentTimeMillis(), paramInt3, 0, null).a("text", str3, 0);
    cv localcv = this.f.a(localMessageEntityImpl, "");
    if ((localcv.a) || (localcv.b)) {
      this.b.handleSecondaryRegisteredAck(paramLong);
    }
    if (localcv.b)
    {
      Intent localIntent = new Intent(this.d, ActivateSecondaryActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("code", str1);
      localIntent.putExtra("device_type", str2);
      this.d.startActivity(localIntent);
      this.f.b(localcv.d.getId(), localMessageEntityImpl.getMessageToken(), localMessageEntityImpl.getDate());
    }
    return false;
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    if (paramInt == PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED.ordinal()) {
      ViberApplication.getInstance().getMessagesManager().c().a();
    }
  }
  
  public boolean onTextReceived(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3)
  {
    a(0, com.viber.voip.a.a.n);
    a(false, false, 0L, paramLong1, paramString1, paramString2, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString3, null, 0);
    return false;
  }
  
  public boolean onTextReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, String paramString3, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString4, int paramInt3)
  {
    a(0, com.viber.voip.a.a.o);
    if (a(paramLong2, paramInt3)) {
      a(true, false, paramLong1, paramLong2, paramString2, paramString3, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString4, paramString1, paramInt3);
    }
    return false;
  }
  
  public boolean onVideoReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    a(3, com.viber.voip.a.a.n);
    a(false, false, 0L, paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, 3, paramString2, paramString3, paramString5, null, paramString4, paramInt3, 0);
    return false;
  }
  
  public boolean onVideoReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4)
  {
    a(3, com.viber.voip.a.a.o);
    if (a(paramLong2, paramInt4)) {
      a(true, false, paramLong1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, 3, paramString3, paramString4, paramString6, paramString1, paramString5, paramInt3, paramInt4);
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.m
 * JD-Core Version:    0.7.0.1
 */