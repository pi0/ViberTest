package com.viber.voip.messages.controller;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.viber.jni.GroupUserInfo;
import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PublicGroupInfo;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.entities.impl.CallEntityImpl;
import com.viber.voip.e.u;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageCallEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupMessageInfoEntityImpl;
import com.viber.voip.phone.v;
import com.viber.voip.registration.cp;
import com.viber.voip.sms.s;
import com.viber.voip.user.UserData;
import com.viber.voip.util.fz;
import com.viber.voip.util.upload.ac;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class cr
{
  private static final String a = cr.class.getSimpleName();
  private as b = as.a();
  private e c = e.a();
  private com.viber.voip.messages.controller.c.a d = new com.viber.voip.messages.controller.c.a();
  private cq e = cq.a();
  private com.viber.voip.messages.controller.c.b f = com.viber.voip.messages.controller.c.b.a();
  private ViberApplication g = ViberApplication.getInstance();
  
  public cr(Context paramContext) {}
  
  private cv a(ConversationEntityImpl paramConversationEntityImpl, MessageEntityImpl paramMessageEntityImpl, MessageCallEntityImpl paramMessageCallEntityImpl, String paramString)
  {
    if ((!paramMessageEntityImpl.isToSend()) && (!paramMessageEntityImpl.isCall()) && (paramConversationEntityImpl.isConversationGroup()) && (!paramString.equals(paramConversationEntityImpl.getGroupName())) && (!paramMessageEntityImpl.isSyncedMessage()))
    {
      paramConversationEntityImpl.setGroupName(paramString);
      this.b.b(paramConversationEntityImpl);
      this.c.d(paramConversationEntityImpl.getId(), false);
    }
    boolean bool1;
    boolean bool2;
    label95:
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl;
    ParticipantEntityImpl localParticipantEntityImpl2;
    MessageEntityImpl localMessageEntityImpl2;
    MessageEntityImpl localMessageEntityImpl1;
    label301:
    boolean bool5;
    if ((paramMessageEntityImpl.isSystemMessage()) || (paramMessageEntityImpl.isActivateSecondaryNotification()))
    {
      bool1 = true;
      if (paramMessageEntityImpl.getType() != 1) {
        break label417;
      }
      bool2 = true;
      localParticipantInfoEntityImpl = a(bool1, bool2, paramMessageEntityImpl.getRecipientNumber(), paramMessageEntityImpl);
      ParticipantEntityImpl localParticipantEntityImpl1 = this.b.a(paramConversationEntityImpl.getId(), localParticipantInfoEntityImpl.getId());
      int i;
      if (localParticipantEntityImpl1 != null)
      {
        boolean bool6 = localParticipantEntityImpl1.isActive();
        i = 0;
        if (bool6) {}
      }
      else
      {
        i = 1;
      }
      localParticipantEntityImpl2 = a(paramConversationEntityImpl.getId(), i, localParticipantInfoEntityImpl.getId());
      if ((!paramConversationEntityImpl.isConversationGroup()) && (!localParticipantInfoEntityImpl.isOwner()) && (paramConversationEntityImpl.getParticipantInfoId1() != localParticipantInfoEntityImpl.getId()))
      {
        paramConversationEntityImpl.setParticipantInfoId1(localParticipantInfoEntityImpl.getId());
        this.b.b(paramConversationEntityImpl);
      }
      paramMessageEntityImpl.setConversationId(paramConversationEntityImpl.getId());
      paramMessageEntityImpl.setConversationType(paramConversationEntityImpl.getConversationType());
      paramMessageEntityImpl.setParticipantId(localParticipantEntityImpl2.getId());
      if ((paramMessageEntityImpl.getMessageToken() == 0L) || (paramMessageEntityImpl.isSyncedMessage())) {
        break label423;
      }
      localMessageEntityImpl2 = this.b.b(paramMessageEntityImpl.getConversationId(), paramMessageEntityImpl.getMessageToken());
      localMessageEntityImpl1 = this.b.c(paramMessageEntityImpl.getConversationId(), paramMessageEntityImpl.getMessageToken());
      this.e.a(paramMessageEntityImpl, localMessageEntityImpl1, localMessageEntityImpl2);
      if (!a(paramMessageEntityImpl, localMessageEntityImpl2, paramMessageCallEntityImpl)) {
        break label529;
      }
      bool5 = true;
      paramMessageEntityImpl = localMessageEntityImpl2;
    }
    for (;;)
    {
      a(paramMessageEntityImpl.getConversationId(), paramMessageEntityImpl.getId(), paramMessageCallEntityImpl);
      if (!paramMessageEntityImpl.isSyncedMessage())
      {
        this.b.e(paramConversationEntityImpl.getId(), localParticipantEntityImpl2.getId());
        this.b.a(paramConversationEntityImpl.getId(), paramConversationEntityImpl.getConversationType());
        this.b.v(paramConversationEntityImpl.getId());
      }
      ConversationEntityImpl localConversationEntityImpl = this.b.c(paramConversationEntityImpl.getId());
      return new cv(bool5, false, localConversationEntityImpl, localParticipantInfoEntityImpl, paramMessageEntityImpl, false);
      bool1 = false;
      break;
      label417:
      bool2 = false;
      break label95;
      label423:
      if (paramMessageEntityImpl.isCall())
      {
        localMessageEntityImpl1 = this.b.q(paramMessageEntityImpl.getConversationId());
        localMessageEntityImpl2 = null;
        break label301;
      }
      boolean bool3 = paramMessageEntityImpl.getMessageToken() < 0L;
      localMessageEntityImpl1 = null;
      localMessageEntityImpl2 = null;
      if (bool3) {
        break label301;
      }
      boolean bool4 = paramMessageEntityImpl.isPublicGroup();
      localMessageEntityImpl1 = null;
      localMessageEntityImpl2 = null;
      if (!bool4) {
        break label301;
      }
      MessageEntityImpl localMessageEntityImpl3 = this.b.q(paramMessageEntityImpl.getConversationId());
      localMessageEntityImpl1 = null;
      localMessageEntityImpl2 = null;
      if (localMessageEntityImpl3 == null) {
        break label301;
      }
      paramMessageEntityImpl.setMessageGlobalId(1 + localMessageEntityImpl3.getMessageGlobalId());
      localMessageEntityImpl1 = null;
      localMessageEntityImpl2 = null;
      break label301;
      label529:
      if (a(paramMessageEntityImpl, localMessageEntityImpl1, paramMessageCallEntityImpl))
      {
        bool5 = true;
        paramMessageEntityImpl = localMessageEntityImpl1;
      }
      else if (this.b.a(paramMessageEntityImpl))
      {
        bool5 = true;
      }
      else
      {
        bool5 = false;
      }
    }
  }
  
  private cv a(MessageEntityImpl paramMessageEntityImpl, MessageCallEntityImpl paramMessageCallEntityImpl, long paramLong1, String paramString1, long paramLong2, String paramString2, int paramInt)
  {
    ConversationEntityImpl localConversationEntityImpl1 = a(paramInt, paramLong2, paramLong1, paramString1, paramString2);
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl1 = a();
    boolean bool1;
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl2;
    if ((paramMessageEntityImpl != null) && ((paramMessageEntityImpl.isSystemMessage()) || (paramMessageEntityImpl.isActivateSecondaryNotification())))
    {
      bool1 = true;
      localParticipantInfoEntityImpl2 = a(bool1, false, paramString1, paramMessageEntityImpl);
      if (!localParticipantInfoEntityImpl2.isOwner()) {
        break label758;
      }
    }
    label131:
    label222:
    label624:
    label758:
    for (ParticipantInfoEntityImpl localParticipantInfoEntityImpl3 = null;; localParticipantInfoEntityImpl3 = localParticipantInfoEntityImpl2)
    {
      ParticipantEntityImpl localParticipantEntityImpl1 = b(0L, 0, localParticipantInfoEntityImpl1.getId());
      if (localParticipantInfoEntityImpl3 != null) {}
      for (ParticipantEntityImpl localParticipantEntityImpl2 = b(0L, 0, localParticipantInfoEntityImpl3.getId());; localParticipantEntityImpl2 = null)
      {
        boolean bool2 = false;
        MessageEntityImpl localMessageEntityImpl;
        boolean bool3;
        ConversationEntityImpl localConversationEntityImpl2;
        if (paramMessageEntityImpl != null)
        {
          localMessageEntityImpl = this.b.k(paramMessageEntityImpl.getMessageToken());
          if (localMessageEntityImpl == null)
          {
            bool3 = this.b.a(paramMessageEntityImpl);
            if ((paramMessageEntityImpl.isSystemMessage()) || (paramMessageEntityImpl.isActivateSecondaryNotification()))
            {
              localConversationEntityImpl1.setFlag(0);
              if (ViberApplication.getInstance().getPhoneController(false).isRakutenPhone(localConversationEntityImpl1.getNumber())) {
                localConversationEntityImpl1.setFlag(2);
              }
              if (paramMessageEntityImpl.isActivateSecondaryNotification()) {
                localConversationEntityImpl1.setFlag(1);
              }
            }
            if (!paramMessageEntityImpl.isIncoming()) {
              break label624;
            }
            if (localParticipantEntityImpl2 == null) {
              break label642;
            }
            paramMessageEntityImpl.setParticipantId(localParticipantEntityImpl2.getId());
            localParticipantEntityImpl2.setLastMessageId(paramMessageEntityImpl.getId());
            bool2 = bool3;
          }
        }
        else
        {
          if ((paramMessageEntityImpl == null) || (!paramMessageEntityImpl.isOutgoing()) || (paramInt != 1)) {
            break label662;
          }
          if (localParticipantInfoEntityImpl3 == null) {
            break label649;
          }
          localConversationEntityImpl1.setParticipantInfoId1(localParticipantInfoEntityImpl1.getId());
          localConversationEntityImpl1.setParticipantInfoId2(localParticipantInfoEntityImpl3.getId());
          if (paramMessageEntityImpl == null) {
            break label703;
          }
          localConversationEntityImpl1.setLastMessageId(paramMessageEntityImpl.getId());
          localConversationEntityImpl1.setDate(paramMessageEntityImpl.getDate());
          if (!this.b.a(localConversationEntityImpl1)) {
            break label721;
          }
          if (localConversationEntityImpl1.isPublicGroup())
          {
            PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = new PublicGroupConversationEntityImpl();
            localPublicGroupConversationEntityImpl.setGroupRole(1);
            localPublicGroupConversationEntityImpl.setGroupId(localConversationEntityImpl1.getGroupId());
            localPublicGroupConversationEntityImpl.setRevision(1);
            this.b.a(localPublicGroupConversationEntityImpl);
          }
          if (localConversationEntityImpl1.isConversationGroup())
          {
            int i = this.g.getPhoneController(true).generateSequence();
            if (localConversationEntityImpl1.isPublicGroup())
            {
              paramMessageEntityImpl.setMessageSeq(i);
              this.b.b(paramMessageEntityImpl);
            }
            a(i, paramLong2, 1, localConversationEntityImpl1.getConversationType());
          }
          if (paramMessageEntityImpl != null)
          {
            paramMessageEntityImpl.setConversationId(localConversationEntityImpl1.getId());
            paramMessageEntityImpl.setConversationType(localConversationEntityImpl1.getConversationType());
            this.b.b(paramMessageEntityImpl);
            a(paramMessageEntityImpl.getConversationId(), paramMessageEntityImpl.getId(), paramMessageCallEntityImpl);
          }
          if (localParticipantEntityImpl2 != null)
          {
            localParticipantEntityImpl2.setConversationId(localConversationEntityImpl1.getId());
            this.b.b(localParticipantEntityImpl2);
          }
          if (localParticipantInfoEntityImpl1 != null)
          {
            localParticipantEntityImpl1.setConversationId(localConversationEntityImpl1.getId());
            this.b.b(localParticipantEntityImpl1);
          }
          this.b.v(localConversationEntityImpl1.getId());
          localConversationEntityImpl2 = this.b.c(localConversationEntityImpl1.getId());
          this.c.d(localConversationEntityImpl2.getId(), true);
          if (paramMessageEntityImpl != null) {
            this.c.a(localConversationEntityImpl2.getId(), paramMessageEntityImpl.getId(), paramMessageEntityImpl.getMessageToken(), paramMessageEntityImpl.isOutgoing());
          }
          if (localParticipantInfoEntityImpl3 != null) {
            break label714;
          }
        }
        for (ParticipantInfoEntityImpl localParticipantInfoEntityImpl5 = localParticipantInfoEntityImpl1;; localParticipantInfoEntityImpl5 = localParticipantInfoEntityImpl3)
        {
          return new cv(bool2, true, localConversationEntityImpl2, localParticipantInfoEntityImpl5, paramMessageEntityImpl, false);
          bool1 = false;
          break;
          paramMessageEntityImpl.setId(localMessageEntityImpl.getId());
          this.b.b(paramMessageEntityImpl);
          bool3 = false;
          break label131;
          paramMessageEntityImpl.setParticipantId(localParticipantEntityImpl1.getId());
          localParticipantEntityImpl1.setLastMessageId(paramMessageEntityImpl.getId());
          bool2 = bool3;
          break label222;
          localConversationEntityImpl1.setParticipantInfoId1(localParticipantInfoEntityImpl1.getId());
          break label264;
          if (localParticipantInfoEntityImpl3 != null)
          {
            localConversationEntityImpl1.setParticipantInfoId1(localParticipantInfoEntityImpl3.getId());
            localConversationEntityImpl1.setParticipantInfoId2(localParticipantInfoEntityImpl1.getId());
            break label264;
          }
          localConversationEntityImpl1.setParticipantInfoId1(localParticipantInfoEntityImpl1.getId());
          break label264;
          localConversationEntityImpl1.setDate(System.currentTimeMillis());
          break label286;
        }
        if (localParticipantInfoEntityImpl3 == null) {}
        for (ParticipantInfoEntityImpl localParticipantInfoEntityImpl4 = localParticipantInfoEntityImpl1;; localParticipantInfoEntityImpl4 = localParticipantInfoEntityImpl3) {
          return new cv(false, false, null, localParticipantInfoEntityImpl4, paramMessageEntityImpl, true);
        }
      }
    }
  }
  
  private cv a(MessageEntityImpl paramMessageEntityImpl, MessageCallEntityImpl paramMessageCallEntityImpl, String paramString)
  {
    return a(paramMessageEntityImpl, paramMessageCallEntityImpl, paramMessageEntityImpl.getDate(), paramMessageEntityImpl.getRecipientNumber(), paramMessageEntityImpl.getGroupId(), paramString, paramMessageEntityImpl.getConversationType());
  }
  
  private cv a(MessageEntityImpl paramMessageEntityImpl, MessageCallEntityImpl paramMessageCallEntityImpl, String paramString, boolean paramBoolean)
  {
    if ((paramMessageEntityImpl.isToSend()) && (paramMessageEntityImpl.getMessageSeq() == 0)) {
      paramMessageEntityImpl.setMessageSeq(ViberApplication.getInstance().getPhoneController(true).generateSequence());
    }
    MessageEntityImpl localMessageEntityImpl;
    ConversationEntityImpl localConversationEntityImpl;
    label74:
    boolean bool1;
    if ((paramMessageEntityImpl.isToSend()) || (paramMessageEntityImpl.isCall()) || (paramMessageEntityImpl.getMessageToken() == 0L))
    {
      localMessageEntityImpl = null;
      if (!paramMessageEntityImpl.isGroup()) {
        break label165;
      }
      localConversationEntityImpl = this.b.a(paramMessageEntityImpl.getGroupId());
      if ((!paramMessageEntityImpl.isSystemMessage()) && (!paramMessageEntityImpl.isActivateSecondaryNotification())) {
        break label181;
      }
      bool1 = true;
      label91:
      if (paramMessageEntityImpl.getType() != 1) {
        break label187;
      }
    }
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl;
    cv localcv2;
    label165:
    label181:
    label187:
    for (boolean bool2 = true;; bool2 = false)
    {
      localParticipantInfoEntityImpl = a(bool1, bool2, paramMessageEntityImpl.getRecipientNumber(), localMessageEntityImpl);
      if ((localMessageEntityImpl == null) || (localConversationEntityImpl == null)) {
        break label193;
      }
      localcv2 = new cv(false, false, localConversationEntityImpl, localParticipantInfoEntityImpl, localMessageEntityImpl, true);
      return localcv2;
      localMessageEntityImpl = this.b.k(paramMessageEntityImpl.getMessageToken());
      break;
      localConversationEntityImpl = this.b.a(paramMessageEntityImpl.getRecipientNumber());
      break label74;
      bool1 = false;
      break label91;
    }
    label193:
    PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl;
    if ((localConversationEntityImpl != null) && ((2 == paramMessageEntityImpl.getConversationType()) || (3 == paramMessageEntityImpl.getConversationType())))
    {
      localPublicGroupConversationEntityImpl = this.b.b(paramMessageEntityImpl.getGroupId());
      if (localPublicGroupConversationEntityImpl != null)
      {
        if (3 != localPublicGroupConversationEntityImpl.getGroupRole()) {
          break label277;
        }
        paramMessageEntityImpl.addExtraFlag(4);
      }
    }
    for (;;)
    {
      if (localConversationEntityImpl != null) {
        break label294;
      }
      localcv2 = a(paramMessageEntityImpl, paramMessageCallEntityImpl, paramString);
      if (!localcv2.b) {
        break;
      }
      c(paramMessageEntityImpl);
      return localcv2;
      label277:
      if (1 == localPublicGroupConversationEntityImpl.getGroupRole()) {
        paramMessageEntityImpl.addExtraFlag(5);
      }
    }
    label294:
    if ((!paramMessageEntityImpl.isSms()) && (!paramMessageEntityImpl.isToSend()) && ((localConversationEntityImpl.getDeletedToken() >= paramMessageEntityImpl.getMessageToken()) || (localConversationEntityImpl.isDeleted())))
    {
      this.b.v(localConversationEntityImpl.getId());
      return new cv(false, false, this.b.c(localConversationEntityImpl.getId()), localParticipantInfoEntityImpl, paramMessageEntityImpl, true);
    }
    cv localcv1 = a(localConversationEntityImpl, paramMessageEntityImpl, paramMessageCallEntityImpl, paramString);
    if ((paramBoolean) && (localcv1.b) && (("animated_message".equals(paramMessageEntityImpl.getMimeType())) || ("image".equals(paramMessageEntityImpl.getMimeType())) || ("video".equals(paramMessageEntityImpl.getMimeType())))) {
      this.c.d(localConversationEntityImpl.getId(), false);
    }
    if (paramBoolean) {
      this.c.a(localConversationEntityImpl.getId(), paramMessageEntityImpl.getId(), paramMessageEntityImpl.getMessageToken(), paramMessageEntityImpl.isOutgoing());
    }
    if (localcv1.b) {
      c(paramMessageEntityImpl);
    }
    return localcv1;
  }
  
  private cv a(MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean)
  {
    return a(paramMessageEntityImpl, null, "", paramBoolean);
  }
  
  private ConversationEntityImpl a(int paramInt, long paramLong1, long paramLong2, String paramString1, String paramString2)
  {
    ConversationEntityImpl localConversationEntityImpl = new ConversationEntityImpl();
    localConversationEntityImpl.setGroupName(paramString2);
    localConversationEntityImpl.setDate(paramLong2);
    localConversationEntityImpl.setConversationType(paramInt);
    if (paramInt == 0)
    {
      localConversationEntityImpl.setNumber(paramString1);
      return localConversationEntityImpl;
    }
    localConversationEntityImpl.setGroupId(paramLong1);
    localConversationEntityImpl.setSmartNotifications(1);
    return localConversationEntityImpl;
  }
  
  private PublicGroupConversationEntityImpl a(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2, PublicGroupInfo paramPublicGroupInfo, ConversationEntityImpl paramConversationEntityImpl)
  {
    int i = 1;
    PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = new PublicGroupConversationEntityImpl();
    localPublicGroupConversationEntityImpl.setGroupId(paramConversationEntityImpl.getGroupId());
    localPublicGroupConversationEntityImpl.setAddressString(paramString2);
    localPublicGroupConversationEntityImpl.setInviter(paramString1);
    localPublicGroupConversationEntityImpl.setGroupRole(paramInt1);
    localPublicGroupConversationEntityImpl.setRevision(paramInt2);
    localPublicGroupConversationEntityImpl.setGroupUri(paramString3);
    if (paramPublicGroupInfo != null)
    {
      localPublicGroupConversationEntityImpl.setBackgroundId(paramPublicGroupInfo.backgroundId);
      localPublicGroupConversationEntityImpl.setGroupUri(paramPublicGroupInfo.groupUri);
      localPublicGroupConversationEntityImpl.setTagLine(paramPublicGroupInfo.tagLine);
      localPublicGroupConversationEntityImpl.setTagsArray(paramPublicGroupInfo.tags);
      localPublicGroupConversationEntityImpl.setBackgroundId(paramPublicGroupInfo.backgroundId);
      localPublicGroupConversationEntityImpl.setIconId(paramPublicGroupInfo.iconId);
      localPublicGroupConversationEntityImpl.setRevision(paramPublicGroupInfo.revision);
      localPublicGroupConversationEntityImpl.setWatchersCount(paramPublicGroupInfo.watchersCount);
      if ((0x1 & paramPublicGroupInfo.flags) != i) {
        break label195;
      }
    }
    for (;;)
    {
      localPublicGroupConversationEntityImpl.setVerified(i);
      if (paramPublicGroupInfo.location != null)
      {
        localPublicGroupConversationEntityImpl.setLocationLat(paramPublicGroupInfo.location.getNativeLatitude());
        localPublicGroupConversationEntityImpl.setLocationLng(paramPublicGroupInfo.location.getNativeLongitude());
      }
      return localPublicGroupConversationEntityImpl;
      label195:
      int j = 0;
    }
  }
  
  private void a(ConversationEntityImpl paramConversationEntityImpl)
  {
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = a();
    a(paramConversationEntityImpl.getId(), 0, localParticipantInfoEntityImpl.getId());
    paramConversationEntityImpl.setParticipantInfoId1(localParticipantInfoEntityImpl.getId());
  }
  
  private boolean a(long paramLong1, long paramLong2, MessageCallEntityImpl paramMessageCallEntityImpl)
  {
    if (paramMessageCallEntityImpl != null)
    {
      paramMessageCallEntityImpl.setConversationId(paramLong1);
      paramMessageCallEntityImpl.setMessageId(paramLong2);
      return this.b.a(paramMessageCallEntityImpl);
    }
    return false;
  }
  
  private boolean a(MessageEntityImpl paramMessageEntityImpl1, MessageEntityImpl paramMessageEntityImpl2, MessageCallEntityImpl paramMessageCallEntityImpl)
  {
    if ((paramMessageEntityImpl1.isCall()) && (paramMessageEntityImpl2 != null) && (paramMessageEntityImpl2.isCall()) && (w.a(paramMessageEntityImpl1, paramMessageEntityImpl2)) && (!b(paramMessageEntityImpl2.getDate(), paramMessageEntityImpl1.getDate())) && ("has_description".equals(paramMessageEntityImpl2.getBucket())))
    {
      paramMessageEntityImpl2.setCount(1 + paramMessageEntityImpl2.getCount());
      paramMessageEntityImpl2.setDuration(paramMessageEntityImpl1.getDuration());
      if (paramMessageCallEntityImpl.isAnswerredOnAnotherDevice()) {
        if (this.b.A(paramMessageEntityImpl2.getId())) {
          paramMessageEntityImpl2.setBody(paramMessageEntityImpl1.getBody());
        }
      }
      for (;;)
      {
        if (paramMessageEntityImpl1.getMessageToken() > paramMessageEntityImpl2.getMessageToken())
        {
          paramMessageEntityImpl2.setDate(paramMessageEntityImpl1.getDate());
          paramMessageEntityImpl2.setMessageToken(paramMessageEntityImpl1.getMessageToken());
          paramMessageEntityImpl2.setMessageSeq(paramMessageEntityImpl1.getMessageSeq());
        }
        if (paramMessageEntityImpl1.getUnread() > 0) {
          paramMessageEntityImpl2.setUnread(1 + paramMessageEntityImpl2.getUnread());
        }
        this.b.b(paramMessageEntityImpl2);
        return true;
        paramMessageEntityImpl2.setBody("incoming_call");
        continue;
        if (paramMessageCallEntityImpl.isTransferredIn())
        {
          if (this.b.B(paramMessageEntityImpl2.getId())) {
            paramMessageEntityImpl2.setBody(paramMessageEntityImpl1.getBody());
          } else {
            paramMessageEntityImpl2.setBody("incoming_call");
          }
        }
        else {
          paramMessageEntityImpl2.setBody(paramMessageEntityImpl1.getBody());
        }
      }
    }
    return false;
  }
  
  public static boolean b(long paramLong1, long paramLong2)
  {
    return paramLong1 / 86400000L != paramLong2 / 86400000L;
  }
  
  private void c(String paramString) {}
  
  private boolean c(MessageEntityImpl paramMessageEntityImpl)
  {
    if ((paramMessageEntityImpl != null) && ("location".equals(paramMessageEntityImpl.getMimeType())) && (TextUtils.isEmpty(paramMessageEntityImpl.getBucket())))
    {
      ViberApplication.getInstance().getLocationManager().a(paramMessageEntityImpl.getLocation().getLatitude(), paramMessageEntityImpl.getLocation().getLongitude(), new cs(this, paramMessageEntityImpl));
      return true;
    }
    return false;
  }
  
  public cu a(long paramLong, String paramString, int paramInt)
  {
    ConversationEntityImpl localConversationEntityImpl = a(1, "", paramLong, false);
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = a(false, false, paramString, "", "");
    ParticipantEntityImpl localParticipantEntityImpl = a(localConversationEntityImpl.getId(), paramInt, localParticipantInfoEntityImpl.getId());
    com.viber.voip.contacts.c.a.a(new String[] { paramString });
    this.b.a(localConversationEntityImpl.getId(), localConversationEntityImpl.getConversationType());
    return new cu(localConversationEntityImpl, localParticipantEntityImpl, localParticipantInfoEntityImpl);
  }
  
  public cv a(int paramInt1, long paramLong, int paramInt2, int paramInt3, String paramString1, int paramInt4, boolean paramBoolean, String paramString2, String paramString3, PublicGroupInfo paramPublicGroupInfo)
  {
    return a(paramInt1, paramLong, paramInt2, paramInt3, paramString1, paramInt4, paramBoolean, paramString2, paramString3, "", paramPublicGroupInfo);
  }
  
  public cv a(int paramInt1, long paramLong, int paramInt2, int paramInt3, String paramString1, int paramInt4, boolean paramBoolean, String paramString2, String paramString3, String paramString4, PublicGroupInfo paramPublicGroupInfo)
  {
    if ((paramInt2 != 2) && (paramInt2 != 3) && (paramInt2 != 4)) {
      throw new IllegalArgumentException("New public group must be of type TYPE_PUBLIC_GROUP or TYPE_TRIAL_PUBLIC_GROUP or TYPE_PUBLIC_GROUP_WAITING_INFO");
    }
    ConversationEntityImpl localConversationEntityImpl = this.b.a(paramLong);
    boolean bool;
    String str;
    label69:
    label124:
    PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl1;
    if (localConversationEntityImpl == null)
    {
      bool = true;
      if (!bool) {
        break label213;
      }
      long l = System.currentTimeMillis();
      if (paramPublicGroupInfo == null) {
        break label206;
      }
      str = paramPublicGroupInfo.groupName;
      localConversationEntityImpl = a(paramInt2, paramLong, l, "", str);
      this.b.a(localConversationEntityImpl);
      if (paramInt3 == 1)
      {
        a(localConversationEntityImpl);
        this.b.a(localConversationEntityImpl.getId(), localConversationEntityImpl.getConversationType());
      }
      localPublicGroupConversationEntityImpl1 = this.b.b(paramLong);
      if (localPublicGroupConversationEntityImpl1 != null) {
        break label243;
      }
      PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl2 = a(paramInt3, paramString2, paramString3, paramString1, paramInt4, paramPublicGroupInfo, localConversationEntityImpl);
      this.b.a(localPublicGroupConversationEntityImpl2);
    }
    for (;;)
    {
      if (paramBoolean) {
        a(paramInt1, paramLong, paramInt4, paramInt2);
      }
      return new cv(false, bool, localConversationEntityImpl, null, null, false);
      bool = false;
      break;
      label206:
      str = paramString4;
      break label69;
      label213:
      if (localConversationEntityImpl.getConversationType() == paramInt2) {
        break label124;
      }
      localConversationEntityImpl.setConversationType(paramInt2);
      this.b.b(localConversationEntityImpl);
      break label124;
      label243:
      if (localPublicGroupConversationEntityImpl1.getGroupRole() != paramInt3)
      {
        localPublicGroupConversationEntityImpl1.setInviter(paramString2);
        localPublicGroupConversationEntityImpl1.setGroupRole(paramInt3);
        this.b.b(localPublicGroupConversationEntityImpl1);
        if (paramInt3 == 1)
        {
          a(localConversationEntityImpl);
          this.b.b(localConversationEntityImpl);
          this.c.f(localConversationEntityImpl.getId(), false);
        }
      }
    }
  }
  
  public cv a(long paramLong, boolean paramBoolean, GroupController.GroupMember[] paramArrayOfGroupMember, String paramString)
  {
    ConversationEntityImpl localConversationEntityImpl = a(1, paramLong, System.currentTimeMillis(), "", paramString);
    this.b.a(localConversationEntityImpl);
    a(localConversationEntityImpl);
    GroupUserInfo[] arrayOfGroupUserInfo = new GroupUserInfo[paramArrayOfGroupMember.length];
    if (paramArrayOfGroupMember != null)
    {
      int i = 0;
      if (i < paramArrayOfGroupMember.length)
      {
        GroupController.GroupMember localGroupMember = paramArrayOfGroupMember[i];
        arrayOfGroupUserInfo[i] = localGroupMember.a;
        String str1 = localGroupMember.a.phoneNumber;
        String str2 = localGroupMember.a.clientName;
        if (localGroupMember.c != null) {}
        for (String str3 = localGroupMember.c.toString();; str3 = "")
        {
          ParticipantInfoEntityImpl localParticipantInfoEntityImpl = a(false, false, str1, str2, str3);
          a(localConversationEntityImpl.getId(), localGroupMember.d, localParticipantInfoEntityImpl.getId());
          i++;
          break;
        }
      }
    }
    this.b.a(localConversationEntityImpl.getId(), localConversationEntityImpl.getConversationType());
    if (paramBoolean) {
      a(this.g.getPhoneController(true).generateSequence(), paramLong, 0, 1);
    }
    return new cv(false, true, localConversationEntityImpl, null, null, false);
  }
  
  public cv a(MessageEntityImpl paramMessageEntityImpl)
  {
    return a(paramMessageEntityImpl, "");
  }
  
  public cv a(MessageEntityImpl paramMessageEntityImpl, MessageCallEntityImpl paramMessageCallEntityImpl)
  {
    return a(paramMessageEntityImpl, paramMessageCallEntityImpl, "", true);
  }
  
  public cv a(MessageEntityImpl paramMessageEntityImpl, String paramString)
  {
    return a(paramMessageEntityImpl, null, paramString, true);
  }
  
  public cv a(MessageEntityImpl paramMessageEntityImpl, String paramString, boolean paramBoolean)
  {
    return a(paramMessageEntityImpl, null, paramString, paramBoolean);
  }
  
  public cw a(long paramLong, String paramString)
  {
    ConversationEntityImpl localConversationEntityImpl = this.b.a(paramLong);
    String str = localConversationEntityImpl.getGroupName();
    localConversationEntityImpl.setGroupName(paramString);
    this.b.b(localConversationEntityImpl.getId(), paramString);
    this.c.d(localConversationEntityImpl.getId(), false);
    return new cw(localConversationEntityImpl, str, paramString);
  }
  
  public ConversationEntityImpl a(int paramInt1, String paramString1, long paramLong, String paramString2, int paramInt2, PublicGroupInfo paramPublicGroupInfo, boolean paramBoolean)
  {
    Object localObject1;
    int i;
    int j;
    label54:
    Object localObject2;
    if (paramInt1 == 0)
    {
      localObject1 = this.b.a(paramString1);
      if (paramInt1 != 3) {
        break label135;
      }
      i = this.g.getPhoneController(true).generateSequence();
      if ((!paramBoolean) || (localObject1 != null)) {
        break label104;
      }
      if (paramPublicGroupInfo == null) {
        break label98;
      }
      j = paramPublicGroupInfo.groupRole;
      localObject2 = a(i, paramLong, paramInt1, j, paramString2, paramInt2, true, null, null, paramPublicGroupInfo).d;
      label78:
      localObject1 = localObject2;
    }
    label98:
    label104:
    do
    {
      return localObject1;
      localObject1 = this.b.a(paramLong);
      break;
      j = 3;
      break label54;
      if ((localObject1 != null) && (((ConversationEntityImpl)localObject1).getConversationType() == 3)) {
        a(i, paramLong, paramInt2, paramInt1);
      }
      localObject2 = localObject1;
      break label78;
      if ((paramBoolean) && (localObject1 == null) && (paramInt1 == 0))
      {
        ConversationEntityImpl localConversationEntityImpl = a(null, null, System.currentTimeMillis(), paramString1, 0L, "", 0).d;
        this.f.b(localConversationEntityImpl.getId());
        return localConversationEntityImpl;
      }
    } while ((localObject1 == null) || (this.f.b().contains(Long.valueOf(((ConversationEntityImpl)localObject1).getId()))) || (((ConversationEntityImpl)localObject1).isConversationGroup()) || (((ConversationEntityImpl)localObject1).getLastMessageId() > 0L));
    label135:
    ((ConversationEntityImpl)localObject1).setDate(System.currentTimeMillis());
    ((ConversationEntityImpl)localObject1).setBackgroundLandscape("");
    ((ConversationEntityImpl)localObject1).setBackgroundPortrait("");
    ((ConversationEntityImpl)localObject1).setSmartNotifications(0);
    this.f.b(((ConversationEntityImpl)localObject1).getId());
    this.b.b((BaseEntity)localObject1);
    return localObject1;
  }
  
  public ConversationEntityImpl a(int paramInt, String paramString, long paramLong, boolean paramBoolean)
  {
    return a(paramInt, paramString, paramLong, "", 1, null, paramBoolean);
  }
  
  public ParticipantEntityImpl a(long paramLong1, int paramInt, long paramLong2)
  {
    ParticipantEntityImpl localParticipantEntityImpl = this.b.a(paramLong1, paramLong2);
    if (localParticipantEntityImpl == null)
    {
      localParticipantEntityImpl = b(paramLong1, paramInt, paramLong2);
      this.c.d(paramLong1, false);
    }
    while (paramInt == localParticipantEntityImpl.getStatus()) {
      return localParticipantEntityImpl;
    }
    localParticipantEntityImpl.setStatus(paramInt);
    this.b.b(localParticipantEntityImpl);
    this.c.d(paramLong1, false);
    return localParticipantEntityImpl;
  }
  
  public ParticipantInfoEntityImpl a()
  {
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = this.b.i();
    if (localParticipantInfoEntityImpl == null) {
      localParticipantInfoEntityImpl = b();
    }
    return localParticipantInfoEntityImpl;
  }
  
  public ParticipantInfoEntityImpl a(boolean paramBoolean, String paramString1, String paramString2, String paramString3, MessageEntityImpl paramMessageEntityImpl)
  {
    String str;
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl2;
    if (!paramString1.equals(ViberApplication.getInstance().getRegistrationValues().f()))
    {
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl1 = new ParticipantInfoEntityImpl();
      localParticipantInfoEntityImpl1.setParticipantType(1);
      localParticipantInfoEntityImpl1.setViberName(paramString2);
      localParticipantInfoEntityImpl1.setViberImage(paramString3);
      localParticipantInfoEntityImpl1.setNumber(paramString1);
      if ((paramMessageEntityImpl != null) && (paramMessageEntityImpl.getLat() != 0) && (paramMessageEntityImpl.getLng() != 0))
      {
        localParticipantInfoEntityImpl1.setLat(paramMessageEntityImpl.getLat());
        localParticipantInfoEntityImpl1.setLng(paramMessageEntityImpl.getLng());
        localParticipantInfoEntityImpl1.setLocationDate(paramMessageEntityImpl.getDate());
      }
      if (!paramBoolean)
      {
        com.viber.voip.contacts.b.b localb = ViberApplication.getInstance().getContactManager().b(paramString1);
        if (localb != null)
        {
          Uri localUri = localb.k();
          localParticipantInfoEntityImpl1.setContactId(localb.getId());
          localParticipantInfoEntityImpl1.setNativeContactId(localb.c());
          localParticipantInfoEntityImpl1.setContactName(localb.a());
          localParticipantInfoEntityImpl1.setNativePhotoId(localb.f());
          if (localUri == null) {
            break label230;
          }
          str = localUri.toString();
          localParticipantInfoEntityImpl1.setViberImage(str);
        }
      }
      this.b.a(localParticipantInfoEntityImpl1);
      this.c.g(localParticipantInfoEntityImpl1.getId(), false);
      localParticipantInfoEntityImpl2 = localParticipantInfoEntityImpl1;
    }
    label230:
    do
    {
      return localParticipantInfoEntityImpl2;
      str = "";
      break;
      localParticipantInfoEntityImpl2 = this.b.i();
    } while (localParticipantInfoEntityImpl2 != null);
    return b();
  }
  
  public ParticipantInfoEntityImpl a(boolean paramBoolean1, boolean paramBoolean2, String paramString, MessageEntityImpl paramMessageEntityImpl)
  {
    return a(paramBoolean1, paramBoolean2, paramString, null, null, paramMessageEntityImpl);
  }
  
  public ParticipantInfoEntityImpl a(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, String paramString3)
  {
    return a(paramBoolean1, paramBoolean2, paramString1, paramString2, paramString3, null);
  }
  
  public ParticipantInfoEntityImpl a(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, String paramString3, MessageEntityImpl paramMessageEntityImpl)
  {
    int i = 1;
    if (paramBoolean2)
    {
      localParticipantInfoEntityImpl = a();
      return localParticipantInfoEntityImpl;
    }
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = this.b.c(paramString1);
    if (localParticipantInfoEntityImpl == null) {
      return a(paramBoolean1, paramString1, paramString2, paramString3, paramMessageEntityImpl);
    }
    if ((paramString2 != null) && (!paramString2.equals(localParticipantInfoEntityImpl.getViberName())))
    {
      localParticipantInfoEntityImpl.setViberName(paramString2);
      this.b.b(localParticipantInfoEntityImpl);
    }
    for (int j = i;; j = 0)
    {
      if ((paramString3 != null) && (!paramString3.equals(localParticipantInfoEntityImpl.getViberImage())))
      {
        localParticipantInfoEntityImpl.setViberImage(paramString3);
        this.b.b(localParticipantInfoEntityImpl);
        j = i;
      }
      if ((paramMessageEntityImpl != null) && (!paramMessageEntityImpl.isPublicGroup()) && (paramMessageEntityImpl.getLng() != 0) && (paramMessageEntityImpl.getLat() != 0) && (localParticipantInfoEntityImpl.getLocationDate() < paramMessageEntityImpl.getDate()))
      {
        localParticipantInfoEntityImpl.setLat(paramMessageEntityImpl.getLat());
        localParticipantInfoEntityImpl.setLng(paramMessageEntityImpl.getLng());
        localParticipantInfoEntityImpl.setLocationDate(paramMessageEntityImpl.getDate());
        this.b.b(localParticipantInfoEntityImpl);
      }
      while (i != 0)
      {
        this.c.g(this.b.g(localParticipantInfoEntityImpl.getId()), false);
        return localParticipantInfoEntityImpl;
        i = j;
      }
      break;
    }
  }
  
  public PublicGroupMessageInfoEntityImpl a(long paramLong1, long paramLong2)
  {
    PublicGroupMessageInfoEntityImpl localPublicGroupMessageInfoEntityImpl = new PublicGroupMessageInfoEntityImpl();
    localPublicGroupMessageInfoEntityImpl.setMessageToken(paramLong1);
    localPublicGroupMessageInfoEntityImpl.setConversationId(paramLong2);
    localPublicGroupMessageInfoEntityImpl.setLiked(0);
    this.b.a(localPublicGroupMessageInfoEntityImpl);
    return localPublicGroupMessageInfoEntityImpl;
  }
  
  public void a(int paramInt1, long paramLong, int paramInt2, int paramInt3)
  {
    String str;
    PhoneControllerWrapper localPhoneControllerWrapper;
    if (paramInt3 != 3)
    {
      com.viber.voip.messages.controller.c.a locala = this.d;
      if (paramInt3 == 1)
      {
        str = "key_not_synced_group";
        locala.a(paramLong, str, true);
      }
    }
    else
    {
      localPhoneControllerWrapper = this.g.getPhoneController(false);
      if (localPhoneControllerWrapper.isInitialized()) {
        switch (paramInt3)
        {
        }
      }
    }
    PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl1;
    do
    {
      do
      {
        PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl2;
        do
        {
          return;
          str = "key_not_synced_public_group";
          break;
          localPhoneControllerWrapper.handleGetGroupInfo(paramInt1, paramLong);
          return;
          localPublicGroupConversationEntityImpl2 = this.b.b(paramLong);
        } while (localPublicGroupConversationEntityImpl2 == null);
        if (!TextUtils.isEmpty(localPublicGroupConversationEntityImpl2.getGroupUri()))
        {
          localPhoneControllerWrapper.handleGetPublicGroupInfoUri(paramInt1, localPublicGroupConversationEntityImpl2.getGroupUri());
          return;
        }
        int m = localPublicGroupConversationEntityImpl2.getGroupRole();
        if (paramInt2 > localPublicGroupConversationEntityImpl2.getRevision()) {}
        for (int n = paramInt2;; n = localPublicGroupConversationEntityImpl2.getRevision())
        {
          localPhoneControllerWrapper.handleGetPublicGroupInfo(paramInt1, paramLong, m, n);
          return;
        }
        localPublicGroupConversationEntityImpl1 = this.b.b(paramLong);
      } while (localPublicGroupConversationEntityImpl1 == null);
      int i = localPublicGroupConversationEntityImpl1.getGroupRole();
      if (i == 4) {
        i = 1;
      }
      int j = 0;
      if (i != 1) {
        if (!TextUtils.isEmpty(localPublicGroupConversationEntityImpl1.getBackgroundId()))
        {
          boolean bool = TextUtils.isEmpty(localPublicGroupConversationEntityImpl1.getIconId());
          j = 0;
          if (!bool) {}
        }
        else
        {
          j = 1;
        }
      }
      if (((paramInt2 >= 1) || (localPublicGroupConversationEntityImpl1.getRevision() >= 1)) && (j == 0))
      {
        if (paramInt2 > localPublicGroupConversationEntityImpl1.getRevision()) {}
        for (int k = paramInt2;; k = localPublicGroupConversationEntityImpl1.getRevision())
        {
          localPhoneControllerWrapper.handleGetPublicGroupInfo(paramInt1, paramLong, i, k);
          return;
        }
      }
    } while (TextUtils.isEmpty(localPublicGroupConversationEntityImpl1.getGroupUri()));
    localPhoneControllerWrapper.handleGetPublicGroupInfoUri(paramInt1, localPublicGroupConversationEntityImpl1.getGroupUri());
  }
  
  public void a(long paramLong)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.m(paramLong);
    if ((localMessageEntityImpl != null) && (localMessageEntityImpl.getStatus() == -1))
    {
      localMessageEntityImpl.setDate(System.currentTimeMillis());
      localMessageEntityImpl.setStatus(0);
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getId(), localMessageEntityImpl.getMessageToken(), true);
    }
  }
  
  public void a(long paramLong, int paramInt)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.m(paramLong);
    if (localMessageEntityImpl != null)
    {
      localMessageEntityImpl.setTwitterStatus(paramInt);
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
    }
  }
  
  public void a(long paramLong1, long paramLong2, long paramLong3)
  {
    if (this.b.a(paramLong1, paramLong2, paramLong3) > 0)
    {
      this.b.v(paramLong1);
      this.c.c(paramLong1, true);
    }
  }
  
  public void a(long paramLong, String paramString, int paramInt1, int paramInt2)
  {
    this.b.a(paramLong, paramString, paramInt1, paramInt2);
    MessageEntityImpl localMessageEntityImpl = this.b.m(paramLong);
    if (localMessageEntityImpl != null) {
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
    }
  }
  
  public void a(long paramLong, String paramString1, String paramString2)
  {
    if (this.b.a(paramLong, paramString1, paramString2) > 0) {
      this.c.d(paramLong, false);
    }
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    this.b.b(paramLong, paramBoolean);
    this.d.a(paramLong, "key_not_sync_mute_notification", true);
    this.c.d(paramLong, true);
  }
  
  public void a(CallEntityImpl paramCallEntityImpl, int paramInt)
  {
    int i = 1;
    MessageCallEntityImpl localMessageCallEntityImpl = new MessageCallEntityImpl(paramCallEntityImpl);
    MessageEntityImpl localMessageEntityImpl = new MessageEntityImpl();
    localMessageEntityImpl.setMessageSeq(this.g.getPhoneController(i).generateSequence());
    localMessageEntityImpl.setMessageToken(paramCallEntityImpl.p());
    localMessageEntityImpl.setDate(paramCallEntityImpl.h());
    localMessageEntityImpl.setCount(i);
    localMessageEntityImpl.setFlag(paramInt);
    localMessageEntityImpl.setDuration(paramCallEntityImpl.i());
    localMessageEntityImpl.setMimeType("call");
    localMessageEntityImpl.setStatus(2);
    if ((paramCallEntityImpl.l()) && ((paramInt & 0x40) == 0))
    {
      int k = i;
      localMessageEntityImpl.setUnread(k);
      int j;
      if ((paramCallEntityImpl.t()) || (paramCallEntityImpl.l())) {
        j = 0;
      }
      localMessageEntityImpl.setType(j);
      localMessageEntityImpl.setRecipientNumber(paramCallEntityImpl.g());
      if (!paramCallEntityImpl.o()) {
        break label238;
      }
      localMessageEntityImpl.setBody("vo");
    }
    for (;;)
    {
      localMessageEntityImpl.setExtraStatus(3);
      localMessageEntityImpl.setBucket("has_description");
      cv localcv = a(localMessageEntityImpl, localMessageCallEntityImpl);
      if ((paramCallEntityImpl.l()) && (!localMessageEntityImpl.isRead()) && (localcv.d != null)) {
        this.e.a(localcv.d, localcv.e, localMessageEntityImpl, localcv.c);
      }
      return;
      int m = 0;
      break;
      label238:
      if (paramCallEntityImpl.l()) {
        localMessageEntityImpl.setBody("missed_call");
      } else if (paramCallEntityImpl.m()) {
        localMessageEntityImpl.setBody("answ_another_dev");
      } else if (paramCallEntityImpl.n()) {
        localMessageEntityImpl.setBody("transferred");
      } else if (paramCallEntityImpl.u()) {
        localMessageEntityImpl.setBody("outgoing_call");
      } else {
        localMessageEntityImpl.setBody("incoming_call");
      }
    }
  }
  
  public void a(String paramString)
  {
    this.g.getPhoneController(false).addInitializedListener(new ct(this, paramString));
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    MessageEntityImpl localMessageEntityImpl = new com.viber.voip.messages.controller.b.b(0L, paramString1, 0).a("sms", paramString2, 0);
    if (paramBoolean) {}
    for (int i = 0;; i = 1)
    {
      localMessageEntityImpl.setUnread(i);
      localMessageEntityImpl.setType(0);
      cv localcv = a(localMessageEntityImpl);
      if ((!s.d()) && (!paramBoolean)) {
        this.e.a(localcv.d, localcv.e, localcv.f, localcv.c);
      }
      return;
    }
  }
  
  public void a(Set<Long> paramSet)
  {
    if (this.b.i(paramSet) > 0)
    {
      Map localMap = this.b.l(paramSet);
      Iterator localIterator = localMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        this.b.v(((Long)localEntry.getKey()).longValue());
        this.b.w(((Long)localEntry.getKey()).longValue());
        this.b.a(((Long)localEntry.getKey()).longValue(), ((Integer)localEntry.getValue()).intValue());
      }
      this.c.e(localMap.keySet(), false);
      this.c.b(localMap.keySet(), true);
      b(paramSet);
    }
  }
  
  public void a(Set<Long> paramSet, aa paramaa)
  {
    this.b.g(paramSet);
    this.c.f(paramSet, true);
    if (paramaa != null) {
      paramaa.a(paramSet);
    }
    ViberApplication.getInstance().getPhoneApp().a().a(paramSet);
    fz.a().a(this.b.p());
    c(paramSet);
    this.b.h(paramSet);
  }
  
  public void a(Set<Long> paramSet, boolean paramBoolean)
  {
    this.b.a(paramSet, paramBoolean);
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      Long localLong = (Long)localIterator.next();
      this.d.a(localLong.longValue(), "key_not_sync_mute_notification", true);
    }
    this.c.e(paramSet, true);
  }
  
  public void a(MessageEntityImpl[] paramArrayOfMessageEntityImpl)
  {
    int i = 0;
    while (i < paramArrayOfMessageEntityImpl.length)
    {
      MessageEntityImpl localMessageEntityImpl = paramArrayOfMessageEntityImpl[i];
      if ((TextUtils.isEmpty(localMessageEntityImpl.getRecipientNumber())) && (localMessageEntityImpl.getGroupId() <= 0L))
      {
        i++;
      }
      else
      {
        if (i == -1 + paramArrayOfMessageEntityImpl.length) {}
        for (boolean bool = true;; bool = false)
        {
          a(localMessageEntityImpl, bool);
          break;
        }
      }
    }
  }
  
  public ParticipantEntityImpl b(long paramLong1, int paramInt, long paramLong2)
  {
    ParticipantEntityImpl localParticipantEntityImpl = new ParticipantEntityImpl();
    localParticipantEntityImpl.setConversationId(paramLong1);
    localParticipantEntityImpl.setStatus(paramInt);
    localParticipantEntityImpl.setParticipantInfoId(paramLong2);
    this.b.a(localParticipantEntityImpl);
    return localParticipantEntityImpl;
  }
  
  public ParticipantInfoEntityImpl b()
  {
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = new ParticipantInfoEntityImpl();
    localParticipantInfoEntityImpl.setViberImage(UserData.getViberImage());
    localParticipantInfoEntityImpl.setViberName(UserData.getViberName());
    localParticipantInfoEntityImpl.setParticipantType(0);
    this.b.a(localParticipantInfoEntityImpl);
    this.c.g(localParticipantInfoEntityImpl.getId(), false);
    return localParticipantInfoEntityImpl;
  }
  
  public void b(long paramLong)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.m(paramLong);
    if ((localMessageEntityImpl != null) && (localMessageEntityImpl.getStatus() != 1) && (localMessageEntityImpl.getStatus() != 2))
    {
      localMessageEntityImpl.setLat(0);
      localMessageEntityImpl.setLng(0);
      localMessageEntityImpl.setStatus(0);
      localMessageEntityImpl.setExtraStatus(3);
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getId(), localMessageEntityImpl.getMessageToken(), true);
    }
  }
  
  public void b(long paramLong, int paramInt)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.m(paramLong);
    if (localMessageEntityImpl != null)
    {
      localMessageEntityImpl.setTwitterStatus(paramInt);
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
    }
  }
  
  public void b(long paramLong1, long paramLong2, long paramLong3)
  {
    if (this.b.a(paramLong1, paramLong2, paramLong3) > 0)
    {
      this.b.v(paramLong1);
      this.c.a(paramLong1, true);
    }
  }
  
  public void b(long paramLong, String paramString)
  {
    this.b.c(paramLong, paramString);
  }
  
  public void b(long paramLong, boolean paramBoolean)
  {
    this.b.a(paramLong, paramBoolean);
    this.d.a(paramLong, "key_not_sync_smart_notification", true);
    this.c.d(paramLong, true);
  }
  
  public void b(MessageEntityImpl paramMessageEntityImpl)
  {
    this.b.b(paramMessageEntityImpl);
    this.c.a(paramMessageEntityImpl.getConversationId(), paramMessageEntityImpl.getMessageToken(), false);
  }
  
  public void b(String paramString)
  {
    Iterator localIterator = this.b.a(this.g, paramString).iterator();
    while (localIterator.hasNext()) {
      ((Pair)localIterator.next());
    }
    this.g.getParticipantManager().b();
  }
  
  public void b(Set<Long> paramSet)
  {
    if (paramSet == null) {}
    Set localSet;
    do
    {
      return;
      localSet = this.b.j(paramSet);
    } while (localSet.size() <= 0);
    this.c.a(localSet);
  }
  
  public void c(long paramLong)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.m(paramLong);
    if ((localMessageEntityImpl != null) && (localMessageEntityImpl.getStatus() != 1) && (localMessageEntityImpl.getStatus() != 2))
    {
      localMessageEntityImpl.setStatus(-1);
      localMessageEntityImpl.setExtraStatus(2);
      this.b.b(localMessageEntityImpl);
      this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
    }
  }
  
  public void c(long paramLong, String paramString)
  {
    MessageEntityImpl localMessageEntityImpl = this.b.m(paramLong);
    if (localMessageEntityImpl != null) {
      if (!localMessageEntityImpl.isHasAnyStatus(new int[] { 1, 2 }))
      {
        ViberApplication.getInstance().getLocationManager().a(Long.valueOf(paramLong));
        if (paramString != null) {
          break label88;
        }
        localMessageEntityImpl.setStatus(-1);
        this.b.b(localMessageEntityImpl);
        this.c.a(localMessageEntityImpl.getConversationId(), localMessageEntityImpl.getMessageToken(), false);
      }
    }
    return;
    label88:
    if ((localMessageEntityImpl.getMediaFlag() == 0) && (localMessageEntityImpl.isImage()))
    {
      ac.a(h.a(l.d, localMessageEntityImpl.getMediaUri()));
      return;
    }
    ac.a(Uri.parse(localMessageEntityImpl.getMediaUri()));
  }
  
  public void c(long paramLong, boolean paramBoolean)
  {
    this.b.c(paramLong, paramBoolean);
  }
  
  public void c(Set<Long> paramSet)
  {
    if (paramSet == null) {}
    Set localSet;
    do
    {
      return;
      localSet = this.b.k(paramSet);
    } while (localSet.size() <= 0);
    this.c.a(localSet);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.cr
 * JD-Core Version:    0.7.0.1
 */