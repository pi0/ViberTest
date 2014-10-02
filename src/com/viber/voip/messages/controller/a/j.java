package com.viber.voip.messages.controller.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.jni.ClientMessages.CGetGroupInfoReplyMsgStatus;
import com.viber.jni.GroupAddedMember;
import com.viber.jni.GroupUserInfo;
import com.viber.jni.LocationInfo;
import com.viber.jni.PGLatestParams;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PublicGroupInfo;
import com.viber.jni.PublicGroupUserInfo;
import com.viber.jni.RecoveryGroupInfo;
import com.viber.jni.publicgroup.PublicGroupControllerDelegate.InviteReceive;
import com.viber.jni.publicgroup.PublicGroupControllerDelegate.PublicGroupInfoReceiver;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ag;
import com.viber.voip.a.bc;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.GroupController.CreatePublicGroupData;
import com.viber.voip.messages.controller.GroupController.GroupMember;
import com.viber.voip.messages.controller.GroupController.PublicGroupChanger;
import com.viber.voip.messages.controller.b.c;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.controller.cq;
import com.viber.voip.messages.controller.cr;
import com.viber.voip.messages.controller.cv;
import com.viber.voip.messages.controller.cw;
import com.viber.voip.messages.controller.r;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupMessageInfoEntityImpl;
import com.viber.voip.registration.cp;
import com.viber.voip.util.hd;
import com.viber.voip.util.hv;
import java.util.ArrayList;
import java.util.List;

public class j
  extends b
  implements PublicGroupControllerDelegate.InviteReceive, PublicGroupControllerDelegate.PublicGroupInfoReceiver
{
  private cr k;
  private String l;
  private BroadcastReceiver m = new k(this);
  
  public j(Context paramContext, r paramr)
  {
    super(paramContext, paramr);
    this.k = new cr(paramContext);
    paramContext.registerReceiver(this.m, new IntentFilter("com.viber.voip.action.APP_ON_BACKGROUND"));
  }
  
  private void a(long paramLong, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 < paramInt1) && (paramInt3 == 3))
    {
      int i = this.b.generateSequence();
      ViberApplication.getInstance().getMessagesManager().d().a(i, paramLong, paramInt1);
    }
  }
  
  private void a(long paramLong1, long paramLong2, int paramInt)
  {
    String str1 = this.h.c(paramLong1, "key_change_group_name");
    this.h.a(paramLong1, new String[] { "key_change_group_name" });
    if (paramInt == 1)
    {
      String str2 = ViberApplication.getInstance().getRegistrationValues().f();
      cw localcw = this.k.a(paramLong1, str1);
      MessageEntityImpl localMessageEntityImpl = this.j.a(paramLong1, 1, System.currentTimeMillis(), str2, 16, paramLong2, com.viber.voip.messages.h.a(str2, localcw.b, localcw.c));
      this.d.a(paramInt);
      this.k.a(localMessageEntityImpl, localcw.a.getGroupName());
      return;
    }
    this.d.a(paramInt);
  }
  
  private void a(GroupController.PublicGroupChanger paramPublicGroupChanger, PublicGroupConversationEntityImpl paramPublicGroupConversationEntityImpl, ConversationEntityImpl paramConversationEntityImpl)
  {
    String str;
    if ((paramPublicGroupConversationEntityImpl != null) && (paramConversationEntityImpl != null) && (paramPublicGroupChanger != null) && (paramPublicGroupChanger.e > 0))
    {
      if ((0x4 & paramPublicGroupChanger.e) != 0)
      {
        if (!TextUtils.isEmpty(paramPublicGroupChanger.backgroundId)) {
          break label317;
        }
        paramPublicGroupConversationEntityImpl.setBackgroundId(paramPublicGroupChanger.c + "");
      }
      if ((0x2 & paramPublicGroupChanger.e) != 0)
      {
        com.viber.voip.messages.extras.image.h.c(ViberApplication.getInstance(), com.viber.voip.messages.extras.image.h.a(com.viber.voip.messages.extras.image.l.d, hv.b(paramPublicGroupConversationEntityImpl.getIconId()).toString()));
        if (!TextUtils.isEmpty(paramPublicGroupChanger.iconId)) {
          break label328;
        }
        str = paramPublicGroupChanger.b + "";
        label130:
        paramPublicGroupConversationEntityImpl.setIconId(str);
      }
      if ((0x40 & paramPublicGroupChanger.e) != 0) {
        paramPublicGroupConversationEntityImpl.setCountry(paramPublicGroupChanger.countryCode);
      }
      if ((0x1 & paramPublicGroupChanger.e) != 0) {
        paramConversationEntityImpl.setGroupName(paramPublicGroupChanger.groupName);
      }
      if ((0x20 & paramPublicGroupChanger.e) != 0)
      {
        paramPublicGroupConversationEntityImpl.setLocationLat(paramPublicGroupChanger.location.getNativeLatitude());
        paramPublicGroupConversationEntityImpl.setLocationLng(paramPublicGroupChanger.location.getNativeLongitude());
        if (!TextUtils.isEmpty(paramPublicGroupChanger.a)) {
          break label337;
        }
        this.i.a(paramPublicGroupChanger.location.getLatitude(), paramPublicGroupChanger.location.getLongitude(), paramConversationEntityImpl.getGroupId(), paramConversationEntityImpl.getId());
      }
    }
    for (;;)
    {
      if ((0x8 & paramPublicGroupChanger.e) != 0) {
        paramPublicGroupConversationEntityImpl.setTagLine(paramPublicGroupChanger.tagLine);
      }
      if ((0x10 & paramPublicGroupChanger.e) != 0) {
        paramPublicGroupConversationEntityImpl.setTagsArray(paramPublicGroupChanger.tags);
      }
      paramPublicGroupConversationEntityImpl.setRevision(paramPublicGroupChanger.revision);
      this.f.b(paramPublicGroupConversationEntityImpl);
      this.f.b(paramConversationEntityImpl);
      this.d.d(paramConversationEntityImpl.getId(), false);
      return;
      label317:
      paramPublicGroupConversationEntityImpl.setBackgroundId(paramPublicGroupChanger.backgroundId);
      break;
      label328:
      str = paramPublicGroupChanger.iconId;
      break label130;
      label337:
      paramPublicGroupConversationEntityImpl.setAddressString(paramPublicGroupChanger.a);
    }
  }
  
  public void a(long paramLong)
  {
    if (this.h.a("key_not_synced_public_group", true).contains(Long.valueOf(paramLong)))
    {
      this.h.a(paramLong, new String[] { "key_not_synced_public_group" });
      int i = this.b.generateSequence();
      this.k.a(i, paramLong, 0, 2);
    }
  }
  
  public void onChangeGroup(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ConversationEntityImpl localConversationEntityImpl = this.f.a(paramLong1);
    if (localConversationEntityImpl == null) {
      return;
    }
    if (localConversationEntityImpl.getConversationType() == 1)
    {
      a(paramLong1, paramLong2, paramInt4);
      return;
    }
    switch (paramInt4)
    {
    default: 
      this.d.a(paramInt1, paramLong1, paramInt4);
      this.i.d(paramInt1);
      return;
    case 1: 
      GroupController.PublicGroupChanger localPublicGroupChanger = (GroupController.PublicGroupChanger)this.i.b(paramInt1);
      if (localPublicGroupChanger == null)
      {
        this.k.a(paramInt1, paramLong1, paramInt3, 2);
        return;
      }
      PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = this.f.b(paramLong1);
      if (localConversationEntityImpl != null) {}
      for (String str = localConversationEntityImpl.getGroupName();; str = "")
      {
        localPublicGroupChanger.revision = paramInt3;
        a(localPublicGroupChanger, localPublicGroupConversationEntityImpl, localConversationEntityImpl);
        this.d.a(paramInt1, paramLong1, paramInt4);
        this.i.d(paramInt1);
        MessageEntityImpl localMessageEntityImpl = this.j.a(this.c, localPublicGroupChanger.e, localConversationEntityImpl, ViberApplication.getInstance().getRegistrationValues().f(), 16, System.currentTimeMillis(), paramLong2, localConversationEntityImpl.getGroupName(), str, paramInt2);
        if (localMessageEntityImpl == null) {
          break;
        }
        a(localMessageEntityImpl, localConversationEntityImpl.getGroupName(), true);
        return;
      }
    }
    this.h.a(paramLong1, "key_not_changed_public_group_info", paramInt1);
    this.k.a(paramInt1, paramLong1, 0, 2);
  }
  
  public void onEncryptedPhoneNumber(String paramString)
  {
    this.l = paramString;
  }
  
  public void onJoinPublicGroup(long paramLong, int paramInt1, int paramInt2)
  {
    a("onJoinPublicGroup groupID " + paramLong + ", status " + paramInt2);
    if ((paramInt2 == 2) || (paramInt2 == 0))
    {
      ConversationEntityImpl localConversationEntityImpl = this.f.a(paramLong);
      if (localConversationEntityImpl != null)
      {
        if (localConversationEntityImpl.getConversationType() != 2)
        {
          localConversationEntityImpl.setConversationType(2);
          this.f.b(localConversationEntityImpl);
          this.k.a(paramInt1, paramLong, 0, 2);
          this.d.d(localConversationEntityImpl.getId(), false);
          this.d.a(paramInt1, paramLong);
        }
        return;
      }
      a("onJoinPublicGroup groupID " + paramLong + " NO GROUP IN DB");
      this.d.c(paramInt1, paramInt2);
      return;
    }
    this.d.c(paramInt1, paramInt2);
  }
  
  public void onLikePublicGroupMessage(long paramLong1, long paramLong2, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong3, int paramInt3)
  {
    PublicGroupMessageInfoEntityImpl localPublicGroupMessageInfoEntityImpl;
    if (1 == paramInt3)
    {
      localPublicGroupMessageInfoEntityImpl = this.f.l(paramLong2);
      if (localPublicGroupMessageInfoEntityImpl != null) {
        if (localPublicGroupMessageInfoEntityImpl.getLiked() != 1) {
          break label57;
        }
      }
    }
    label57:
    for (boolean bool = true;; bool = false)
    {
      if (bool == paramBoolean) {
        localPublicGroupMessageInfoEntityImpl.setSyncLike(1);
      }
      this.f.b(localPublicGroupMessageInfoEntityImpl);
      return;
    }
  }
  
  public boolean onPublicGroupChanged(long paramLong1, int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, long paramLong2, long paramLong3, int paramInt4, String paramString3, GroupAddedMember[] paramArrayOfGroupAddedMember, int paramInt5, String paramString4, String paramString5, String paramString6, String[] paramArrayOfString, LocationInfo paramLocationInfo, String paramString7, int paramInt6)
  {
    ConversationEntityImpl localConversationEntityImpl = this.f.a(paramLong1);
    String str;
    if (localConversationEntityImpl != null)
    {
      str = localConversationEntityImpl.getGroupName();
      switch (paramInt2)
      {
      }
    }
    for (;;)
    {
      this.b.handleSendGroupChangedAck(paramLong3);
      return false;
      str = "";
      break;
      a(true, paramLong1, paramInt1, paramString2, paramInt3, paramLong2, paramLong3, paramString3, paramArrayOfGroupAddedMember, localConversationEntityImpl, paramInt4);
      continue;
      PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl2 = this.f.b(paramLong1);
      if ((localPublicGroupConversationEntityImpl2 != null) && (localConversationEntityImpl != null))
      {
        localPublicGroupConversationEntityImpl2.setWatchersCount(paramInt6);
        this.f.b(localPublicGroupConversationEntityImpl2);
        this.d.d(localConversationEntityImpl.getId(), false);
        continue;
        PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl1 = this.f.b(paramLong1);
        a(new GroupController.PublicGroupChanger(paramLocationInfo, paramString7, paramString3, paramArrayOfString, paramString6, paramString4, paramString5, paramInt1, paramInt5, paramLong1), localPublicGroupConversationEntityImpl1, localConversationEntityImpl);
        MessageEntityImpl localMessageEntityImpl = this.j.a(this.c, paramInt5, localConversationEntityImpl, paramString2, paramInt3, paramLong2, paramLong3, paramString3, str, paramInt4);
        if (localMessageEntityImpl != null)
        {
          if ((paramInt3 & 0x10) != 0) {}
          for (boolean bool = true;; bool = false)
          {
            a(localMessageEntityImpl, paramString3, bool);
            break;
          }
          a(localConversationEntityImpl, paramLong1, hd.a((ViberApplication)this.c.getApplicationContext(), paramString2, paramString2));
        }
      }
    }
  }
  
  public void onPublicGroupInfo(int paramInt1, long paramLong, int paramInt2, String paramString1, int paramInt3, String paramString2, String paramString3, String paramString4, LocationInfo paramLocationInfo, String paramString5, String paramString6, String[] paramArrayOfString, PublicGroupUserInfo[] paramArrayOfPublicGroupUserInfo, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean, int paramInt7)
  {
    if (paramInt7 == ClientMessages.CGetGroupInfoReplyMsgStatus.GROUP_REPLY_NOT_IN_GROUP)
    {
      this.h.a(paramLong, new String[] { "key_not_synced_public_group" });
      ConversationEntityImpl localConversationEntityImpl2 = this.k.a(2, "", paramLong, false);
      if (localConversationEntityImpl2 != null)
      {
        MessageEntityImpl localMessageEntityImpl2 = this.f.a(paramInt1);
        if (localMessageEntityImpl2 != null)
        {
          localMessageEntityImpl2.addExtraFlag(4);
          this.f.b(localMessageEntityImpl2);
        }
        this.i.a(localConversationEntityImpl2.getGroupId(), 3);
        this.k.a(paramInt1, paramLong, 0, 2);
      }
    }
    else if (paramInt7 != ClientMessages.CGetGroupInfoReplyMsgStatus.GROUP_REPLY_OK)
    {
      this.d.b(paramInt1, paramInt7);
      return;
    }
    ConversationEntityImpl localConversationEntityImpl1 = this.k.a(2, "", paramLong, false);
    PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = this.f.b(paramLong);
    if ((localConversationEntityImpl1 == null) || (localPublicGroupConversationEntityImpl == null))
    {
      this.h.a(paramLong, new String[] { "key_not_synced_public_group" });
      return;
    }
    if ((TextUtils.isEmpty(localPublicGroupConversationEntityImpl.getIconId())) || (!localPublicGroupConversationEntityImpl.getIconId().equals(paramString2))) {
      localPublicGroupConversationEntityImpl.setIconId(paramString2);
    }
    if (localConversationEntityImpl1.getConversationType() == 4) {}
    for (int i = 1;; i = 0)
    {
      localPublicGroupConversationEntityImpl.setBackgroundId(paramString3);
      localPublicGroupConversationEntityImpl.setIconId(paramString2);
      localPublicGroupConversationEntityImpl.setLocationLat(paramLocationInfo.getNativeLatitude());
      localPublicGroupConversationEntityImpl.setLocationLng(paramLocationInfo.getNativeLongitude());
      localPublicGroupConversationEntityImpl.setTagsArray(paramArrayOfString);
      localPublicGroupConversationEntityImpl.setTagLine(paramString6);
      localPublicGroupConversationEntityImpl.setCountry(paramString5);
      localPublicGroupConversationEntityImpl.setGroupUri(paramString1);
      localPublicGroupConversationEntityImpl.setIconId(paramString2);
      localPublicGroupConversationEntityImpl.setRevision(paramInt3);
      localPublicGroupConversationEntityImpl.setVerified(paramBoolean);
      if (paramInt6 != 0) {
        localPublicGroupConversationEntityImpl.setLastServerMessageId(paramInt5);
      }
      if (paramInt6 != -1) {
        localPublicGroupConversationEntityImpl.setWatchersCount(paramInt6);
      }
      localConversationEntityImpl1.setGroupName(paramString4);
      if (i != 0) {
        localConversationEntityImpl1.setConversationType(2);
      }
      this.f.b(localPublicGroupConversationEntityImpl);
      this.f.b(localConversationEntityImpl1);
      this.i.a(paramLocationInfo.getLatitude(), paramLocationInfo.getLongitude(), paramLong, localConversationEntityImpl1.getId());
      a(localConversationEntityImpl1.getId(), 2, paramInt4, this.l, paramArrayOfPublicGroupUserInfo);
      this.d.d(localConversationEntityImpl1.getId(), false);
      this.h.a(paramLong, new String[] { "key_not_synced_public_group" });
      List localList = this.h.a(paramLong, "key_not_changed_public_group_info");
      if ((localList != null) && (localList.size() > 0))
      {
        int j = ((Integer)localList.get(0)).intValue();
        GroupController.CreatePublicGroupData localCreatePublicGroupData = this.i.b(j);
        if (localCreatePublicGroupData != null)
        {
          localCreatePublicGroupData.revision = paramInt3;
          this.i.a(j, paramLong, (GroupController.PublicGroupChanger)localCreatePublicGroupData);
        }
        this.h.a(paramLong, new String[] { "key_not_changed_public_group_info" });
      }
      if ((localPublicGroupConversationEntityImpl.getGroupRole() == 4) && (i != 0))
      {
        MessageEntityImpl localMessageEntityImpl1 = this.f.a(paramInt1);
        if (localMessageEntityImpl1 != null)
        {
          localMessageEntityImpl1.setUnread(1);
          this.f.b(localMessageEntityImpl1);
          this.f.v(localConversationEntityImpl1.getId());
          this.g.a(localConversationEntityImpl1, null, localMessageEntityImpl1, false);
        }
      }
      a(paramLong, paramInt5, localPublicGroupConversationEntityImpl.getLastLocalMessageId(), localPublicGroupConversationEntityImpl.getGroupRole());
      return;
    }
  }
  
  public boolean onPublicGroupInvite(long paramLong1, String paramString1, long paramLong2, int paramInt1, String paramString2, long paramLong3, String paramString3, String paramString4, int paramInt2, int paramInt3)
  {
    if (!this.a)
    {
      this.b.handleSendMessageReceivedAck(paramLong1, false);
      return false;
    }
    com.viber.voip.j.a.a().b();
    MessageEntityImpl localMessageEntityImpl = new com.viber.voip.messages.controller.b.a(paramString1, null, paramLong1, paramLong2, 0, paramInt1, null).a(paramLong3, paramString4, paramString3, paramInt3, paramInt2, paramString2);
    cv localcv = this.k.a(localMessageEntityImpl);
    if ((localcv.a) || (localcv.b)) {
      if ((localcv.e != null) && (localcv.e.getContactId() > 0L)) {
        break label159;
      }
    }
    label159:
    for (boolean bool = true;; bool = false)
    {
      this.b.handleSendMessageReceivedAck(localMessageEntityImpl.getMessageToken(), bool);
      cq.a().a(localcv.d, localcv.e, localMessageEntityImpl, localcv.c);
      bc.a().a(com.viber.voip.a.a.F.c());
      return false;
    }
  }
  
  public void onPublicGroupsUpdated(PGLatestParams[] paramArrayOfPGLatestParams, long paramLong)
  {
    int i = paramArrayOfPGLatestParams.length;
    int j = 0;
    if (j < i)
    {
      PGLatestParams localPGLatestParams = paramArrayOfPGLatestParams[j];
      PublicGroupConversationEntityImpl localPublicGroupConversationEntityImpl = this.f.b(localPGLatestParams.getGroupID());
      ConversationEntityImpl localConversationEntityImpl;
      if (localPublicGroupConversationEntityImpl != null)
      {
        localPublicGroupConversationEntityImpl.setWatchersCount(localPGLatestParams.getNumWatchers());
        localPublicGroupConversationEntityImpl.setLastMessageText(localPGLatestParams.getLastMsgText());
        localPublicGroupConversationEntityImpl.setSenderPhone(localPGLatestParams.getSenderEncryptedPhone());
        localPublicGroupConversationEntityImpl.setLastMediaType(localPGLatestParams.getLastMediaType());
        localPublicGroupConversationEntityImpl.setLastServerMessageId(localPGLatestParams.getLastMsgID());
        this.f.b(localPublicGroupConversationEntityImpl);
        localConversationEntityImpl = this.f.a(localPGLatestParams.getGroupID());
        if (localConversationEntityImpl != null) {
          break label190;
        }
      }
      for (;;)
      {
        if (localPublicGroupConversationEntityImpl.getRevision() < localPGLatestParams.getRevision())
        {
          int n = this.b.generateSequence();
          this.k.a(n, localPGLatestParams.getGroupID(), localPGLatestParams.getRevision(), 2);
        }
        a(localPGLatestParams.getGroupID(), localPGLatestParams.getLastMsgID(), localPublicGroupConversationEntityImpl.getLastLocalMessageId(), localPublicGroupConversationEntityImpl.getGroupRole());
        j++;
        break;
        label190:
        if (!TextUtils.isEmpty(localPGLatestParams.getLastMsgText()))
        {
          localConversationEntityImpl.setLastMessageId(0L);
          localConversationEntityImpl.setDate(localPGLatestParams.getLastTimestampOfMsgs());
          if (localPublicGroupConversationEntityImpl.getLastLocalMessageId() > 0)
          {
            int i1 = localConversationEntityImpl.getUnreadMessagesCount() + localPGLatestParams.getLastMsgID() - localPublicGroupConversationEntityImpl.getLastLocalMessageId();
            if (i1 > 0) {
              localConversationEntityImpl.setUnreadMessagesCount(i1);
            }
          }
          this.f.b(localConversationEntityImpl);
          this.d.d(localConversationEntityImpl.getId(), false);
        }
      }
    }
    this.b.handleSendPublicGroupsUpdatedAck(paramLong);
  }
  
  public void onRecoverGroups(RecoveryGroupInfo[] paramArrayOfRecoveryGroupInfo, PublicGroupInfo[] paramArrayOfPublicGroupInfo, String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    boolean bool;
    if (paramInt1 == 0)
    {
      if (ViberApplication.isTablet()) {
        paramArrayOfPublicGroupInfo = new PublicGroupInfo[0];
      }
      int i = paramArrayOfRecoveryGroupInfo.length;
      for (int j = 0; j < i; j++)
      {
        RecoveryGroupInfo localRecoveryGroupInfo = paramArrayOfRecoveryGroupInfo[j];
        if (this.k.a(1, null, localRecoveryGroupInfo.groupId, false) == null)
        {
          ArrayList localArrayList = new ArrayList(localRecoveryGroupInfo.groupUserInfo.length);
          for (GroupUserInfo localGroupUserInfo : localRecoveryGroupInfo.groupUserInfo)
          {
            GroupController.GroupMember localGroupMember = new GroupController.GroupMember();
            localGroupMember.a = localGroupUserInfo;
            localGroupMember.c = hv.a(localGroupUserInfo.downloadID);
            localArrayList.add(localGroupMember);
          }
          this.k.a(localRecoveryGroupInfo.groupId, false, (GroupController.GroupMember[])localArrayList.toArray(new GroupController.GroupMember[localArrayList.size()]), localRecoveryGroupInfo.groupName);
        }
      }
      if ((paramArrayOfPublicGroupInfo != null) && (paramArrayOfPublicGroupInfo.length > 0)) {
        com.viber.voip.j.a.a().b();
      }
      int n = paramArrayOfPublicGroupInfo.length;
      for (int i1 = 0; i1 < n; i1++)
      {
        PublicGroupInfo localPublicGroupInfo = paramArrayOfPublicGroupInfo[i1];
        if (this.k.a(2, null, localPublicGroupInfo.groupID, false) == null)
        {
          a(this.k.a(0, localPublicGroupInfo.groupID, 2, localPublicGroupInfo.groupRole, localPublicGroupInfo.groupUri, localPublicGroupInfo.revision, false, null, null, localPublicGroupInfo).d.getId(), 2, localPublicGroupInfo.groupRole, paramString, localPublicGroupInfo.members);
          a(localPublicGroupInfo.groupID, localPublicGroupInfo.lastMessageId, 0, localPublicGroupInfo.groupRole);
        }
      }
      com.viber.voip.settings.l locall = ViberApplication.preferences();
      if (!paramBoolean)
      {
        bool = true;
        locall.a("need_recover_groups", bool);
      }
    }
    do
    {
      return;
      bool = false;
      break;
      if (paramInt1 == 1)
      {
        ViberApplication.preferences().a("need_recover_groups", true);
        return;
      }
    } while (paramInt1 != 2);
    ViberApplication.preferences().a("need_recover_groups", false);
  }
  
  public void onValidatePublicGroupUri(String paramString, int paramInt1, int paramInt2)
  {
    this.d.a(paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.j
 * JD-Core Version:    0.7.0.1
 */