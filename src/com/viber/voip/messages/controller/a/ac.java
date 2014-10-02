package com.viber.voip.messages.controller.a;

import android.os.Handler;
import com.viber.jni.GroupAddedMember;
import com.viber.jni.GroupUserInfo;
import com.viber.jni.LocationInfo;
import com.viber.jni.PGLatestParams;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PublicGroupChangeEvent;
import com.viber.jni.PublicGroupInfo;
import com.viber.jni.PublicGroupMessage;
import com.viber.jni.RecoveryGroupInfo;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.e;
import java.util.Map;
import java.util.Set;

public class ac
  extends a
{
  private final Handler c;
  private final Handler d;
  private final a[] e;
  private int f = -1;
  
  public ac(Handler paramHandler1, Handler paramHandler2, a... paramVarArgs)
  {
    this.c = paramHandler1;
    this.e = paramVarArgs;
    this.d = paramHandler2;
  }
  
  protected Handler a()
  {
    return this.c;
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    a[] arrayOfa = this.e;
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].a(paramPhoneControllerWrapper);
    }
  }
  
  public void a(Set<e> paramSet)
  {
    this.c.post(new bi(this, paramSet));
  }
  
  public boolean onAnimatedMessageReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3)
  {
    this.c.post(new bm(this, paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString2, paramString3));
    return false;
  }
  
  public boolean onAnimatedMessageReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, String paramString4, int paramInt3)
  {
    this.c.post(new bn(this, paramLong1, paramString1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString3, paramString4, paramInt3));
    return false;
  }
  
  public void onChangeConversationSettingsReply(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.c.post(new av(this, paramString, paramBoolean1, paramBoolean2));
  }
  
  public void onChangeGroup(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.post(new bq(this, paramLong1, paramLong2, paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public void onChangeGroupSettingsReply(long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.c.post(new ap(this, paramLong, paramBoolean1, paramBoolean2));
  }
  
  public void onCreateGroupReply(int paramInt1, int paramInt2, long paramLong, Map<String, Integer> paramMap)
  {
    this.c.post(new af(this, paramInt1, paramInt2, paramLong, paramMap));
  }
  
  public void onEncryptedPhoneNumber(String paramString)
  {
    this.c.post(new bl(this, paramString));
  }
  
  public void onGetPublicGroupMessages(int paramInt1, long paramLong, PublicGroupMessage[] paramArrayOfPublicGroupMessage, PublicGroupChangeEvent[] paramArrayOfPublicGroupChangeEvent, int paramInt2)
  {
    dc.a(dk.g).post(new ai(this, paramInt1, paramLong, paramArrayOfPublicGroupMessage, paramArrayOfPublicGroupChangeEvent, paramInt2));
  }
  
  public void onGetRecentMessagesEnded(int paramInt)
  {
    this.c.post(new an(this, paramInt));
  }
  
  public void onGroupAddMember(long paramLong1, String paramString, long paramLong2, int paramInt)
  {
    this.c.post(new al(this, paramLong1, paramString, paramLong2, paramInt));
  }
  
  public void onGroupAddMembers(long paramLong1, int paramInt1, long paramLong2, int paramInt2, String[] paramArrayOfString, Map<String, Integer> paramMap, int paramInt3, int paramInt4)
  {
    this.c.post(new am(this, paramLong1, paramInt1, paramLong2, paramInt2, paramArrayOfString, paramMap, paramInt3, paramInt4));
  }
  
  public boolean onGroupChanged(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, long paramLong3, String paramString3, String paramString4, int paramInt2, GroupUserInfo[] paramArrayOfGroupUserInfo)
  {
    this.c.post(new bp(this, paramLong1, paramString1, paramString2, paramLong2, paramInt1, paramLong3, paramString3, paramString4, paramInt2, paramArrayOfGroupUserInfo));
    return false;
  }
  
  public void onGroupInfo(int paramInt1, long paramLong, String paramString, GroupUserInfo[] paramArrayOfGroupUserInfo, int paramInt2, int paramInt3)
  {
    this.c.post(new ah(this, paramInt1, paramLong, paramString, paramArrayOfGroupUserInfo, paramInt2, paramInt3));
  }
  
  public void onGroupLeave(long paramLong1, long paramLong2, int paramInt)
  {
    this.c.post(new bd(this, paramLong1, paramLong2, paramInt));
  }
  
  public boolean onHandleSelfDetails(long paramLong, String paramString1, String paramString2, int paramInt)
  {
    this.c.post(new ba(this, paramLong, paramString1, paramString2, paramInt));
    return false;
  }
  
  public void onJoinPublicGroup(long paramLong, int paramInt1, int paramInt2)
  {
    dc.a(dk.g).post(new aj(this, paramLong, paramInt1, paramInt2));
  }
  
  public void onLikePublicGroupMessage(long paramLong1, long paramLong2, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong3, int paramInt3)
  {
    this.c.post(new bj(this, paramLong1, paramLong2, paramInt1, paramBoolean, paramInt2, paramLong3, paramInt3));
  }
  
  public boolean onMediaReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.c.post(new az(this, paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString2, paramString3, paramString4, paramString5));
    return false;
  }
  
  public boolean onMediaReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4)
  {
    this.c.post(new bk(this, paramLong1, paramString1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString3, paramString4, paramString5, paramString6, paramInt4));
    return false;
  }
  
  public boolean onMessageDelivered(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    this.d.post(new ar(this, paramLong1, paramLong2, paramInt1, paramInt2));
    return false;
  }
  
  public void onMuteGroupReply(long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.c.post(new aw(this, paramLong, paramBoolean1, paramBoolean2));
  }
  
  public boolean onPublicGroupChanged(long paramLong1, int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, long paramLong2, long paramLong3, int paramInt4, String paramString3, GroupAddedMember[] paramArrayOfGroupAddedMember, int paramInt5, String paramString4, String paramString5, String paramString6, String[] paramArrayOfString, LocationInfo paramLocationInfo, String paramString7, int paramInt6)
  {
    this.c.post(new bo(this, paramLong1, paramInt1, paramString1, paramString2, paramInt2, paramInt3, paramLong2, paramLong3, paramInt4, paramString3, paramArrayOfGroupAddedMember, paramInt5, paramString4, paramString5, paramString6, paramArrayOfString, paramLocationInfo, paramString7, paramInt6));
    return false;
  }
  
  public void onPublicGroupsUpdated(PGLatestParams[] paramArrayOfPGLatestParams, long paramLong)
  {
    this.c.post(new ak(this, paramArrayOfPGLatestParams, paramLong));
  }
  
  public void onRecoverGroups(RecoveryGroupInfo[] paramArrayOfRecoveryGroupInfo, PublicGroupInfo[] paramArrayOfPublicGroupInfo, String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.c.post(new be(this, paramArrayOfRecoveryGroupInfo, paramArrayOfPublicGroupInfo, paramString, paramInt1, paramInt2, paramBoolean));
  }
  
  public boolean onSecondaryRegistered(long paramLong, int paramInt1, int paramInt2, int paramInt3)
  {
    this.c.post(new bh(this, paramLong, paramInt1, paramInt2, paramInt3));
    return false;
  }
  
  public void onSendMessageReply(int paramInt1, long paramLong, int paramInt2, int paramInt3)
  {
    this.d.post(new ae(this, paramInt1, paramLong, paramInt2, paramInt3));
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    if (this.f == paramInt) {
      return;
    }
    this.f = paramInt;
    this.c.post(new ay(this, paramInt));
  }
  
  public boolean onSyncConversation(String paramString, long paramLong, int paramInt)
  {
    this.c.post(new bb(this, paramString, paramLong, paramInt));
    return false;
  }
  
  public void onSyncConversationReply(String paramString, long paramLong, int paramInt)
  {
    this.c.post(new bc(this, paramString, paramLong, paramInt));
  }
  
  public boolean onSyncGroup(long paramLong1, long paramLong2, int paramInt)
  {
    this.c.post(new au(this, paramLong1, paramLong2, paramInt));
    return false;
  }
  
  public void onSyncGroupReply(long paramLong1, long paramLong2, int paramInt)
  {
    this.c.post(new at(this, paramLong1, paramLong2, paramInt));
  }
  
  public boolean onSyncMessages(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    this.c.post(new aq(this, paramArrayOfLong1, paramArrayOfLong2));
    return false;
  }
  
  public void onSyncMessagesReply(int paramInt1, long[] paramArrayOfLong, int paramInt2)
  {
    this.c.post(new as(this, paramInt1, paramArrayOfLong, paramInt2));
  }
  
  public boolean onTextReceived(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3)
  {
    this.c.post(new ad(this, paramLong1, paramString1, paramString2, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString3));
    return false;
  }
  
  public boolean onTextReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, String paramString3, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString4, int paramInt3)
  {
    this.c.post(new ao(this, paramLong1, paramString1, paramLong2, paramString2, paramString3, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString4, paramInt3));
    return false;
  }
  
  public void onUpdateUserName(int paramInt)
  {
    a[] arrayOfa = this.e;
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onUpdateUserName(paramInt);
    }
  }
  
  public void onUpdateUserPhoto(int paramInt)
  {
    a[] arrayOfa = this.e;
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onUpdateUserPhoto(paramInt);
    }
  }
  
  public void onUserInfoChange(long paramLong, String paramString1, String paramString2)
  {
    this.c.post(new ax(this, paramLong, paramString1, paramString2));
  }
  
  public void onValidatePublicGroupUri(String paramString, int paramInt1, int paramInt2)
  {
    dc.a(dk.g).post(new ag(this, paramString, paramInt1, paramInt2));
  }
  
  public boolean onVideoReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.c.post(new bf(this, paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString2, paramString3, paramString4, paramString5));
    return false;
  }
  
  public boolean onVideoReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4)
  {
    this.c.post(new bg(this, paramLong1, paramString1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString3, paramString4, paramString5, paramString6, paramInt4));
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ac
 * JD-Core Version:    0.7.0.1
 */