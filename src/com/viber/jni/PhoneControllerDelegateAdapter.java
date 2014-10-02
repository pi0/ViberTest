package com.viber.jni;

import java.util.Map;

public class PhoneControllerDelegateAdapter
  implements PhoneControllerDelegate
{
  public boolean IsGSMCallActive()
  {
    return false;
  }
  
  public int getPersistentSecureValue(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public int getPersistentValue(String paramString, String[] paramArrayOfString)
  {
    return -1;
  }
  
  public String getVoiceStatsString()
  {
    return null;
  }
  
  public boolean onAddressBook(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, CAddressBookEntry[] paramArrayOfCAddressBookEntry)
  {
    return false;
  }
  
  public boolean onAnimatedMessageReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3)
  {
    return false;
  }
  
  public boolean onAnimatedMessageReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, String paramString4, int paramInt3)
  {
    return false;
  }
  
  public void onAnimatedMessagesSupported() {}
  
  public void onAppsApiSupported() {}
  
  public void onAuthenticateAppReply(String paramString, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onBlockAppReply(int paramInt1, int paramInt2) {}
  
  public void onBlockListReply(int paramInt) {}
  
  public void onCallMissed(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2) {}
  
  public void onChangeConversationSettingsReply(String paramString, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void onChangeGroup(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void onChangeGroupSettingsReply(long paramLong, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void onChangeSettings(boolean paramBoolean) {}
  
  public void onChangeSettingsReply(int paramInt1, int paramInt2) {}
  
  public void onChangeUserActivitySettingsReply(int paramInt1, int paramInt2) {}
  
  public void onCommError(int paramInt) {}
  
  public void onCreateGroupReply(int paramInt1, int paramInt2, long paramLong, Map<String, Integer> paramMap) {}
  
  public void onDebugInfo(int paramInt, String paramString1, String paramString2) {}
  
  public void onEncryptedPhoneNumber(String paramString) {}
  
  public boolean onFormattedMessageReceived(long paramLong1, String paramString1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3)
  {
    return false;
  }
  
  public void onGSMCallStateChanged(int paramInt, boolean paramBoolean) {}
  
  public void onGSMStateChange(int paramInt, String paramString) {}
  
  public void onGetBillingToken(long paramLong, String paramString) {}
  
  public boolean onGetMissedCalls(CMissedCall[] paramArrayOfCMissedCall)
  {
    return false;
  }
  
  public void onGetPublicGroupLikes(int paramInt1, int paramInt2, boolean paramBoolean, long paramLong, Map<Integer, Integer> paramMap, int paramInt3) {}
  
  public void onGetPublicGroupMessages(int paramInt1, long paramLong, PublicGroupMessage[] paramArrayOfPublicGroupMessage, PublicGroupChangeEvent[] paramArrayOfPublicGroupChangeEvent, int paramInt2) {}
  
  public void onGetRecentMessagesEnded(int paramInt) {}
  
  public void onGetUserActivity(Map<String, Integer> paramMap, int paramInt) {}
  
  public void onGetUserAppsReply(int[] paramArrayOfInt, int paramInt1, int paramInt2) {}
  
  public void onGetUsersDetail(CGetUserDetails[] paramArrayOfCGetUserDetails) {}
  
  public void onGroupAddMember(long paramLong1, String paramString, long paramLong2, int paramInt) {}
  
  public void onGroupAddMembers(long paramLong1, int paramInt1, long paramLong2, int paramInt2, String[] paramArrayOfString, Map<String, Integer> paramMap, int paramInt3, int paramInt4) {}
  
  public boolean onGroupChanged(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, long paramLong3, String paramString3, String paramString4, int paramInt2, GroupUserInfo[] paramArrayOfGroupUserInfo)
  {
    return false;
  }
  
  public boolean onGroupConversationUpdate(long paramLong)
  {
    return false;
  }
  
  public void onGroupConversationUpdateReply(long paramLong) {}
  
  public void onGroupInfo(int paramInt1, long paramLong, String paramString, GroupUserInfo[] paramArrayOfGroupUserInfo, int paramInt2, int paramInt3) {}
  
  public void onGroupLeave(long paramLong1, long paramLong2, int paramInt) {}
  
  public boolean onGroupMessageDelivered(long paramLong1, long paramLong2, String paramString, long paramLong3)
  {
    return false;
  }
  
  public void onGroupUserIsTyping(long paramLong, String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2) {}
  
  public boolean onHandleSelfDetails(long paramLong, String paramString1, String paramString2, int paramInt)
  {
    return false;
  }
  
  public void onIsOnlineReply(String paramString, boolean paramBoolean) {}
  
  public void onIsRegistered(int paramInt) {}
  
  public void onIsRegisteredNumber(String paramString, int paramInt) {}
  
  public void onJoinPublicGroup(long paramLong, int paramInt1, int paramInt2) {}
  
  public void onKeepaliveReply() {}
  
  public void onLBServerTime(long paramLong) {}
  
  public void onLikePublicGroupMessage(long paramLong1, long paramLong2, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong3, int paramInt3) {}
  
  public boolean onMediaReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return false;
  }
  
  public boolean onMediaReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4)
  {
    return false;
  }
  
  public boolean onMessageDelivered(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public boolean onMessageStateUpdate(long paramLong, int paramInt)
  {
    return false;
  }
  
  public void onMuteGroupReply(long paramLong, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void onPublicChatSupported(int paramInt) {}
  
  public boolean onPublicGroupChanged(long paramLong1, int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, long paramLong2, long paramLong3, int paramInt4, String paramString3, GroupAddedMember[] paramArrayOfGroupAddedMember, int paramInt5, String paramString4, String paramString5, String paramString6, String[] paramArrayOfString, LocationInfo paramLocationInfo, String paramString7, int paramInt6)
  {
    return false;
  }
  
  public void onPublicGroupsUpdated(PGLatestParams[] paramArrayOfPGLatestParams, long paramLong) {}
  
  public void onRecanonize(String paramString) {}
  
  public void onRecoverGroups(RecoveryGroupInfo[] paramArrayOfRecoveryGroupInfo, PublicGroupInfo[] paramArrayOfPublicGroupInfo, String paramString, int paramInt1, int paramInt2, boolean paramBoolean) {}
  
  public boolean onRegisteredNumbers(boolean paramBoolean1, boolean paramBoolean2, Map<String, String> paramMap, int paramInt1, int paramInt2, int paramInt3)
  {
    return false;
  }
  
  public boolean onRegisteredNumbers(boolean paramBoolean1, boolean paramBoolean2, Map<String, String> paramMap, int paramInt1, boolean paramBoolean3, String paramString1, String paramString2, int paramInt2, int paramInt3)
  {
    return false;
  }
  
  public void onRequestCanceled(int paramInt1, int paramInt2) {}
  
  public void onSearchPublicGroups(int paramInt1, PublicGroupInfo[] paramArrayOfPublicGroupInfo, int paramInt2) {}
  
  public boolean onSecondaryRegistered(long paramLong, int paramInt1, int paramInt2, int paramInt3)
  {
    return false;
  }
  
  public void onSelfVideoEnded(int paramInt) {}
  
  public void onSendMessageReply(int paramInt1, long paramLong, int paramInt2, int paramInt3) {}
  
  public void onSendTextReply(int paramInt1, long paramLong, int paramInt2) {}
  
  public void onServiceStateChanged(int paramInt) {}
  
  public void onShareAddressBook() {}
  
  public void onShareAddressBookDone(boolean paramBoolean) {}
  
  public void onShareAddressBookReply(boolean paramBoolean, int paramInt1, int paramInt2) {}
  
  public void onShouldRegister() {}
  
  public void onSignal(String paramString, int paramInt) {}
  
  public boolean onSyncConversation(String paramString, long paramLong, int paramInt)
  {
    return false;
  }
  
  public void onSyncConversationReply(String paramString, long paramLong, int paramInt) {}
  
  public boolean onSyncGroup(long paramLong1, long paramLong2, int paramInt)
  {
    return false;
  }
  
  public void onSyncGroupReply(long paramLong1, long paramLong2, int paramInt) {}
  
  public boolean onSyncMessageLike(long paramLong1, long paramLong2, int paramInt, boolean paramBoolean, long paramLong3)
  {
    return false;
  }
  
  public boolean onSyncMessages(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    return false;
  }
  
  public void onSyncMessagesReply(int paramInt1, long[] paramArrayOfLong, int paramInt2) {}
  
  public void onTextDelivered(long paramLong1, long paramLong2) {}
  
  public boolean onTextReceived(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3)
  {
    return false;
  }
  
  public boolean onTextReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, String paramString3, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString4, int paramInt3)
  {
    return false;
  }
  
  public void onUnregisterAppReply(int paramInt1, int paramInt2) {}
  
  public boolean onUnregisteredNumber(String paramString)
  {
    return false;
  }
  
  public void onUpdateBadgeReply(boolean paramBoolean) {}
  
  public void onUpdateLanguage(int paramInt) {}
  
  public void onUpdateUserName(int paramInt) {}
  
  public void onUpdateUserPhoto(int paramInt) {}
  
  public void onUserInfoChange(long paramLong, String paramString1, String paramString2) {}
  
  public void onUserIsTyping(String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2) {}
  
  public void onValidatePublicGroupUri(String paramString, int paramInt1, int paramInt2) {}
  
  public void onViberOutGroup(int paramInt) {}
  
  public void onViberOutState(int paramInt) {}
  
  public boolean onVideoReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return false;
  }
  
  public boolean onVideoReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4)
  {
    return false;
  }
  
  public void onVoiceChannelStateChange(boolean paramBoolean) {}
  
  public boolean onWebNotification(long paramLong, String paramString)
  {
    return false;
  }
  
  public void playTone(int paramInt) {}
  
  public int removeAllPersistentSecureValues(String paramString)
  {
    return -1;
  }
  
  public void removeBadge(String paramString) {}
  
  public int setPersistentSecureValue(String paramString1, String paramString2, String paramString3)
  {
    return -1;
  }
  
  public int setPersistentValue(String paramString1, String paramString2)
  {
    return -1;
  }
  
  public boolean shouldAutoAnswer()
  {
    return false;
  }
  
  public void stopTone() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerDelegateAdapter
 * JD-Core Version:    0.7.0.1
 */