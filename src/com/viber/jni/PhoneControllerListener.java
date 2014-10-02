package com.viber.jni;

import com.viber.error.a;
import com.viber.jni.connection.ConnectionDelegate;
import com.viber.jni.connection.ConnectionListener;
import com.viber.jni.controller.ControllerListener;
import com.viber.jni.dialer.DialerCallInterruptionListener;
import com.viber.jni.dialer.DialerCallbackListener;
import com.viber.jni.dialer.DialerController;
import com.viber.jni.dialer.DialerControllerDelegate.DialerDelegate;
import com.viber.jni.dialer.DialerEndScreenListener;
import com.viber.jni.dialer.DialerHoldStateListener;
import com.viber.jni.dialer.DialerIncomingScreenListener;
import com.viber.jni.dialer.DialerLocalCallStateListener;
import com.viber.jni.dialer.DialerMuteStateListener;
import com.viber.jni.dialer.DialerOutgoingScreenListener;
import com.viber.jni.dialer.DialerPhoneStateListener;
import com.viber.jni.dialer.DialerRemoteCallStateListener;
import com.viber.jni.dialer.DialerTransferCallListener;
import com.viber.jni.dialer.DialerVideoListener;
import com.viber.jni.lastonline.LastOnlineDelegate;
import com.viber.jni.lastonline.LastOnlineListener;
import com.viber.jni.ptt.PttControllerDelegate.DelegatePtt;
import com.viber.jni.ptt.PttDownloaderListener;
import com.viber.jni.ptt.PttPlayerListener;
import com.viber.jni.ptt.PttReceiverListener;
import com.viber.jni.ptt.PttRecorderListener;
import com.viber.jni.ptt.PttUploaderListener;
import com.viber.jni.publicgroup.PublicGroupControllerDelegate.PublicGroupDelegate;
import com.viber.jni.publicgroup.PublicGroupControllerDelegate.PublicGroupInfoReceiver;
import com.viber.jni.publicgroup.PublicGroupInfoReceiverListener;
import com.viber.jni.publicgroup.PublicGroupInviteReceiveListener;
import com.viber.jni.publicgroup.PublicGroupInviteSendListener;
import com.viber.jni.secure.SecureCallsDelegate;
import com.viber.jni.secure.SecureCallsListener;
import com.viber.jni.settings.SettingsControllerDelegate;
import com.viber.jni.settings.SettingsListener;
import com.viber.logger.QaLogger;
import com.viber.logger.QaLogger.QaRegisteredNumbersEvent;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.util.gj;
import java.util.Arrays;
import java.util.Map;

public class PhoneControllerListener
  extends ControllerListener<PhoneControllerDelegate>
  implements PhoneControllerDelegate, ConnectionDelegate, DialerControllerDelegate.DialerDelegate, LastOnlineDelegate, PttControllerDelegate.DelegatePtt, PublicGroupControllerDelegate.PublicGroupDelegate, PublicGroupControllerDelegate.PublicGroupInfoReceiver, SecureCallsDelegate, SettingsControllerDelegate
{
  private static final String TAG = "PhoneControllerListener";
  private static final String[] onConnectionStatesStr = { "Disconnected", "Connecting", "Failed connect", "Connected" };
  private ConnectionListener mConnectionListener = new ConnectionListener();
  private DialerCallInterruptionListener mDialerCallInterruptionListener = new DialerCallInterruptionListener();
  private DialerCallbackListener mDialerCallbackListener = new DialerCallbackListener();
  private DialerEndScreenListener mDialerEndScreenListener = new DialerEndScreenListener();
  private DialerHoldStateListener mDialerHoldStateListener = new DialerHoldStateListener();
  private DialerIncomingScreenListener mDialerIncomingScreenListener = new DialerIncomingScreenListener();
  private DialerLocalCallStateListener mDialerLocalCallStateListener = new DialerLocalCallStateListener();
  private DialerMuteStateListener mDialerMuteStateListener = new DialerMuteStateListener();
  private DialerOutgoingScreenListener mDialerOutgoingScreenListener = new DialerOutgoingScreenListener();
  private DialerPhoneStateListener mDialerPhoneStateListener = new DialerPhoneStateListener();
  private DialerRemoteCallStateListener mDialerRemoteCallStateListener = new DialerRemoteCallStateListener();
  private DialerTransferCallListener mDialerTransferCall = new DialerTransferCallListener();
  private DialerVideoListener mDialerVideoListener = new DialerVideoListener();
  private LastOnlineListener mLastOnlineListener = new LastOnlineListener();
  private PttDownloaderListener mPttDownloaderListener = new PttDownloaderListener();
  private PttPlayerListener mPttPlayerListener = new PttPlayerListener();
  private PttReceiverListener mPttReceiverListener = new PttReceiverListener();
  private PttRecorderListener mPttRecorderListener = new PttRecorderListener();
  private PttUploaderListener mPttUploaderListener = new PttUploaderListener();
  private PublicGroupInfoReceiverListener mPublicGroupInfoReceiverListener = new PublicGroupInfoReceiverListener();
  private PublicGroupInviteReceiveListener mPublicGroupInviteReceiveListener = new PublicGroupInviteReceiveListener();
  private PublicGroupInviteSendListener mPublicGroupInviteSendListener = new PublicGroupInviteSendListener();
  private SecureCallsListener mSecureCallsListener = new SecureCallsListener();
  private SettingsListener mSettingsListener = new SettingsListener();
  private VoiceStats voiceStats = new VoiceStats();
  
  private void logout(String paramString)
  {
    ViberApplication.log(4, "PhoneControllerListener", paramString);
  }
  
  @Deprecated
  public boolean IsGSMCallActive()
  {
    return ViberApplication.getInstance().getPhoneController(false).isGSMCallActive();
  }
  
  public ConnectionListener getConnectionListener()
  {
    return this.mConnectionListener;
  }
  
  public DialerCallInterruptionListener getDialerCallInterruptionListener()
  {
    return this.mDialerCallInterruptionListener;
  }
  
  public DialerCallbackListener getDialerCallbackListener()
  {
    return this.mDialerCallbackListener;
  }
  
  public DialerEndScreenListener getDialerEndScreenListener()
  {
    return this.mDialerEndScreenListener;
  }
  
  public DialerHoldStateListener getDialerHoldStateListener()
  {
    return this.mDialerHoldStateListener;
  }
  
  public DialerIncomingScreenListener getDialerIncomingScreenListener()
  {
    return this.mDialerIncomingScreenListener;
  }
  
  public DialerLocalCallStateListener getDialerLocalCallStateListener()
  {
    return this.mDialerLocalCallStateListener;
  }
  
  public DialerMuteStateListener getDialerMuteStateListener()
  {
    return this.mDialerMuteStateListener;
  }
  
  public DialerOutgoingScreenListener getDialerOutgoingScreenListener()
  {
    return this.mDialerOutgoingScreenListener;
  }
  
  public DialerPhoneStateListener getDialerPhoneStateListener()
  {
    return this.mDialerPhoneStateListener;
  }
  
  public DialerRemoteCallStateListener getDialerRemoteCallStateListener()
  {
    return this.mDialerRemoteCallStateListener;
  }
  
  public DialerTransferCallListener getDialerTransferCallListener()
  {
    return this.mDialerTransferCall;
  }
  
  public DialerVideoListener getDialerVideoListener()
  {
    return this.mDialerVideoListener;
  }
  
  public LastOnlineListener getLastOnlineListener()
  {
    return this.mLastOnlineListener;
  }
  
  public int getPersistentSecureValue(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    String str = ViberApplication.preferences(paramString1).b(paramString2, null);
    if ((str == null) || (str.length() == 0)) {
      return 6;
    }
    paramArrayOfString[0] = str;
    return 0;
  }
  
  public int getPersistentValue(String paramString, String[] paramArrayOfString)
  {
    String str = ViberApplication.preferences().b(paramString, null);
    if ((str == null) || (str.length() == 0)) {
      return 6;
    }
    paramArrayOfString[0] = str;
    return 0;
  }
  
  public PttDownloaderListener getPttDownloaderListener()
  {
    return this.mPttDownloaderListener;
  }
  
  public PttPlayerListener getPttPlayerListener()
  {
    return this.mPttPlayerListener;
  }
  
  public PttReceiverListener getPttReceiverListener()
  {
    return this.mPttReceiverListener;
  }
  
  public PttRecorderListener getPttRecorderListener()
  {
    return this.mPttRecorderListener;
  }
  
  public PttUploaderListener getPttUploaderListener()
  {
    return this.mPttUploaderListener;
  }
  
  public PublicGroupInfoReceiverListener getPublicGroupInfoReceiverListener()
  {
    return this.mPublicGroupInfoReceiverListener;
  }
  
  public PublicGroupInviteReceiveListener getPublicGroupInviteReceiveListener()
  {
    return this.mPublicGroupInviteReceiveListener;
  }
  
  public PublicGroupInviteSendListener getPublicGroupInviteSendListener()
  {
    return this.mPublicGroupInviteSendListener;
  }
  
  public SecureCallsListener getSecureCallsListener()
  {
    return this.mSecureCallsListener;
  }
  
  public SettingsListener getSettingsListener()
  {
    return this.mSettingsListener;
  }
  
  @Deprecated
  public String getVoiceStatsString()
  {
    this.voiceStats = ViberApplication.getInstance().getPhoneController(false).getDialerController().getVoiceStats(this.voiceStats);
    return this.voiceStats.toString();
  }
  
  public void hideCall(String paramString, boolean paramBoolean)
  {
    this.mDialerOutgoingScreenListener.hideCall(paramString, paramBoolean);
  }
  
  public void hideCallBack()
  {
    this.mDialerCallbackListener.hideCallBack();
  }
  
  public void hideEndCall()
  {
    logout("hideEndCall");
    this.mDialerEndScreenListener.hideEndCall();
  }
  
  public void hideReception()
  {
    logout("hideReception");
    this.mDialerIncomingScreenListener.hideReception();
  }
  
  public void localHold()
  {
    logout("localHold");
    this.mDialerHoldStateListener.localHold();
  }
  
  public void localUnhold()
  {
    logout("localUnhold");
    this.mDialerHoldStateListener.localUnhold();
  }
  
  public void mute()
  {
    logout("mute");
    this.mDialerMuteStateListener.mute();
  }
  
  public boolean onAddressBook(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, CAddressBookEntry[] paramArrayOfCAddressBookEntry)
  {
    logout("onAddressBook");
    notifyListeners(new PhoneControllerListener.61(this, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3, paramArrayOfCAddressBookEntry));
    return false;
  }
  
  public boolean onAnimatedMessageReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3)
  {
    logout("onAnimatedMessageReceived messageToken:" + paramLong1);
    notifyListeners(new PhoneControllerListener.62(this, paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString2, paramString3));
    return false;
  }
  
  public boolean onAnimatedMessageReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, String paramString4, int paramInt3)
  {
    logout("onAnimatedMessageReceivedFromGroup messageToken:" + paramLong2);
    notifyListeners(new PhoneControllerListener.63(this, paramLong1, paramString1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString3, paramString4, paramInt3));
    return false;
  }
  
  public void onAnimatedMessagesSupported()
  {
    logout("onAnimatedMessagesSupported");
    notifyListeners(new PhoneControllerListener.66(this));
  }
  
  public void onAppsApiSupported()
  {
    logout("onAppsApiSupported");
    notifyListeners(new PhoneControllerListener.93(this));
  }
  
  public void onAuthenticateAppReply(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    logout("onAuthenticateAppReply: token=" + paramString + " status=" + paramInt1 + " seq=" + paramInt3);
    notifyListeners(new PhoneControllerListener.77(this, paramString, paramInt1, paramInt2, paramInt3));
  }
  
  public void onBlockAppReply(int paramInt1, int paramInt2)
  {
    notifyListeners(new PhoneControllerListener.85(this, paramInt1, paramInt2));
  }
  
  public void onBlockListReply(int paramInt)
  {
    logout("onBlockListReply: sequence=" + paramInt);
    notifyListeners(new PhoneControllerListener.74(this, paramInt));
  }
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2)
  {
    ViberApplication.log(4, "PhoneControllerListener", "onCallEnded callToken:" + paramLong + ", isInitiator:" + paramBoolean + "; originPhoneNumber: " + paramString + "; reason:" + paramInt1 + "; dialType:" + paramInt2);
    this.mDialerLocalCallStateListener.onCallEnded(paramLong, paramBoolean, paramString, paramInt1, paramInt2);
  }
  
  public void onCallMissed(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    ViberApplication.log(4, "PhoneControllerListener", "onCallMissed originPhoneNumber:" + paramString1 + ",numMissed:" + paramInt1 + ",numMissedOther:" + paramInt2);
    notifyListeners(new PhoneControllerListener.3(this, paramLong, paramString1, paramInt1, paramInt2, paramString2));
  }
  
  public void onCallStarted(boolean paramBoolean)
  {
    ViberApplication.log(4, "PhoneControllerListener", "onCallStarted isInitiator:" + paramBoolean);
    this.mDialerLocalCallStateListener.onCallStarted(paramBoolean);
  }
  
  public void onChangeConversationSettingsReply(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    logout("OnChangeConversationSettingsReply PeerPhoneNum= " + paramString + " SmartNotifications= " + paramBoolean1 + " IsOK= " + paramBoolean2);
    notifyListeners(new PhoneControllerListener.45(this, paramString, paramBoolean1, paramBoolean2));
  }
  
  public void onChangeGroup(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    notifyListeners(new PhoneControllerListener.79(this, paramLong1, paramLong2, paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public void onChangeGroupSettingsReply(long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    logout("onChangeGroupSettingsReply groupId= " + paramLong + " SmartNotifications= " + paramBoolean1 + " isOk=" + paramBoolean2);
    notifyListeners(new PhoneControllerListener.52(this, paramLong, paramBoolean1, paramBoolean2));
  }
  
  public void onChangeLastOnlineSettingsReply(int paramInt1, int paramInt2)
  {
    logout("onChangeLastOnlineSettingsReply settings:" + paramInt1 + " status:" + paramInt2);
    this.mSettingsListener.onChangeLastOnlineSettingsReply(paramInt1, paramInt2);
  }
  
  public void onChangeReadNotificationsSettingsReply(int paramInt1, int paramInt2)
  {
    logout("onChangeReadNotificationsSettingsReply settings:" + paramInt1 + " status:" + paramInt2);
    this.mSettingsListener.onChangeReadNotificationsSettingsReply(paramInt1, paramInt2);
  }
  
  public void onChangeSettings(boolean paramBoolean)
  {
    logout("onChangeSettings isOk=" + paramBoolean);
    notifyListeners(new PhoneControllerListener.25(this, paramBoolean));
  }
  
  public void onChangeSettingsReply(int paramInt1, int paramInt2)
  {
    logout("onChangeSettingsReply sequence=" + paramInt1 + " status = " + paramInt2);
    boolean bool;
    l locall;
    String str;
    if (ViberApplication.preferences().b("settings_viber_in_syncing", 0) == paramInt1)
    {
      bool = ViberApplication.preferences().b(j.ao(), j.ap());
      locall = ViberApplication.preferences();
      str = j.ao();
      if (paramInt2 != 1) {
        break label119;
      }
    }
    for (;;)
    {
      locall.a(str, bool);
      ViberApplication.preferences().a("settings_viber_in_syncing", 0);
      notifyListeners(new PhoneControllerListener.26(this, paramInt1, paramInt2));
      return;
      label119:
      if (!bool) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  public void onChangeUserActivitySettingsReply(int paramInt1, int paramInt2)
  {
    logout("onChangeUserActivitySettingsReply setting=" + paramInt1 + " status=" + paramInt2);
    notifyListeners(new PhoneControllerListener.92(this, paramInt1, paramInt2));
  }
  
  public void onCommError(int paramInt)
  {
    logout("onCommError status=" + paramInt);
    notifyListeners(new PhoneControllerListener.30(this, paramInt));
  }
  
  public void onConnect()
  {
    ViberApplication.log(4, "PhoneControllerListener", "onConnect");
    this.mConnectionListener.onConnect();
  }
  
  public void onConnectionStateChange(int paramInt)
  {
    logout("onConnectionStateChange connectionState=" + paramInt + " describe:" + onConnectionStatesStr[paramInt]);
    this.mConnectionListener.onConnectionStateChange(paramInt);
  }
  
  public void onCreateGroupReply(int paramInt1, int paramInt2, long paramLong, Map<String, Integer> paramMap)
  {
    logout("onCreateGroupReply status=" + paramInt1 + ", context=" + paramInt2 + ", groupId=" + paramLong + ", notFoundMembers = " + paramMap);
    notifyListeners(new PhoneControllerListener.32(this, paramInt1, paramInt2, paramLong, paramMap));
  }
  
  public void onDataInterruption(boolean paramBoolean)
  {
    logout("onDataInterruption: state=" + paramBoolean);
    this.mDialerCallInterruptionListener.onDataInterruption(paramBoolean);
  }
  
  public void onDebugInfo(int paramInt, String paramString1, String paramString2)
  {
    ViberApplication.log(3, paramString1, paramString2);
  }
  
  public void onDownloadPtt(String paramString1, String paramString2, int paramInt)
  {
    logout("onDownloadPtt downloadID:" + paramString1 + " pttID:" + paramString2 + ", status:" + paramInt);
    this.mPttDownloaderListener.onDownloadPtt(paramString1, paramString2, paramInt);
  }
  
  public void onEncryptedPhoneNumber(String paramString)
  {
    logout("onEncryptedPhoneNumber encryptedPhoneNumber=" + paramString);
    notifyListeners(new PhoneControllerListener.89(this, paramString));
  }
  
  public boolean onFormattedMessageReceived(long paramLong1, String paramString1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3)
  {
    notifyListeners(new PhoneControllerListener.87(this, paramLong1, paramString1, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString2, paramString3));
    return false;
  }
  
  public void onGSMCallStateChanged(int paramInt, boolean paramBoolean)
  {
    logout("onGSMCallStateChanged state:" + paramInt + "; active_call:" + paramBoolean);
    notifyListeners(new PhoneControllerListener.19(this, paramInt, paramBoolean));
  }
  
  public void onGSMStateChange(int paramInt, String paramString)
  {
    logout("onGSMStateChange ");
    notifyListeners(new PhoneControllerListener.17(this, paramInt, paramString));
  }
  
  public void onGetBillingToken(long paramLong, String paramString)
  {
    logout("onGetBillingToken timeStamp:" + paramLong + " token:" + paramString);
    notifyListeners(new PhoneControllerListener.58(this, paramLong, paramString));
  }
  
  public boolean onGetMissedCalls(CMissedCall[] paramArrayOfCMissedCall)
  {
    ViberApplication.log(4, "PhoneControllerListener", "onGetMissedCalls");
    notifyListeners(new PhoneControllerListener.4(this, paramArrayOfCMissedCall));
    return false;
  }
  
  public void onGetPublicGroupLikes(int paramInt1, int paramInt2, boolean paramBoolean, long paramLong, Map<Integer, Integer> paramMap, int paramInt3)
  {
    notifyListeners(new PhoneControllerListener.82(this, paramInt1, paramInt2, paramBoolean, paramLong, paramMap, paramInt3));
  }
  
  public void onGetPublicGroupMessages(int paramInt1, long paramLong, PublicGroupMessage[] paramArrayOfPublicGroupMessage, PublicGroupChangeEvent[] paramArrayOfPublicGroupChangeEvent, int paramInt2)
  {
    notifyListeners(new PhoneControllerListener.86(this, paramInt1, paramLong, paramArrayOfPublicGroupMessage, paramArrayOfPublicGroupChangeEvent, paramInt2));
  }
  
  public void onGetRecentMessagesEnded(int paramInt)
  {
    logout("onGetRecentMessagesEnded status= " + paramInt);
    notifyListeners(new PhoneControllerListener.51(this, paramInt));
  }
  
  public void onGetUserActivity(Map<String, Integer> paramMap, int paramInt)
  {
    logout("onGetUserActivity seq=" + paramInt);
    notifyListeners(new PhoneControllerListener.91(this, paramMap, paramInt));
  }
  
  public void onGetUserAppsReply(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    logout("onGetUserAppsReply");
    notifyListeners(new PhoneControllerListener.94(this, paramArrayOfInt, paramInt1, paramInt2));
  }
  
  public void onGetUsersDetail(CGetUserDetails[] paramArrayOfCGetUserDetails)
  {
    logout("onGetUsersDetail users.size = " + paramArrayOfCGetUserDetails.length + ", users = " + Arrays.toString(paramArrayOfCGetUserDetails));
    notifyListeners(new PhoneControllerListener.11(this, paramArrayOfCGetUserDetails));
  }
  
  public void onGroupAddMember(long paramLong1, String paramString, long paramLong2, int paramInt)
  {
    notifyListeners(new PhoneControllerListener.68(this, paramLong1, paramString, paramLong2, paramInt));
  }
  
  public void onGroupAddMembers(long paramLong1, int paramInt1, long paramLong2, int paramInt2, String[] paramArrayOfString, Map<String, Integer> paramMap, int paramInt3, int paramInt4)
  {
    notifyListeners(new PhoneControllerListener.69(this, paramLong1, paramInt1, paramLong2, paramInt2, paramArrayOfString, paramMap, paramInt3, paramInt4));
  }
  
  public boolean onGroupChanged(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, long paramLong3, String paramString3, String paramString4, int paramInt2, GroupUserInfo[] paramArrayOfGroupUserInfo)
  {
    logout("onGroupChanged groupId=" + paramLong1 + ", phoneNumber=" + paramLong2);
    notifyListeners(new PhoneControllerListener.39(this, paramLong1, paramString1, paramString2, paramLong2, paramInt1, paramLong3, paramString3, paramString4, paramInt2, paramArrayOfGroupUserInfo));
    return true;
  }
  
  public boolean onGroupConversationUpdate(long paramLong)
  {
    logout("onGroupConversationUpdate groupId= " + paramLong);
    notifyListeners(new PhoneControllerListener.55(this, paramLong));
    return false;
  }
  
  public void onGroupConversationUpdateReply(long paramLong)
  {
    logout("onGroupConversationUpdateReply groupId= " + paramLong);
    notifyListeners(new PhoneControllerListener.56(this, paramLong));
  }
  
  public void onGroupInfo(int paramInt1, long paramLong, String paramString, GroupUserInfo[] paramArrayOfGroupUserInfo, int paramInt2, int paramInt3)
  {
    logout("onGroupInfo groupId=" + paramLong + ", groupName=" + paramString + ", members" + Arrays.toString(paramArrayOfGroupUserInfo) + ", flags " + paramInt2 + ", status " + paramInt3);
    notifyListeners(new PhoneControllerListener.37(this, paramInt1, paramLong, paramString, paramArrayOfGroupUserInfo, paramInt2, paramInt3));
  }
  
  public void onGroupLeave(long paramLong1, long paramLong2, int paramInt)
  {
    logout("onGroupLeave groupId=" + paramLong1 + ", messageToken=" + paramLong2 + ", status=" + paramInt);
    notifyListeners(new PhoneControllerListener.38(this, paramLong1, paramLong2, paramInt));
  }
  
  public boolean onGroupMessageDelivered(long paramLong1, long paramLong2, String paramString, long paramLong3)
  {
    logout("onGroupMessageDelivered groupId=" + paramLong1 + ", deliveredTo=" + paramString);
    notifyListeners(new PhoneControllerListener.35(this, paramLong1, paramLong2, paramString, paramLong3));
    return false;
  }
  
  public void onGroupUserIsTyping(long paramLong, String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    logout("onGroupUserIsTyping groupId=" + paramLong + ", fromNumber=" + paramString + ",active:" + paramBoolean1);
    notifyListeners(new PhoneControllerListener.36(this, paramLong, paramString, paramBoolean1, paramInt, paramBoolean2));
  }
  
  public boolean onHandleSelfDetails(long paramLong, String paramString1, String paramString2, int paramInt)
  {
    logout("OnHandleSelfDetails token=" + paramLong + " Name=" + paramString1 + " DownloadId=" + paramString2 + " Flags=" + paramInt);
    notifyListeners(new PhoneControllerListener.48(this, paramLong, paramString1, paramString2, paramInt));
    return false;
  }
  
  public void onHangup()
  {
    ViberApplication.log(4, "PhoneControllerListener", "onHangup");
    this.mDialerLocalCallStateListener.onHangup();
  }
  
  public void onIsOnlineReply(String paramString, boolean paramBoolean)
  {
    logout("onIsOnlineReply phoneNumber= " + paramString + " Online=" + paramBoolean);
    notifyListeners(new PhoneControllerListener.53(this, paramString, paramBoolean));
  }
  
  public void onIsRegistered(int paramInt)
  {
    ViberApplication.log(4, "PhoneControllerListener", "onIsRegistered status:" + paramInt);
    notifyListeners(new PhoneControllerListener.2(this, paramInt));
  }
  
  public void onIsRegisteredNumber(String paramString, int paramInt)
  {
    ViberApplication.log(4, "PhoneControllerListener", "onIsRegisteredNumber#toNumber = " + paramString + ", status = " + paramInt);
    notifyListeners(new PhoneControllerListener.5(this, paramString, paramInt));
  }
  
  public void onJoinPublicGroup(long paramLong, int paramInt1, int paramInt2)
  {
    logout("onJoinPublicGroup: groupID=" + paramLong);
    notifyListeners(new PhoneControllerListener.71(this, paramLong, paramInt1, paramInt2));
  }
  
  public void onKeepaliveReply()
  {
    logout("onKeepaliveReply: STUB");
    notifyListeners(new PhoneControllerListener.31(this));
  }
  
  public void onLBServerTime(long paramLong)
  {
    logout("onLBServerTime ");
    notifyListeners(new PhoneControllerListener.13(this, paramLong));
  }
  
  public void onLastOnline(OnlineContactInfo[] paramArrayOfOnlineContactInfo, int paramInt)
  {
    logout("onLastOnline onlineContactInfo:" + Arrays.toString(paramArrayOfOnlineContactInfo) + " seq:" + paramInt);
    this.mLastOnlineListener.onLastOnline(paramArrayOfOnlineContactInfo, paramInt);
  }
  
  public void onLikePublicGroupMessage(long paramLong1, long paramLong2, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong3, int paramInt3)
  {
    logout("onLikePublicGroupMessage: groupID=" + paramLong1 + ", messageToken = " + paramLong2 + ", messageID = " + paramInt1 + ", like = " + paramBoolean);
    notifyListeners(new PhoneControllerListener.72(this, paramLong1, paramLong2, paramInt1, paramBoolean, paramInt2, paramLong3, paramInt3));
  }
  
  public boolean onMediaReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    logout("onMediaReceived messageToken=" + paramLong1 + "; fromNumber=" + paramString1 + "; text=" + paramArrayOfByte.toString() + "; timeStamp=" + paramLong2 + "; flags=" + paramInt1 + "; messageSeq=" + paramInt2 + "; location=" + paramLocationInfo + "; mediaType=" + paramInt3 + "; bucketName=" + paramString2 + "; downloadID=" + paramString3 + "; description=" + paramString5);
    notifyListeners(new PhoneControllerListener.28(this, paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString2, paramString3, paramString4, paramString5));
    return false;
  }
  
  public boolean onMediaReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4)
  {
    logout("onMediaReceivedFromGroup groupId=" + paramLong1 + ", groupName=" + paramString1);
    notifyListeners(new PhoneControllerListener.34(this, paramLong1, paramString1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString3, paramString4, paramString5, paramString6, paramInt4));
    return false;
  }
  
  public boolean onMessageDelivered(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    logout("onMessageDelivered messageToken: " + paramLong1 + "; timeStamp: " + paramLong2 + "; messageSeq: " + paramInt1);
    notifyListeners(new PhoneControllerListener.23(this, paramLong1, paramLong2, paramInt1, paramInt2));
    return false;
  }
  
  public boolean onMessageStateUpdate(long paramLong, int paramInt)
  {
    logout("onMessageStateUpdate messageToken= " + paramLong);
    notifyListeners(new PhoneControllerListener.54(this, paramLong, paramInt));
    return false;
  }
  
  public void onMuteGroupReply(long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    logout("OnMuteGroupReply GroupID= " + paramLong + " Mute= " + paramBoolean1 + " IsOK= " + paramBoolean2);
    notifyListeners(new PhoneControllerListener.46(this, paramLong, paramBoolean1, paramBoolean2));
  }
  
  public void onPeerBusy()
  {
    ViberApplication.log(4, "PhoneControllerListener", "onPeerBusy");
    this.mDialerRemoteCallStateListener.onPeerBusy();
  }
  
  public void onPeerCapabilities(int paramInt)
  {
    ViberApplication.log(4, "PhoneControllerListener", "onPeerCapabilities");
    this.mDialerRemoteCallStateListener.onPeerCapabilities(paramInt);
  }
  
  public void onPeerRinging()
  {
    ViberApplication.log(4, "PhoneControllerListener", "onPeerRinging");
    this.mDialerRemoteCallStateListener.onPeerRinging();
  }
  
  public int onPeerVideoEnded()
  {
    return this.mDialerVideoListener.onPeerVideoEnded();
  }
  
  public int onPeerVideoEndedAck()
  {
    return this.mDialerVideoListener.onPeerVideoEndedAck();
  }
  
  public int onPeerVideoStarted()
  {
    return this.mDialerVideoListener.onPeerVideoStarted();
  }
  
  public int onPeerVideoStartedAck()
  {
    return this.mDialerVideoListener.onPeerVideoStartedAck();
  }
  
  public void onPhoneStateChanged(int paramInt)
  {
    logout("onPhoneStateChanged state = " + paramInt);
    this.mDialerPhoneStateListener.onPhoneStateChanged(paramInt);
  }
  
  public void onPttBufferingStarted(String paramString)
  {
    logout("onPttBufferingStarted pttID: " + paramString);
    this.mPttPlayerListener.onPttBufferingStarted(paramString);
  }
  
  public void onPttBufferingStopped(String paramString)
  {
    logout("onPttBufferingStopped pttID: " + paramString);
    this.mPttPlayerListener.onPttBufferingStopped(paramString);
  }
  
  public void onPttDownloaded(String paramString, int paramInt1, int paramInt2)
  {
    logout("onPttDownloaded downloadID:" + paramString + " duration:" + paramInt1 + " status:" + paramInt2);
    this.mPttDownloaderListener.onPttDownloaded(paramString, paramInt1, paramInt2);
  }
  
  public void onPttFirstChunkUploaded(String paramString, long paramLong, int paramInt1, int paramInt2)
  {
    logout("onPttFirstChunkUploaded pttID: " + paramString + " objectID: " + paramLong + " uploadDuration: " + paramInt1 + ", status: " + paramInt2);
    this.mPttUploaderListener.onPttFirstChunkUploaded(paramString, paramLong, paramInt1, paramInt2);
  }
  
  public void onPttPlayStopped(String paramString, int paramInt)
  {
    logout("onPttPlayStopped pttID: " + paramString + ", reason: " + paramInt);
    this.mPttPlayerListener.onPttPlayStopped(paramString, paramInt);
  }
  
  public boolean onPttReceived(long paramLong1, String paramString1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, int paramInt3, String paramString3)
  {
    logout("onPttReceived token: " + paramLong1 + ", number: " + paramString1 + " timeSent: " + paramLong2 + ", flags: " + paramInt1 + " seq: " + paramInt2 + ", location: " + paramLocationInfo + " downloadID: " + paramString2 + ", uploadDuration: " + paramInt3 + " clientName: " + paramString3);
    return this.mPttReceiverListener.onPttReceived(paramLong1, paramString1, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString2, paramInt3, paramString3);
  }
  
  public boolean onPttReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, int paramInt3, String paramString4, int paramInt4)
  {
    return this.mPttReceiverListener.onPttReceivedFromGroup(paramLong1, paramString1, paramLong2, paramString2, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString3, paramInt3, paramString4, paramInt4);
  }
  
  public void onPttRecordStopped(String paramString, int paramInt)
  {
    logout("onPttRecordStopped pttID: " + paramString + ", reason: " + paramInt);
    this.mPttRecorderListener.onPttRecordStopped(paramString, paramInt);
  }
  
  public void onPttUploaded(String paramString, int paramInt1, int paramInt2)
  {
    logout("onPttUploaded pttID:" + paramString + " duration:" + paramInt1 + ", status:" + paramInt2);
    this.mPttUploaderListener.onPttUploaded(paramString, paramInt1, paramInt2);
  }
  
  public void onPublicChatSupported(int paramInt)
  {
    logout("onGetUserAppsReply");
    notifyListeners(new PhoneControllerListener.96(this, paramInt));
  }
  
  public boolean onPublicGroupChanged(long paramLong1, int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, long paramLong2, long paramLong3, int paramInt4, String paramString3, GroupAddedMember[] paramArrayOfGroupAddedMember, int paramInt5, String paramString4, String paramString5, String paramString6, String[] paramArrayOfString, LocationInfo paramLocationInfo, String paramString7, int paramInt6)
  {
    notifyListeners(new PhoneControllerListener.78(this, paramLong1, paramInt1, paramString1, paramString2, paramInt2, paramInt3, paramLong2, paramLong3, paramInt4, paramString3, paramArrayOfGroupAddedMember, paramInt5, paramString4, paramString5, paramString6, paramArrayOfString, paramLocationInfo, paramString7, paramInt6));
    return false;
  }
  
  public void onPublicGroupInfo(int paramInt1, long paramLong, int paramInt2, String paramString1, int paramInt3, String paramString2, String paramString3, String paramString4, LocationInfo paramLocationInfo, String paramString5, String paramString6, String[] paramArrayOfString, PublicGroupUserInfo[] paramArrayOfPublicGroupUserInfo, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean, int paramInt7)
  {
    this.mPublicGroupInfoReceiverListener.onPublicGroupInfo(paramInt1, paramLong, paramInt2, paramString1, paramInt3, paramString2, paramString3, paramString4, paramLocationInfo, paramString5, paramString6, paramArrayOfString, paramArrayOfPublicGroupUserInfo, paramInt4, paramInt5, paramInt6, paramBoolean, paramInt7);
  }
  
  public boolean onPublicGroupInvite(long paramLong1, String paramString1, long paramLong2, int paramInt1, String paramString2, long paramLong3, String paramString3, String paramString4, int paramInt2, int paramInt3)
  {
    return this.mPublicGroupInviteReceiveListener.onPublicGroupInvite(paramLong1, paramString1, paramLong2, paramInt1, paramString2, paramLong3, paramString3, paramString4, paramInt2, paramInt3);
  }
  
  public void onPublicGroupsUpdated(PGLatestParams[] paramArrayOfPGLatestParams, long paramLong)
  {
    logout("onPublicGroupsUpdated: groupInfo=" + Arrays.toString(paramArrayOfPGLatestParams));
    notifyListeners(new PhoneControllerListener.76(this, paramArrayOfPGLatestParams, paramLong));
  }
  
  public void onRecanonize(String paramString)
  {
    logout("onRecanonize: newPhoneNumbner=" + paramString);
    notifyListeners(new PhoneControllerListener.70(this, paramString));
  }
  
  public void onRecoverGroups(RecoveryGroupInfo[] paramArrayOfRecoveryGroupInfo, PublicGroupInfo[] paramArrayOfPublicGroupInfo, String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    notifyListeners(new PhoneControllerListener.60(this, paramArrayOfRecoveryGroupInfo, paramArrayOfPublicGroupInfo, paramString, paramInt1, paramInt2, paramBoolean));
  }
  
  public boolean onRegisteredNumbers(boolean paramBoolean1, boolean paramBoolean2, Map<String, String> paramMap, int paramInt1, int paramInt2, int paramInt3)
  {
    return onRegisteredNumbers(paramBoolean1, paramBoolean2, paramMap, paramInt1, false, "", "", paramInt2, paramInt3);
  }
  
  public boolean onRegisteredNumbers(boolean paramBoolean1, boolean paramBoolean2, Map<String, String> paramMap, int paramInt1, boolean paramBoolean3, String paramString1, String paramString2, int paramInt2, int paramInt3)
  {
    String str = paramMap.toString();
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean1);
    arrayOfObject[1] = Boolean.valueOf(paramBoolean2);
    arrayOfObject[2] = str;
    arrayOfObject[3] = Integer.valueOf(paramInt1);
    arrayOfObject[4] = Boolean.valueOf(paramBoolean3);
    arrayOfObject[5] = paramString1;
    arrayOfObject[6] = paramString2;
    arrayOfObject[7] = Integer.valueOf(paramInt2);
    ViberApplication.log(4, "PhoneControllerListener", String.format("onRegisteredNumbers clearAll=%s, lastPortion=%s registeredNumbers=%s Seq=%d isJoin=%s joinedName=%s joinedSystem=%s ackSequence=%d", arrayOfObject));
    notifyListeners(new PhoneControllerListener.6(this, paramBoolean1, paramBoolean2, paramMap, paramInt1, paramBoolean3, paramString1, paramString2, paramInt2, paramInt3));
    QaLogger.a(new QaLogger.QaRegisteredNumbersEvent(paramBoolean1, paramMap, paramInt1));
    return false;
  }
  
  public void onRequestCanceled(int paramInt1, int paramInt2)
  {
    notifyListeners(new PhoneControllerListener.81(this, paramInt1, paramInt2));
  }
  
  public void onSearchPublicGroups(int paramInt1, PublicGroupInfo[] paramArrayOfPublicGroupInfo, int paramInt2)
  {
    notifyListeners(new PhoneControllerListener.80(this, paramInt1, paramArrayOfPublicGroupInfo, paramInt2));
  }
  
  public boolean onSecondaryRegistered(long paramLong, int paramInt1, int paramInt2, int paramInt3)
  {
    logout("onSecondaryRegistered: messageToken=" + paramLong + " activationCode=" + paramInt1 + " deviceID=" + paramInt2 + " flags=" + paramInt3);
    notifyListeners(new PhoneControllerListener.75(this, paramLong, paramInt1, paramInt2, paramInt3));
    return false;
  }
  
  public void onSecureCallStateChange(long paramLong, int paramInt1, byte[] paramArrayOfByte, int paramInt2, String paramString)
  {
    logout("onSecureCallStart ct=" + paramLong + " peerCID=" + paramInt1 + " state=" + paramInt2);
    this.mSecureCallsListener.onSecureCallStateChange(paramLong, paramInt1, paramArrayOfByte, paramInt2, paramString);
  }
  
  public void onSelfVideoEnded(int paramInt)
  {
    logout("onSelfVideoEnded reasonCode=" + paramInt);
    notifyListeners(new PhoneControllerListener.90(this, paramInt));
  }
  
  public void onSendMessageReply(int paramInt1, long paramLong, int paramInt2, int paramInt3)
  {
    logout("onSendMessageReply seq:" + paramInt1 + "; messageToken: " + paramLong + "; status:" + paramInt2);
    notifyListeners(new PhoneControllerListener.22(this, paramInt1, paramLong, paramInt2, paramInt3));
  }
  
  public void onSendPublicGroupInviteReply(int paramInt1, long paramLong, int paramInt2, Map<String, Integer> paramMap)
  {
    logout("onSendPublicGroupInviteReply status=" + paramInt2);
    this.mPublicGroupInviteSendListener.onSendPublicGroupInviteReply(paramInt1, paramLong, paramInt2, paramMap);
  }
  
  public void onSendTextReply(int paramInt1, long paramLong, int paramInt2)
  {
    logout("onSendTextReply#messageToken = " + paramInt1 + ", serverToken = " + paramLong + " , status = " + paramInt2);
    notifyListeners(new PhoneControllerListener.9(this, paramInt1, paramLong, paramInt2));
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    logout("onServiceStateChanged state:" + paramInt);
    notifyListeners(new PhoneControllerListener.18(this, paramInt));
  }
  
  public void onShareAddressBook()
  {
    ViberApplication.log(4, "PhoneControllerListener", "onShareAddressBook");
    notifyListeners(new PhoneControllerListener.1(this));
  }
  
  public void onShareAddressBookDone(boolean paramBoolean)
  {
    logout("onShareAddressBookDone#isOk = " + paramBoolean);
    notifyListeners(new PhoneControllerListener.8(this, paramBoolean));
  }
  
  public void onShareAddressBookReply(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    ViberApplication.log(4, "PhoneControllerListener", "onShareAddressBookReply#isOk = " + paramBoolean);
    notifyListeners(new PhoneControllerListener.7(this, paramBoolean, paramInt1, paramInt2));
  }
  
  public void onShouldRegister()
  {
    logout("onShouldRegister ");
    notifyListeners(new PhoneControllerListener.12(this));
  }
  
  public void onSignal(String paramString, int paramInt)
  {
    logout("onSignal stackTrace = " + paramString);
    ViberApplication.getInstance().getCrashHandler().a(paramString, paramInt);
  }
  
  public void onStartPlayPttReply(String paramString, int paramInt)
  {
    logout("onStartPlayPttReply pttID: " + paramString + ", status: " + paramInt);
    this.mPttPlayerListener.onStartPlayPttReply(paramString, paramInt);
  }
  
  public void onStartPttIndicator()
  {
    logout("onStartPttIndicator");
    this.mPttRecorderListener.onStartPttIndicator();
  }
  
  public void onStartRecordPttReply(int paramInt1, String paramString, int paramInt2)
  {
    logout("onStartRecordPttReply pttID: " + paramString + ", status: " + paramInt2 + ", seq: " + paramInt1);
    this.mPttRecorderListener.onStartRecordPttReply(paramInt1, paramString, paramInt2);
  }
  
  public void onStartRingback(String paramString)
  {
    logout("onStartRingback# toNumber = " + paramString);
    this.mDialerRemoteCallStateListener.onStartRingback(paramString);
  }
  
  public void onStopPlayPttReply(String paramString, int paramInt)
  {
    logout("onStopPlayPttReply pttID: " + paramString + ", status: " + paramInt);
    this.mPttPlayerListener.onStopPlayPttReply(paramString, paramInt);
  }
  
  public void onStopPttIndicator()
  {
    logout("onStopPttIndicator");
    this.mPttRecorderListener.onStopPttIndicator();
  }
  
  public void onStopRecordPttReply(String paramString, int paramInt)
  {
    logout("onStopRecordPttReply pttID: " + paramString + ", status: " + paramInt);
    this.mPttRecorderListener.onStopRecordPttReply(paramString, paramInt);
  }
  
  public boolean onSyncConversation(String paramString, long paramLong, int paramInt)
  {
    logout("onSyncConversation peerNum=" + paramString + " lastMessageToken=" + paramLong + " Flags=" + paramInt);
    notifyListeners(new PhoneControllerListener.49(this, paramString, paramLong, paramInt));
    return false;
  }
  
  public void onSyncConversationReply(String paramString, long paramLong, int paramInt)
  {
    logout("onSyncConversationReply peerNum=" + paramString + " lastMessageToken=" + paramLong + " Status=" + paramInt);
    notifyListeners(new PhoneControllerListener.50(this, paramString, paramLong, paramInt));
  }
  
  public boolean onSyncGroup(long paramLong1, long paramLong2, int paramInt)
  {
    logout("onSyncGroup GroupID= " + paramLong1 + " lastMessageToken= " + paramLong2 + " flags= " + paramInt);
    notifyListeners(new PhoneControllerListener.44(this, paramLong1, paramLong2, paramInt));
    return false;
  }
  
  public void onSyncGroupReply(long paramLong1, long paramLong2, int paramInt)
  {
    logout("onSyncGroupReply GroupID= " + paramLong1 + " lastMessageToken= " + paramLong2 + " status= " + paramInt);
    notifyListeners(new PhoneControllerListener.43(this, paramLong1, paramLong2, paramInt));
  }
  
  public boolean onSyncMessageLike(long paramLong1, long paramLong2, int paramInt, boolean paramBoolean, long paramLong3)
  {
    logout("onSyncMessageLike: groupID=" + paramLong1);
    notifyListeners(new PhoneControllerListener.73(this, paramLong1, paramLong2, paramInt, paramBoolean, paramLong3));
    return false;
  }
  
  public boolean onSyncMessages(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    logout("onSyncMessages readToken=" + Arrays.toString(paramArrayOfLong1) + " deletedTokens=" + Arrays.toString(paramArrayOfLong2));
    notifyListeners(new PhoneControllerListener.57(this, paramArrayOfLong1, paramArrayOfLong2));
    return false;
  }
  
  public void onSyncMessagesReply(int paramInt1, long[] paramArrayOfLong, int paramInt2)
  {
    logout("onSyncMessagesReply sequence= " + paramInt1 + " tokens= " + Arrays.toString(paramArrayOfLong) + " status=" + paramInt2);
    notifyListeners(new PhoneControllerListener.42(this, paramInt1, paramArrayOfLong, paramInt2));
  }
  
  public void onTextDelivered(long paramLong1, long paramLong2)
  {
    logout("onTextDelivered#serverToken = " + paramLong1 + ", timeDelivered = " + paramLong2);
    notifyListeners(new PhoneControllerListener.10(this, paramLong1, paramLong2));
  }
  
  public boolean onTextReceived(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3)
  {
    logout("onTextReceived messageToken=" + paramLong1 + "; fromNumber=" + paramString1 + "; text=" + gj.b(paramString2) + "; timeStamp=" + paramLong2 + "; flags=" + paramInt1 + "; messageSeq=" + paramInt2 + "; location=" + paramLocationInfo);
    notifyListeners(new PhoneControllerListener.27(this, paramLong1, paramString1, paramString2, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString3));
    return false;
  }
  
  public boolean onTextReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, String paramString3, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString4, int paramInt3)
  {
    logout("onTextReceivedFromGroup groupId=" + paramLong1 + ", groupName=" + paramString1 + ", " + gj.b(paramString3));
    notifyListeners(new PhoneControllerListener.33(this, paramLong1, paramString1, paramLong2, paramString2, paramString3, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString4, paramInt3));
    return false;
  }
  
  public void onTransferFailed(int paramInt)
  {
    logout("OnTransferFailed reason=" + paramInt);
    this.mDialerTransferCall.onTransferFailed(paramInt);
  }
  
  public void onTransferReplyOK(long paramLong)
  {
    logout("onTransferReplyOK transferToken=" + paramLong);
    this.mDialerTransferCall.onTransferReplyOK(paramLong);
  }
  
  public void onUnregisterAppReply(int paramInt1, int paramInt2)
  {
    notifyListeners(new PhoneControllerListener.84(this, paramInt1, paramInt2));
  }
  
  public boolean onUnregisteredNumber(String paramString)
  {
    logout("onUnregisteredNumber number=" + paramString);
    notifyListeners(new PhoneControllerListener.29(this, paramString));
    return true;
  }
  
  public void onUpdateBadgeReply(boolean paramBoolean)
  {
    logout("onUpdateBadgeReply isOk:" + paramBoolean);
    notifyListeners(new PhoneControllerListener.20(this, paramBoolean));
  }
  
  public void onUpdateLanguage(int paramInt)
  {
    logout("onUpdateLanguage status=" + paramInt);
    notifyListeners(new PhoneControllerListener.88(this, paramInt));
  }
  
  public void onUpdateUserName(int paramInt)
  {
    logout("onUpdateUserName status= " + paramInt);
    notifyListeners(new PhoneControllerListener.41(this, paramInt));
  }
  
  public void onUpdateUserPhoto(int paramInt)
  {
    logout("onUpdateUserPhoto status= " + paramInt);
    notifyListeners(new PhoneControllerListener.40(this, paramInt));
  }
  
  public void onUserInfoChange(long paramLong, String paramString1, String paramString2)
  {
    logout("OnUserInfoChange MessageToken= " + paramLong + " ClientName= " + paramString1 + " PhotoDownloadID= " + paramString2);
    notifyListeners(new PhoneControllerListener.47(this, paramLong, paramString1, paramString2));
  }
  
  public void onUserIsTyping(String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    logout("onUserIsTyping fromNumber: " + paramString);
    notifyListeners(new PhoneControllerListener.24(this, paramString, paramBoolean1, paramInt, paramBoolean2));
  }
  
  public void onValidatePublicGroupUri(String paramString, int paramInt1, int paramInt2)
  {
    notifyListeners(new PhoneControllerListener.83(this, paramString, paramInt1, paramInt2));
  }
  
  public void onViberOutGroup(int paramInt)
  {
    logout("onViberOutGroup voGroup:" + paramInt);
    notifyListeners(new PhoneControllerListener.67(this, paramInt));
  }
  
  public void onViberOutState(int paramInt)
  {
    logout("onViberOutState " + paramInt);
    notifyListeners(new PhoneControllerListener.59(this, paramInt));
  }
  
  public boolean onVideoReceived(long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    logout("onVideoReceived messageToken:" + paramLong1);
    notifyListeners(new PhoneControllerListener.64(this, paramLong1, paramString1, paramArrayOfByte, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString2, paramString3, paramString4, paramString5));
    return false;
  }
  
  public boolean onVideoReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4)
  {
    logout("onVideoReceivedFromGroup messageToken:" + paramLong2);
    notifyListeners(new PhoneControllerListener.65(this, paramLong1, paramString1, paramLong2, paramString2, paramArrayOfByte, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramInt3, paramString3, paramString4, paramString5, paramString6, paramInt4));
    return false;
  }
  
  public void onVoiceChannelStateChange(boolean paramBoolean)
  {
    logout("onVoiceChannelStateChange# arg = " + paramBoolean);
    notifyListeners(new PhoneControllerListener.16(this, paramBoolean));
  }
  
  public boolean onWebNotification(long paramLong, String paramString)
  {
    logout("onGetUserAppsReply");
    notifyListeners(new PhoneControllerListener.95(this, paramLong, paramString));
    return false;
  }
  
  public void peerHold()
  {
    logout("peerHold");
    this.mDialerHoldStateListener.peerHold();
  }
  
  public void peerUnhold()
  {
    logout("peerUnhold");
    this.mDialerHoldStateListener.peerUnhold();
  }
  
  public void playTone(int paramInt)
  {
    logout("playTone toneId:" + paramInt);
    notifyListeners(new PhoneControllerListener.14(this, paramInt));
  }
  
  public int removeAllPersistentSecureValues(String paramString)
  {
    ViberApplication.preferences(paramString).a();
    return 0;
  }
  
  public void removeBadge(String paramString)
  {
    logout("removeBadge phoneNumber:" + paramString);
    notifyListeners(new PhoneControllerListener.21(this, paramString));
  }
  
  public int setPersistentSecureValue(String paramString1, String paramString2, String paramString3)
  {
    ViberApplication.preferences(paramString1).a(paramString2, paramString3);
    return 0;
  }
  
  public int setPersistentValue(String paramString1, String paramString2)
  {
    ViberApplication.preferences().a(paramString1, paramString2);
    return 0;
  }
  
  public boolean shouldAutoAnswer()
  {
    logout("shouldAutoAnswer ");
    return false;
  }
  
  public void showCall(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.mDialerOutgoingScreenListener.showCall(paramString, paramBoolean1, paramBoolean2);
  }
  
  public void showCallBack(int paramInt1, int paramInt2)
  {
    this.mDialerCallbackListener.showCallBack(paramInt1, paramInt2);
  }
  
  public void showDialog(int paramInt, String paramString)
  {
    this.mDialerCallbackListener.showDialog(paramInt, paramString);
  }
  
  public void showEndCall()
  {
    logout("showEndCall");
    this.mDialerEndScreenListener.showEndCall();
  }
  
  public void showReception(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    logout("showReception");
    this.mDialerIncomingScreenListener.showReception(paramString1, paramString2, paramBoolean, paramInt);
  }
  
  public void stopTone()
  {
    logout("stopTone ");
    notifyListeners(new PhoneControllerListener.15(this));
  }
  
  public void switchToGSM(String paramString)
  {
    this.mDialerCallbackListener.switchToGSM(paramString);
  }
  
  public void unmute()
  {
    logout("unmute");
    this.mDialerMuteStateListener.unmute();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener
 * JD-Core Version:    0.7.0.1
 */