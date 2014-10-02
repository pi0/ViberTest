package com.viber.jni;

import android.content.Intent;
import com.viber.jni.connection.ConnectionController;
import com.viber.jni.controller.PhoneController;
import com.viber.jni.dialer.DialerController;
import com.viber.jni.lastonline.LastOnlineController;
import com.viber.jni.ptt.PttController;
import com.viber.jni.publicgroup.PublicGroupController;
import com.viber.jni.secure.SecureCallsController;
import com.viber.jni.settings.SettingsController;
import com.viber.service.a;
import com.viber.voip.ViberApplication;

public class PhoneControllerHelper
  implements ConnectionController, PhoneController, DialerController, LastOnlineController, PttController, PublicGroupController, SecureCallsController, SettingsController
{
  private static PhoneControllerDelegate mDelegate;
  private static boolean mInitialized = false;
  private static PhoneControllerHelper mInstance;
  private static boolean mReady = false;
  
  private void exit()
  {
    Intent localIntent = new Intent("com.viber.voip.action.VIBER_SERVICE_EXIT");
    ViberApplication.getInstance().sendBroadcast(localIntent);
  }
  
  static PhoneControllerHelper getInstance()
  {
    if (mInstance == null) {
      mInstance = new PhoneControllerHelper();
    }
    return mInstance;
  }
  
  private native int init(PhoneControllerInitializer paramPhoneControllerInitializer);
  
  public int Init(PhoneControllerInitializer paramPhoneControllerInitializer)
  {
    for (;;)
    {
      try
      {
        if (!mInitialized)
        {
          i = init(paramPhoneControllerInitializer);
          mDelegate = paramPhoneControllerInitializer._delegate;
          if (i != 0)
          {
            ViberApplication.log(6, "PhoneControllerHelper", "PhoneControllerHelper INIT FAIL Status=" + i);
            exit();
            return i;
          }
          mInitialized = true;
          continue;
        }
        int i = 0;
      }
      finally {}
    }
  }
  
  public native int bunzip2(String paramString1, String paramString2, boolean paramBoolean);
  
  public native boolean bzip2_supported();
  
  public native String canonizePhoneNumber(String paramString);
  
  public native String canonizePhoneNumberForCountryCode(int paramInt, String paramString);
  
  public native int connectivityTest(a parama);
  
  public native void disconnect();
  
  public native int done();
  
  public native String encodeCurrency(String paramString1, String paramString2);
  
  public native int generateSequence();
  
  public ConnectionController getConnectionController()
  {
    return this;
  }
  
  public native int getCountryCode(String paramString);
  
  public native CountryNameInfo getCountryName(String paramString);
  
  public DialerController getDialerController()
  {
    return this;
  }
  
  public native boolean getIsVoTrialCall();
  
  public LastOnlineController getLastOnlineController()
  {
    return this;
  }
  
  public native MediaStats getMediaStats();
  
  public native long getMyCID();
  
  public native long getMyVersion();
  
  public native int getPhoneState();
  
  public native long getPhoneType();
  
  public PttController getPttController()
  {
    return this;
  }
  
  public PublicGroupController getPublicGroupController()
  {
    return this;
  }
  
  public SecureCallsController getSecureCallsController()
  {
    return this;
  }
  
  public SettingsController getSettingsController()
  {
    return this;
  }
  
  public native VoiceStats getVoiceStats(VoiceStats paramVoiceStats);
  
  public native void handleAnswer();
  
  public native void handleAppModeChanged(int paramInt);
  
  public native boolean handleAuthenticateApp(int paramInt1, String paramString, int paramInt2, int paramInt3);
  
  public native void handleBlockApp(int paramInt1, int paramInt2);
  
  public native void handleBlockList(String[] paramArrayOfString, int paramInt, boolean paramBoolean);
  
  public native void handleCallMissed(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2, boolean paramBoolean);
  
  public native void handleCallReceived(long paramLong1, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, String paramString3, long paramLong2, int paramInt1, int paramInt2, long paramLong3);
  
  public native void handleCallStarted();
  
  public native boolean handleChangeConversationSettings(String paramString, boolean paramBoolean);
  
  public native boolean handleChangeGroup(long paramLong, String paramString, int paramInt);
  
  public native boolean handleChangeGroupSettings(long paramLong, boolean paramBoolean);
  
  public native boolean handleChangeLastOnlineSettings(int paramInt);
  
  public native boolean handleChangePublicGroup(long paramLong1, String paramString1, long paramLong2, long paramLong3, String paramString2, String[] paramArrayOfString, LocationInfo paramLocationInfo, String paramString3, int paramInt1, int paramInt2, int paramInt3);
  
  public native boolean handleChangeReadNotificationsSettings(int paramInt);
  
  public native boolean handleChangeSettings(int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
  
  public native boolean handleChangeUserActivitySettings(int paramInt);
  
  public native int handleClearSecureCallStorage();
  
  public native void handleClose();
  
  public native void handleCommError(int paramInt);
  
  public native void handleConnectReject(long paramLong, int paramInt);
  
  public native void handleConnectivityChange(int paramInt);
  
  public native boolean handleCreateGroup(int paramInt, String[] paramArrayOfString, String paramString);
  
  public native boolean handleCreatePublicGroup(int paramInt, String paramString1, LocationInfo paramLocationInfo, String paramString2, String paramString3, long paramLong1, String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString4, long paramLong2, boolean paramBoolean);
  
  public native void handleDataInterruption(boolean paramBoolean);
  
  public native void handleDecline();
  
  public native int handleDeletePtt(String paramString);
  
  public native void handleDial(String paramString);
  
  public native void handleDialConference(String paramString);
  
  public native void handleDialViberOut(String paramString);
  
  public native void handleDialogReply(int paramInt, String paramString);
  
  public native void handleDownloadPtt(String paramString);
  
  public native void handleGSMStateChange(int paramInt);
  
  public native boolean handleGetBillingToken();
  
  public native boolean handleGetGroupInfo(int paramInt, long paramLong);
  
  public native boolean handleGetLastOnline(String[] paramArrayOfString, int paramInt1, int paramInt2, long paramLong);
  
  public native boolean handleGetPublicGroupInfo(int paramInt1, long paramLong, int paramInt2, int paramInt3);
  
  public native boolean handleGetPublicGroupInfoUri(int paramInt, String paramString);
  
  public native boolean handleGetPublicGroupLikes(int paramInt1, long paramLong, int paramInt2, int paramInt3);
  
  public native boolean handleGetPublicGroupMessages(int paramInt1, long paramLong, int paramInt2);
  
  public native boolean handleGetUserActivity(String[] paramArrayOfString, int paramInt1, int paramInt2, long paramLong);
  
  public native boolean handleGetUsersDetail(String[] paramArrayOfString);
  
  public native boolean handleGroupAddMember(long paramLong, String paramString);
  
  public native boolean handleGroupAddMembers(long paramLong, int paramInt, String[] paramArrayOfString);
  
  public native boolean handleGroupLeave(long paramLong);
  
  public native boolean handleGroupUserIsTyping(long paramLong, boolean paramBoolean);
  
  public native void handleHangup();
  
  public native void handleHangupReply(boolean paramBoolean, long paramLong, int paramInt);
  
  public native boolean handleIsOnline(String paramString);
  
  public native boolean handleJoinPublicGroup(long paramLong1, int paramInt, String paramString, long paramLong2);
  
  public native boolean handleLikePublicGroupMessage(long paramLong1, long paramLong2, int paramInt1, boolean paramBoolean, long paramLong3, int paramInt2);
  
  public native void handleLocalHold();
  
  public native void handleLocalUnhold();
  
  public native void handleMute();
  
  public native boolean handleMuteGroup(long paramLong, boolean paramBoolean);
  
  public native void handleNetworkError(int paramInt, boolean paramBoolean);
  
  public native void handlePeerCapabilities(int paramInt);
  
  public native boolean handleRecanonizeAck(String paramString);
  
  public native boolean handleRecoverGroups();
  
  public native void handleRedial();
  
  public native boolean handleReportFacebookStatistics(String paramString1, String paramString2);
  
  public native int handleRestorePttDuration(String paramString);
  
  public native boolean handleSearchPublicGroupsByText(int paramInt1, String paramString1, String paramString2, int paramInt2);
  
  public native boolean handleSearchPublicGroupsForCountry(int paramInt1, String paramString, int paramInt2);
  
  public native boolean handleSecondaryRegisteredAck(long paramLong);
  
  public native void handleSecureCallVerified(int paramInt, byte[] paramArrayOfByte);
  
  public native boolean handleSendAddressBookForSecondaryAck(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean);
  
  public native boolean handleSendAnimatedMessage(String paramString1, byte[] paramArrayOfByte, int paramInt1, LocationInfo paramLocationInfo, String paramString2, boolean paramBoolean, int paramInt2, String paramString3, String paramString4);
  
  public native boolean handleSendAnimatedToGroup(long paramLong, byte[] paramArrayOfByte, int paramInt1, LocationInfo paramLocationInfo, String paramString1, boolean paramBoolean, int paramInt2, String paramString2, String paramString3);
  
  public native void handleSendGroupChangedAck(long paramLong);
  
  public native boolean handleSendMedia(String paramString1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, long paramLong, LocationInfo paramLocationInfo, String paramString2, int paramInt3, boolean paramBoolean, int paramInt4, String paramString3, String paramString4);
  
  public native boolean handleSendMediaToGroup(long paramLong1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, long paramLong2, LocationInfo paramLocationInfo, String paramString1, int paramInt3, boolean paramBoolean, int paramInt4, String paramString2, String paramString3);
  
  public native void handleSendMessageDeliveredAck(long paramLong);
  
  public native void handleSendMessageReceivedAck(long paramLong, boolean paramBoolean);
  
  public native void handleSendMessageReplyAck(long paramLong);
  
  public native boolean handleSendMissedCallsAck(long[] paramArrayOfLong);
  
  public native boolean handleSendPtt(String paramString1, int paramInt1, long paramLong, int paramInt2, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt3, String paramString2, String paramString3);
  
  public native boolean handleSendPttToGroup(long paramLong1, int paramInt1, long paramLong2, int paramInt2, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt3, String paramString1, String paramString2);
  
  public native boolean handleSendPublicGroupInvite(int paramInt, String[] paramArrayOfString, long paramLong);
  
  public native void handleSendPublicGroupsUpdatedAck(long paramLong);
  
  public native boolean handleSendRegisteredNumbersAck(int paramInt, boolean paramBoolean);
  
  public native boolean handleSendSyncConversationAck(String paramString, long paramLong, int paramInt);
  
  public native boolean handleSendSyncGroupAck(long paramLong1, long paramLong2, int paramInt);
  
  public native void handleSendSyncMessageLikeAck(long paramLong);
  
  public native boolean handleSendSyncMessagesAck(long[] paramArrayOfLong1, long[] paramArrayOfLong2);
  
  public native boolean handleSendText(String paramString1, String paramString2, int paramInt1, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt2);
  
  public native boolean handleSendTextToGroup(long paramLong, String paramString, int paramInt1, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt2);
  
  public native boolean handleSendUnregisteredNumbersAck(int paramInt);
  
  public native boolean handleSendUpdateSelfUserDetailsAck(long paramLong);
  
  public native boolean handleSendVideo(String paramString1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, long paramLong, LocationInfo paramLocationInfo, String paramString2, int paramInt2, boolean paramBoolean, int paramInt3, String paramString3, String paramString4);
  
  public native boolean handleSendVideoToGroup(long paramLong1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, long paramLong2, LocationInfo paramLocationInfo, String paramString1, int paramInt2, boolean paramBoolean, int paramInt3, String paramString2, String paramString3);
  
  public native boolean handleSetCanonizationRules(String paramString);
  
  public native void handleStartPlayPtt(String paramString);
  
  public native void handleStartRecordPtt(int paramInt);
  
  public native void handleStopPlayPtt(String paramString);
  
  public native void handleStopRecordPtt(String paramString);
  
  public native void handleSwitchToGSM(String paramString);
  
  public native boolean handleSyncConversation(String paramString, long paramLong, int paramInt);
  
  public native boolean handleSyncDeletedMessages(ConversationToken[] paramArrayOfConversationToken, GroupToken[] paramArrayOfGroupToken, int paramInt);
  
  public native boolean handleSyncGroup(long paramLong1, long paramLong2, int paramInt);
  
  public native boolean handleSyncMessageLikeAck(long paramLong);
  
  public native void handleTransfer(boolean paramBoolean);
  
  public native void handleTransferReply(long paramLong, int paramInt);
  
  public native void handleUnmute();
  
  public native boolean handleUnregisterApp(int paramInt1, int paramInt2);
  
  public native boolean handleUpdateBadge(int paramInt);
  
  public native boolean handleUpdateExistingMsgStatus(long paramLong, int paramInt);
  
  public native boolean handleUpdateExistingMsgStatusAck(long paramLong);
  
  public native boolean handleUpdateGroupConversationStatus(long paramLong);
  
  public native boolean handleUpdateGroupConversationStatusAck(long paramLong);
  
  public native boolean handleUpdateLanguage(String paramString);
  
  public native boolean handleUpdateUserName(String paramString);
  
  public native boolean handleUpdateUserPhoto(long paramLong);
  
  public native boolean handleUserInfoChangeAck(long paramLong);
  
  public native boolean handleUserIsTyping(String paramString, boolean paramBoolean);
  
  public native boolean handleValidatePublicGroupUri(int paramInt, String paramString);
  
  public native boolean isConnected();
  
  public boolean isInitialized()
  {
    return mInitialized;
  }
  
  public native boolean isRakutenPhone(String paramString);
  
  public boolean isReady()
  {
    return mReady;
  }
  
  public native boolean isRegisteredNumber(String paramString);
  
  public native boolean isShortStandardBackgroundID(String paramString);
  
  public native boolean isVideoSupported();
  
  public native int lengthenStandartBackgroundID(String paramString, String[] paramArrayOfString);
  
  /* Error */
  protected boolean loadLibrary()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: getstatic 31	com/viber/jni/PhoneControllerHelper:mReady	Z
    //   7: ifne +117 -> 124
    //   10: invokestatic 328	com/viber/voip/process/k:a	()Lcom/viber/voip/process/k;
    //   13: astore_3
    //   14: getstatic 331	com/viber/voip/process/k:a	Lcom/viber/voip/process/k;
    //   17: astore 4
    //   19: aload_3
    //   20: aload 4
    //   22: if_acmpne +102 -> 124
    //   25: ldc_w 333
    //   28: invokestatic 337	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   31: ldc_w 339
    //   34: invokestatic 337	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   37: invokestatic 344	com/viber/jni/DeviceFlags:getFlagsForDeviceModel	()I
    //   40: invokestatic 350	com/viber/voip/sound/AbstractSoundService:setDeviceFlags	(I)I
    //   43: pop
    //   44: invokestatic 354	com/viber/jni/DeviceFlags:getSpeechEnhancementsModeForDeviceModel	()Lcom/viber/jni/DeviceFlags$DeviceModes;
    //   47: astore 8
    //   49: aload 8
    //   51: getfield 360	com/viber/jni/DeviceFlags$DeviceModes:AEC_mode	I
    //   54: aload 8
    //   56: getfield 363	com/viber/jni/DeviceFlags$DeviceModes:AGC_mode	I
    //   59: aload 8
    //   61: getfield 366	com/viber/jni/DeviceFlags$DeviceModes:NS_mode	I
    //   64: aload 8
    //   66: getfield 369	com/viber/jni/DeviceFlags$DeviceModes:RxAGC_mode	I
    //   69: aload 8
    //   71: getfield 372	com/viber/jni/DeviceFlags$DeviceModes:RxNS_mode	I
    //   74: invokestatic 376	com/viber/voip/sound/AbstractSoundService:setSpeechEnhancementsModes	(IIIII)I
    //   77: pop
    //   78: iconst_1
    //   79: putstatic 31	com/viber/jni/PhoneControllerHelper:mReady	Z
    //   82: invokestatic 380	org/webrtc/videoengine/ViEVideoSupport:init	()V
    //   85: aload_0
    //   86: monitorexit
    //   87: iload_1
    //   88: ireturn
    //   89: astore 6
    //   91: bipush 6
    //   93: ldc_w 382
    //   96: ldc_w 384
    //   99: aload 6
    //   101: invokestatic 387	com/viber/voip/ViberApplication:log	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   104: iconst_0
    //   105: istore_1
    //   106: goto -21 -> 85
    //   109: astore 9
    //   111: aload 9
    //   113: invokevirtual 390	java/lang/UnsatisfiedLinkError:printStackTrace	()V
    //   116: goto -38 -> 78
    //   119: astore_2
    //   120: aload_0
    //   121: monitorexit
    //   122: aload_2
    //   123: athrow
    //   124: iconst_0
    //   125: istore_1
    //   126: goto -41 -> 85
    //   129: astore 5
    //   131: goto -100 -> 31
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	PhoneControllerHelper
    //   1	125	1	bool	boolean
    //   119	4	2	localObject	Object
    //   13	7	3	localk1	com.viber.voip.process.k
    //   17	4	4	localk2	com.viber.voip.process.k
    //   129	1	5	localUnsatisfiedLinkError1	java.lang.UnsatisfiedLinkError
    //   89	11	6	localUnsatisfiedLinkError2	java.lang.UnsatisfiedLinkError
    //   47	23	8	localDeviceModes	DeviceFlags.DeviceModes
    //   109	3	9	localUnsatisfiedLinkError3	java.lang.UnsatisfiedLinkError
    // Exception table:
    //   from	to	target	type
    //   31	37	89	java/lang/UnsatisfiedLinkError
    //   49	78	109	java/lang/UnsatisfiedLinkError
    //   4	19	119	finally
    //   25	31	119	finally
    //   31	37	119	finally
    //   37	49	119	finally
    //   49	78	119	finally
    //   78	85	119	finally
    //   91	104	119	finally
    //   111	116	119	finally
    //   25	31	129	java/lang/UnsatisfiedLinkError
  }
  
  public native void notifyActivityOnForeground(boolean paramBoolean);
  
  public native int queryVoiceQuality();
  
  public native void requestShutdown();
  
  public native void resetDeviceKey();
  
  public native void sendCallStartedNotificationToSN(long paramLong);
  
  public native void sendKA();
  
  public native boolean sendStatistics(String paramString);
  
  public native void sendTransferReqMsg(boolean paramBoolean, long paramLong, int paramInt);
  
  public native void setCaptureDeviceName(String paramString);
  
  public native void setConnectionToken(long paramLong);
  
  public native void setDeviceKey(byte[] paramArrayOfByte);
  
  public native int setDeviceOrientation(int paramInt1, int paramInt2, int paramInt3);
  
  public native void setEnableVideo(boolean paramBoolean);
  
  public native void setIsVoTrialCall(boolean paramBoolean);
  
  public native void setPixieBundle(String paramString);
  
  public native void setPixieMode(int paramInt);
  
  public native boolean shareAddressBookList(CAddressBookInfo[] paramArrayOfCAddressBookInfo, int paramInt1, int paramInt2);
  
  public native boolean shareContact(CAddressBookInfo paramCAddressBookInfo, int paramInt1, int paramInt2);
  
  public native int shortenStandardBackgroundID(String paramString, long[] paramArrayOfLong);
  
  public native void startPixie(String paramString1, String paramString2, String paramString3, String paramString4, char paramChar);
  
  public native int startRecvVideo(Object paramObject);
  
  public native int startSendVideo(Object paramObject);
  
  public native int stopRecvVideo();
  
  public native int stopSendVideo();
  
  public native void testConnection(int paramInt);
  
  public native boolean updateData(String paramString);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerHelper
 * JD-Core Version:    0.7.0.1
 */