package com.viber.jni.controller;

import com.viber.jni.CAddressBookInfo;
import com.viber.jni.ConversationToken;
import com.viber.jni.CountryNameInfo;
import com.viber.jni.GroupToken;
import com.viber.jni.LocationInfo;
import com.viber.jni.connection.ConnectionController;
import com.viber.jni.dialer.DialerController;
import com.viber.jni.lastonline.LastOnlineController;
import com.viber.jni.ptt.PttController;
import com.viber.jni.publicgroup.PublicGroupController;
import com.viber.jni.secure.SecureCallsController;
import com.viber.jni.settings.SettingsController;
import com.viber.service.a;

public abstract interface PhoneController
{
  public abstract String canonizePhoneNumber(String paramString);
  
  public abstract String canonizePhoneNumberForCountryCode(int paramInt, String paramString);
  
  public abstract int connectivityTest(a parama);
  
  public abstract void disconnect();
  
  public abstract int done();
  
  public abstract String encodeCurrency(String paramString1, String paramString2);
  
  public abstract int generateSequence();
  
  public abstract ConnectionController getConnectionController();
  
  public abstract int getCountryCode(String paramString);
  
  public abstract CountryNameInfo getCountryName(String paramString);
  
  public abstract DialerController getDialerController();
  
  public abstract LastOnlineController getLastOnlineController();
  
  public abstract long getMyCID();
  
  public abstract long getMyVersion();
  
  public abstract long getPhoneType();
  
  public abstract PttController getPttController();
  
  public abstract PublicGroupController getPublicGroupController();
  
  public abstract SecureCallsController getSecureCallsController();
  
  public abstract SettingsController getSettingsController();
  
  public abstract void handleAppModeChanged(int paramInt);
  
  public abstract boolean handleAuthenticateApp(int paramInt1, String paramString, int paramInt2, int paramInt3);
  
  public abstract void handleBlockApp(int paramInt1, int paramInt2);
  
  public abstract void handleBlockList(String[] paramArrayOfString, int paramInt, boolean paramBoolean);
  
  public abstract boolean handleChangeConversationSettings(String paramString, boolean paramBoolean);
  
  public abstract boolean handleChangeGroup(long paramLong, String paramString, int paramInt);
  
  public abstract boolean handleChangeGroupSettings(long paramLong, boolean paramBoolean);
  
  public abstract boolean handleChangePublicGroup(long paramLong1, String paramString1, long paramLong2, long paramLong3, String paramString2, String[] paramArrayOfString, LocationInfo paramLocationInfo, String paramString3, int paramInt1, int paramInt2, int paramInt3);
  
  public abstract boolean handleChangeSettings(int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
  
  public abstract boolean handleChangeUserActivitySettings(int paramInt);
  
  public abstract void handleCommError(int paramInt);
  
  public abstract void handleConnectReject(long paramLong, int paramInt);
  
  public abstract void handleConnectivityChange(int paramInt);
  
  public abstract boolean handleCreateGroup(int paramInt, String[] paramArrayOfString, String paramString);
  
  public abstract boolean handleCreatePublicGroup(int paramInt, String paramString1, LocationInfo paramLocationInfo, String paramString2, String paramString3, long paramLong1, String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString4, long paramLong2, boolean paramBoolean);
  
  public abstract void handleDataInterruption(boolean paramBoolean);
  
  public abstract void handleDialConference(String paramString);
  
  public abstract void handleGSMStateChange(int paramInt);
  
  public abstract boolean handleGetBillingToken();
  
  public abstract boolean handleGetGroupInfo(int paramInt, long paramLong);
  
  public abstract boolean handleGetPublicGroupInfo(int paramInt1, long paramLong, int paramInt2, int paramInt3);
  
  public abstract boolean handleGetPublicGroupInfoUri(int paramInt, String paramString);
  
  public abstract boolean handleGetPublicGroupLikes(int paramInt1, long paramLong, int paramInt2, int paramInt3);
  
  public abstract boolean handleGetPublicGroupMessages(int paramInt1, long paramLong, int paramInt2);
  
  public abstract boolean handleGetUserActivity(String[] paramArrayOfString, int paramInt1, int paramInt2, long paramLong);
  
  public abstract boolean handleGetUsersDetail(String[] paramArrayOfString);
  
  public abstract boolean handleGroupAddMember(long paramLong, String paramString);
  
  public abstract boolean handleGroupAddMembers(long paramLong, int paramInt, String[] paramArrayOfString);
  
  public abstract boolean handleGroupLeave(long paramLong);
  
  public abstract boolean handleGroupUserIsTyping(long paramLong, boolean paramBoolean);
  
  public abstract boolean handleIsOnline(String paramString);
  
  public abstract boolean handleJoinPublicGroup(long paramLong1, int paramInt, String paramString, long paramLong2);
  
  public abstract boolean handleLikePublicGroupMessage(long paramLong1, long paramLong2, int paramInt1, boolean paramBoolean, long paramLong3, int paramInt2);
  
  public abstract boolean handleMuteGroup(long paramLong, boolean paramBoolean);
  
  public abstract void handleNetworkError(int paramInt, boolean paramBoolean);
  
  public abstract void handlePeerCapabilities(int paramInt);
  
  public abstract boolean handleRecanonizeAck(String paramString);
  
  public abstract boolean handleRecoverGroups();
  
  public abstract boolean handleReportFacebookStatistics(String paramString1, String paramString2);
  
  public abstract boolean handleSearchPublicGroupsByText(int paramInt1, String paramString1, String paramString2, int paramInt2);
  
  public abstract boolean handleSearchPublicGroupsForCountry(int paramInt1, String paramString, int paramInt2);
  
  public abstract boolean handleSecondaryRegisteredAck(long paramLong);
  
  public abstract boolean handleSendAddressBookForSecondaryAck(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean);
  
  public abstract boolean handleSendAnimatedMessage(String paramString1, byte[] paramArrayOfByte, int paramInt1, LocationInfo paramLocationInfo, String paramString2, boolean paramBoolean, int paramInt2, String paramString3, String paramString4);
  
  public abstract boolean handleSendAnimatedToGroup(long paramLong, byte[] paramArrayOfByte, int paramInt1, LocationInfo paramLocationInfo, String paramString1, boolean paramBoolean, int paramInt2, String paramString2, String paramString3);
  
  public abstract void handleSendGroupChangedAck(long paramLong);
  
  public abstract boolean handleSendMedia(String paramString1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, long paramLong, LocationInfo paramLocationInfo, String paramString2, int paramInt3, boolean paramBoolean, int paramInt4, String paramString3, String paramString4);
  
  public abstract boolean handleSendMediaToGroup(long paramLong1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, long paramLong2, LocationInfo paramLocationInfo, String paramString1, int paramInt3, boolean paramBoolean, int paramInt4, String paramString2, String paramString3);
  
  public abstract void handleSendMessageDeliveredAck(long paramLong);
  
  public abstract void handleSendMessageReceivedAck(long paramLong, boolean paramBoolean);
  
  public abstract void handleSendMessageReplyAck(long paramLong);
  
  public abstract boolean handleSendMissedCallsAck(long[] paramArrayOfLong);
  
  public abstract void handleSendPublicGroupsUpdatedAck(long paramLong);
  
  public abstract boolean handleSendRegisteredNumbersAck(int paramInt, boolean paramBoolean);
  
  public abstract boolean handleSendSyncConversationAck(String paramString, long paramLong, int paramInt);
  
  public abstract boolean handleSendSyncGroupAck(long paramLong1, long paramLong2, int paramInt);
  
  public abstract void handleSendSyncMessageLikeAck(long paramLong);
  
  public abstract boolean handleSendSyncMessagesAck(long[] paramArrayOfLong1, long[] paramArrayOfLong2);
  
  public abstract boolean handleSendText(String paramString1, String paramString2, int paramInt1, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt2);
  
  public abstract boolean handleSendTextToGroup(long paramLong, String paramString, int paramInt1, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt2);
  
  public abstract boolean handleSendUnregisteredNumbersAck(int paramInt);
  
  public abstract boolean handleSendUpdateSelfUserDetailsAck(long paramLong);
  
  public abstract boolean handleSendVideo(String paramString1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, long paramLong, LocationInfo paramLocationInfo, String paramString2, int paramInt2, boolean paramBoolean, int paramInt3, String paramString3, String paramString4);
  
  public abstract boolean handleSendVideoToGroup(long paramLong1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, long paramLong2, LocationInfo paramLocationInfo, String paramString1, int paramInt2, boolean paramBoolean, int paramInt3, String paramString2, String paramString3);
  
  public abstract boolean handleSetCanonizationRules(String paramString);
  
  public abstract boolean handleSyncConversation(String paramString, long paramLong, int paramInt);
  
  public abstract boolean handleSyncDeletedMessages(ConversationToken[] paramArrayOfConversationToken, GroupToken[] paramArrayOfGroupToken, int paramInt);
  
  public abstract boolean handleSyncGroup(long paramLong1, long paramLong2, int paramInt);
  
  public abstract boolean handleSyncMessageLikeAck(long paramLong);
  
  public abstract boolean handleUnregisterApp(int paramInt1, int paramInt2);
  
  public abstract boolean handleUpdateBadge(int paramInt);
  
  public abstract boolean handleUpdateExistingMsgStatus(long paramLong, int paramInt);
  
  public abstract boolean handleUpdateExistingMsgStatusAck(long paramLong);
  
  public abstract boolean handleUpdateGroupConversationStatus(long paramLong);
  
  public abstract boolean handleUpdateGroupConversationStatusAck(long paramLong);
  
  public abstract boolean handleUpdateLanguage(String paramString);
  
  public abstract boolean handleUpdateUserName(String paramString);
  
  public abstract boolean handleUpdateUserPhoto(long paramLong);
  
  public abstract boolean handleUserInfoChangeAck(long paramLong);
  
  public abstract boolean handleUserIsTyping(String paramString, boolean paramBoolean);
  
  public abstract boolean handleValidatePublicGroupUri(int paramInt, String paramString);
  
  public abstract boolean isConnected();
  
  public abstract boolean isInitialized();
  
  public abstract boolean isRakutenPhone(String paramString);
  
  public abstract boolean isReady();
  
  public abstract boolean isRegisteredNumber(String paramString);
  
  public abstract boolean isShortStandardBackgroundID(String paramString);
  
  public abstract boolean isVideoSupported();
  
  public abstract int lengthenStandartBackgroundID(String paramString, String[] paramArrayOfString);
  
  public abstract void notifyActivityOnForeground(boolean paramBoolean);
  
  public abstract void requestShutdown();
  
  public abstract void resetDeviceKey();
  
  public abstract void sendCallStartedNotificationToSN(long paramLong);
  
  public abstract void sendKA();
  
  public abstract boolean sendStatistics(String paramString);
  
  public abstract void sendTransferReqMsg(boolean paramBoolean, long paramLong, int paramInt);
  
  public abstract void setConnectionToken(long paramLong);
  
  public abstract void setDeviceKey(byte[] paramArrayOfByte);
  
  public abstract int setDeviceOrientation(int paramInt1, int paramInt2, int paramInt3);
  
  public abstract void setEnableVideo(boolean paramBoolean);
  
  public abstract void setPixieBundle(String paramString);
  
  public abstract void setPixieMode(int paramInt);
  
  public abstract boolean shareAddressBookList(CAddressBookInfo[] paramArrayOfCAddressBookInfo, int paramInt1, int paramInt2);
  
  public abstract boolean shareContact(CAddressBookInfo paramCAddressBookInfo, int paramInt1, int paramInt2);
  
  public abstract int shortenStandardBackgroundID(String paramString, long[] paramArrayOfLong);
  
  public abstract void startPixie(String paramString1, String paramString2, String paramString3, String paramString4, char paramChar);
  
  public abstract void testConnection(int paramInt);
  
  public abstract boolean updateData(String paramString);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.controller.PhoneController
 * JD-Core Version:    0.7.0.1
 */