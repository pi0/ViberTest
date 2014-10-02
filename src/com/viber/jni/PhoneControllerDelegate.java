package com.viber.jni;

import java.util.Map;

public abstract interface PhoneControllerDelegate
{
  public abstract boolean IsGSMCallActive();
  
  public abstract int getPersistentSecureValue(String paramString1, String paramString2, String[] paramArrayOfString);
  
  public abstract int getPersistentValue(String paramString, String[] paramArrayOfString);
  
  @Deprecated
  public abstract String getVoiceStatsString();
  
  public abstract boolean onAddressBook(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, CAddressBookEntry[] paramArrayOfCAddressBookEntry);
  
  public abstract boolean onAnimatedMessageReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3);
  
  public abstract boolean onAnimatedMessageReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, String paramString4, int paramInt3);
  
  public abstract void onAnimatedMessagesSupported();
  
  public abstract void onAppsApiSupported();
  
  public abstract void onAuthenticateAppReply(String paramString, int paramInt1, int paramInt2, int paramInt3);
  
  public abstract void onBlockAppReply(int paramInt1, int paramInt2);
  
  public abstract void onBlockListReply(int paramInt);
  
  public abstract void onCallMissed(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2);
  
  public abstract void onChangeConversationSettingsReply(String paramString, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract void onChangeGroup(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract void onChangeGroupSettingsReply(long paramLong, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract void onChangeSettings(boolean paramBoolean);
  
  public abstract void onChangeSettingsReply(int paramInt1, int paramInt2);
  
  public abstract void onChangeUserActivitySettingsReply(int paramInt1, int paramInt2);
  
  public abstract void onCommError(int paramInt);
  
  public abstract void onCreateGroupReply(int paramInt1, int paramInt2, long paramLong, Map<String, Integer> paramMap);
  
  public abstract void onDebugInfo(int paramInt, String paramString1, String paramString2);
  
  public abstract void onEncryptedPhoneNumber(String paramString);
  
  public abstract boolean onFormattedMessageReceived(long paramLong1, String paramString1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3);
  
  public abstract void onGSMCallStateChanged(int paramInt, boolean paramBoolean);
  
  public abstract void onGSMStateChange(int paramInt, String paramString);
  
  public abstract void onGetBillingToken(long paramLong, String paramString);
  
  public abstract boolean onGetMissedCalls(CMissedCall[] paramArrayOfCMissedCall);
  
  public abstract void onGetPublicGroupLikes(int paramInt1, int paramInt2, boolean paramBoolean, long paramLong, Map<Integer, Integer> paramMap, int paramInt3);
  
  public abstract void onGetPublicGroupMessages(int paramInt1, long paramLong, PublicGroupMessage[] paramArrayOfPublicGroupMessage, PublicGroupChangeEvent[] paramArrayOfPublicGroupChangeEvent, int paramInt2);
  
  public abstract void onGetRecentMessagesEnded(int paramInt);
  
  public abstract void onGetUserActivity(Map<String, Integer> paramMap, int paramInt);
  
  public abstract void onGetUserAppsReply(int[] paramArrayOfInt, int paramInt1, int paramInt2);
  
  public abstract void onGetUsersDetail(CGetUserDetails[] paramArrayOfCGetUserDetails);
  
  public abstract void onGroupAddMember(long paramLong1, String paramString, long paramLong2, int paramInt);
  
  public abstract void onGroupAddMembers(long paramLong1, int paramInt1, long paramLong2, int paramInt2, String[] paramArrayOfString, Map<String, Integer> paramMap, int paramInt3, int paramInt4);
  
  public abstract boolean onGroupChanged(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, long paramLong3, String paramString3, String paramString4, int paramInt2, GroupUserInfo[] paramArrayOfGroupUserInfo);
  
  public abstract boolean onGroupConversationUpdate(long paramLong);
  
  public abstract void onGroupConversationUpdateReply(long paramLong);
  
  public abstract void onGroupInfo(int paramInt1, long paramLong, String paramString, GroupUserInfo[] paramArrayOfGroupUserInfo, int paramInt2, int paramInt3);
  
  public abstract void onGroupLeave(long paramLong1, long paramLong2, int paramInt);
  
  public abstract boolean onGroupMessageDelivered(long paramLong1, long paramLong2, String paramString, long paramLong3);
  
  public abstract void onGroupUserIsTyping(long paramLong, String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2);
  
  public abstract boolean onHandleSelfDetails(long paramLong, String paramString1, String paramString2, int paramInt);
  
  public abstract void onIsOnlineReply(String paramString, boolean paramBoolean);
  
  public abstract void onIsRegistered(int paramInt);
  
  public abstract void onIsRegisteredNumber(String paramString, int paramInt);
  
  public abstract void onJoinPublicGroup(long paramLong, int paramInt1, int paramInt2);
  
  public abstract void onKeepaliveReply();
  
  public abstract void onLBServerTime(long paramLong);
  
  public abstract void onLikePublicGroupMessage(long paramLong1, long paramLong2, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong3, int paramInt3);
  
  public abstract boolean onMediaReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5);
  
  public abstract boolean onMediaReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4);
  
  public abstract boolean onMessageDelivered(long paramLong1, long paramLong2, int paramInt1, int paramInt2);
  
  public abstract boolean onMessageStateUpdate(long paramLong, int paramInt);
  
  public abstract void onMuteGroupReply(long paramLong, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract void onPublicChatSupported(int paramInt);
  
  public abstract boolean onPublicGroupChanged(long paramLong1, int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, long paramLong2, long paramLong3, int paramInt4, String paramString3, GroupAddedMember[] paramArrayOfGroupAddedMember, int paramInt5, String paramString4, String paramString5, String paramString6, String[] paramArrayOfString, LocationInfo paramLocationInfo, String paramString7, int paramInt6);
  
  public abstract void onPublicGroupsUpdated(PGLatestParams[] paramArrayOfPGLatestParams, long paramLong);
  
  public abstract void onRecanonize(String paramString);
  
  public abstract void onRecoverGroups(RecoveryGroupInfo[] paramArrayOfRecoveryGroupInfo, PublicGroupInfo[] paramArrayOfPublicGroupInfo, String paramString, int paramInt1, int paramInt2, boolean paramBoolean);
  
  public abstract boolean onRegisteredNumbers(boolean paramBoolean1, boolean paramBoolean2, Map<String, String> paramMap, int paramInt1, int paramInt2, int paramInt3);
  
  public abstract boolean onRegisteredNumbers(boolean paramBoolean1, boolean paramBoolean2, Map<String, String> paramMap, int paramInt1, boolean paramBoolean3, String paramString1, String paramString2, int paramInt2, int paramInt3);
  
  public abstract void onRequestCanceled(int paramInt1, int paramInt2);
  
  public abstract void onSearchPublicGroups(int paramInt1, PublicGroupInfo[] paramArrayOfPublicGroupInfo, int paramInt2);
  
  public abstract boolean onSecondaryRegistered(long paramLong, int paramInt1, int paramInt2, int paramInt3);
  
  public abstract void onSelfVideoEnded(int paramInt);
  
  public abstract void onSendMessageReply(int paramInt1, long paramLong, int paramInt2, int paramInt3);
  
  public abstract void onSendTextReply(int paramInt1, long paramLong, int paramInt2);
  
  public abstract void onServiceStateChanged(int paramInt);
  
  public abstract void onShareAddressBook();
  
  public abstract void onShareAddressBookDone(boolean paramBoolean);
  
  public abstract void onShareAddressBookReply(boolean paramBoolean, int paramInt1, int paramInt2);
  
  public abstract void onShouldRegister();
  
  public abstract void onSignal(String paramString, int paramInt);
  
  public abstract boolean onSyncConversation(String paramString, long paramLong, int paramInt);
  
  public abstract void onSyncConversationReply(String paramString, long paramLong, int paramInt);
  
  public abstract boolean onSyncGroup(long paramLong1, long paramLong2, int paramInt);
  
  public abstract void onSyncGroupReply(long paramLong1, long paramLong2, int paramInt);
  
  public abstract boolean onSyncMessageLike(long paramLong1, long paramLong2, int paramInt, boolean paramBoolean, long paramLong3);
  
  public abstract boolean onSyncMessages(long[] paramArrayOfLong1, long[] paramArrayOfLong2);
  
  public abstract void onSyncMessagesReply(int paramInt1, long[] paramArrayOfLong, int paramInt2);
  
  public abstract void onTextDelivered(long paramLong1, long paramLong2);
  
  public abstract boolean onTextReceived(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3);
  
  public abstract boolean onTextReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, String paramString3, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString4, int paramInt3);
  
  public abstract void onUnregisterAppReply(int paramInt1, int paramInt2);
  
  public abstract boolean onUnregisteredNumber(String paramString);
  
  public abstract void onUpdateBadgeReply(boolean paramBoolean);
  
  public abstract void onUpdateLanguage(int paramInt);
  
  public abstract void onUpdateUserName(int paramInt);
  
  public abstract void onUpdateUserPhoto(int paramInt);
  
  public abstract void onUserInfoChange(long paramLong, String paramString1, String paramString2);
  
  public abstract void onUserIsTyping(String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2);
  
  public abstract void onValidatePublicGroupUri(String paramString, int paramInt1, int paramInt2);
  
  public abstract void onViberOutGroup(int paramInt);
  
  public abstract void onViberOutState(int paramInt);
  
  public abstract boolean onVideoReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5);
  
  public abstract boolean onVideoReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4);
  
  public abstract void onVoiceChannelStateChange(boolean paramBoolean);
  
  public abstract boolean onWebNotification(long paramLong, String paramString);
  
  public abstract void playTone(int paramInt);
  
  public abstract int removeAllPersistentSecureValues(String paramString);
  
  public abstract void removeBadge(String paramString);
  
  public abstract int setPersistentSecureValue(String paramString1, String paramString2, String paramString3);
  
  public abstract int setPersistentValue(String paramString1, String paramString2);
  
  public abstract boolean shouldAutoAnswer();
  
  public abstract void stopTone();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerDelegate
 * JD-Core Version:    0.7.0.1
 */