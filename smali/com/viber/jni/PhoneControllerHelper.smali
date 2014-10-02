.class public Lcom/viber/jni/PhoneControllerHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/connection/ConnectionController;
.implements Lcom/viber/jni/controller/PhoneController;
.implements Lcom/viber/jni/dialer/DialerController;
.implements Lcom/viber/jni/lastonline/LastOnlineController;
.implements Lcom/viber/jni/ptt/PttController;
.implements Lcom/viber/jni/publicgroup/PublicGroupController;
.implements Lcom/viber/jni/secure/SecureCallsController;
.implements Lcom/viber/jni/settings/SettingsController;


# static fields
.field private static mDelegate:Lcom/viber/jni/PhoneControllerDelegate;

.field private static mInitialized:Z

.field private static mInstance:Lcom/viber/jni/PhoneControllerHelper;

.field private static mReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcom/viber/jni/PhoneControllerHelper;->mReady:Z

    .line 41
    sput-boolean v0, Lcom/viber/jni/PhoneControllerHelper;->mInitialized:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private exit()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method static getInstance()Lcom/viber/jni/PhoneControllerHelper;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/viber/jni/PhoneControllerHelper;->mInstance:Lcom/viber/jni/PhoneControllerHelper;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/viber/jni/PhoneControllerHelper;

    invoke-direct {v0}, Lcom/viber/jni/PhoneControllerHelper;-><init>()V

    sput-object v0, Lcom/viber/jni/PhoneControllerHelper;->mInstance:Lcom/viber/jni/PhoneControllerHelper;

    .line 50
    :cond_0
    sget-object v0, Lcom/viber/jni/PhoneControllerHelper;->mInstance:Lcom/viber/jni/PhoneControllerHelper;

    return-object v0
.end method

.method private native init(Lcom/viber/jni/PhoneControllerInitializer;)I
.end method


# virtual methods
.method public declared-synchronized Init(Lcom/viber/jni/PhoneControllerInitializer;)I
    .locals 5
    .parameter

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    sget-boolean v0, Lcom/viber/jni/PhoneControllerHelper;->mInitialized:Z

    if-nez v0, :cond_1

    .line 107
    invoke-direct {p0, p1}, Lcom/viber/jni/PhoneControllerHelper;->init(Lcom/viber/jni/PhoneControllerInitializer;)I

    move-result v0

    .line 108
    iget-object v1, p1, Lcom/viber/jni/PhoneControllerInitializer;->_delegate:Lcom/viber/jni/PhoneControllerDelegate;

    sput-object v1, Lcom/viber/jni/PhoneControllerHelper;->mDelegate:Lcom/viber/jni/PhoneControllerDelegate;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const/4 v1, 0x6

    const-string/jumbo v2, "PhoneControllerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PhoneControllerHelper INIT FAIL Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerHelper;->exit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    return v0

    .line 113
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/viber/jni/PhoneControllerHelper;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native bunzip2(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public native bzip2_supported()Z
.end method

.method public native canonizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native canonizePhoneNumberForCountryCode(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public native connectivityTest(Lcom/viber/service/a;)I
.end method

.method public native disconnect()V
.end method

.method public native done()I
.end method

.method public native encodeCurrency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native generateSequence()I
.end method

.method public getConnectionController()Lcom/viber/jni/connection/ConnectionController;
    .locals 0

    .prologue
    .line 949
    return-object p0
.end method

.method public native getCountryCode(Ljava/lang/String;)I
.end method

.method public native getCountryName(Ljava/lang/String;)Lcom/viber/jni/CountryNameInfo;
.end method

.method public getDialerController()Lcom/viber/jni/dialer/DialerController;
    .locals 0

    .prologue
    .line 976
    return-object p0
.end method

.method public native getIsVoTrialCall()Z
.end method

.method public getLastOnlineController()Lcom/viber/jni/lastonline/LastOnlineController;
    .locals 0

    .prologue
    .line 964
    return-object p0
.end method

.method public native getMediaStats()Lcom/viber/jni/MediaStats;
.end method

.method public native getMyCID()J
.end method

.method public native getMyVersion()J
.end method

.method public native getPhoneState()I
.end method

.method public native getPhoneType()J
.end method

.method public getPttController()Lcom/viber/jni/ptt/PttController;
    .locals 0

    .prologue
    .line 954
    return-object p0
.end method

.method public getPublicGroupController()Lcom/viber/jni/publicgroup/PublicGroupController;
    .locals 0

    .prologue
    .line 969
    return-object p0
.end method

.method public getSecureCallsController()Lcom/viber/jni/secure/SecureCallsController;
    .locals 0

    .prologue
    .line 959
    return-object p0
.end method

.method public getSettingsController()Lcom/viber/jni/settings/SettingsController;
    .locals 0

    .prologue
    .line 944
    return-object p0
.end method

.method public native getVoiceStats(Lcom/viber/jni/VoiceStats;)Lcom/viber/jni/VoiceStats;
.end method

.method public native handleAnswer()V
.end method

.method public native handleAppModeChanged(I)V
.end method

.method public native handleAuthenticateApp(ILjava/lang/String;II)Z
.end method

.method public native handleBlockApp(II)V
.end method

.method public native handleBlockList([Ljava/lang/String;IZ)V
.end method

.method public native handleCallMissed(JLjava/lang/String;IILjava/lang/String;Z)V
.end method

.method public native handleCallReceived(JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JIIJ)V
.end method

.method public native handleCallStarted()V
.end method

.method public native handleChangeConversationSettings(Ljava/lang/String;Z)Z
.end method

.method public native handleChangeGroup(JLjava/lang/String;I)Z
.end method

.method public native handleChangeGroupSettings(JZ)Z
.end method

.method public native handleChangeLastOnlineSettings(I)Z
.end method

.method public native handleChangePublicGroup(JLjava/lang/String;JJLjava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;III)Z
.end method

.method public native handleChangeReadNotificationsSettings(I)Z
.end method

.method public native handleChangeSettings(IZZZ)Z
.end method

.method public native handleChangeUserActivitySettings(I)Z
.end method

.method public native handleClearSecureCallStorage()I
.end method

.method public native handleClose()V
.end method

.method public native handleCommError(I)V
.end method

.method public native handleConnectReject(JI)V
.end method

.method public native handleConnectivityChange(I)V
.end method

.method public native handleCreateGroup(I[Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native handleCreatePublicGroup(ILjava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JZ)Z
.end method

.method public native handleDataInterruption(Z)V
.end method

.method public native handleDecline()V
.end method

.method public native handleDeletePtt(Ljava/lang/String;)I
.end method

.method public native handleDial(Ljava/lang/String;)V
.end method

.method public native handleDialConference(Ljava/lang/String;)V
.end method

.method public native handleDialViberOut(Ljava/lang/String;)V
.end method

.method public native handleDialogReply(ILjava/lang/String;)V
.end method

.method public native handleDownloadPtt(Ljava/lang/String;)V
.end method

.method public native handleGSMStateChange(I)V
.end method

.method public native handleGetBillingToken()Z
.end method

.method public native handleGetGroupInfo(IJ)Z
.end method

.method public native handleGetLastOnline([Ljava/lang/String;IIJ)Z
.end method

.method public native handleGetPublicGroupInfo(IJII)Z
.end method

.method public native handleGetPublicGroupInfoUri(ILjava/lang/String;)Z
.end method

.method public native handleGetPublicGroupLikes(IJII)Z
.end method

.method public native handleGetPublicGroupMessages(IJI)Z
.end method

.method public native handleGetUserActivity([Ljava/lang/String;IIJ)Z
.end method

.method public native handleGetUsersDetail([Ljava/lang/String;)Z
.end method

.method public native handleGroupAddMember(JLjava/lang/String;)Z
.end method

.method public native handleGroupAddMembers(JI[Ljava/lang/String;)Z
.end method

.method public native handleGroupLeave(J)Z
.end method

.method public native handleGroupUserIsTyping(JZ)Z
.end method

.method public native handleHangup()V
.end method

.method public native handleHangupReply(ZJI)V
.end method

.method public native handleIsOnline(Ljava/lang/String;)Z
.end method

.method public native handleJoinPublicGroup(JILjava/lang/String;J)Z
.end method

.method public native handleLikePublicGroupMessage(JJIZJI)Z
.end method

.method public native handleLocalHold()V
.end method

.method public native handleLocalUnhold()V
.end method

.method public native handleMute()V
.end method

.method public native handleMuteGroup(JZ)Z
.end method

.method public native handleNetworkError(IZ)V
.end method

.method public native handlePeerCapabilities(I)V
.end method

.method public native handleRecanonizeAck(Ljava/lang/String;)Z
.end method

.method public native handleRecoverGroups()Z
.end method

.method public native handleRedial()V
.end method

.method public native handleReportFacebookStatistics(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native handleRestorePttDuration(Ljava/lang/String;)I
.end method

.method public native handleSearchPublicGroupsByText(ILjava/lang/String;Ljava/lang/String;I)Z
.end method

.method public native handleSearchPublicGroupsForCountry(ILjava/lang/String;I)Z
.end method

.method public native handleSecondaryRegisteredAck(J)Z
.end method

.method public native handleSecureCallVerified(I[B)V
.end method

.method public native handleSendAddressBookForSecondaryAck([BIIZ)Z
.end method

.method public native handleSendAnimatedMessage(Ljava/lang/String;[BILcom/viber/jni/LocationInfo;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native handleSendAnimatedToGroup(J[BILcom/viber/jni/LocationInfo;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native handleSendGroupChangedAck(J)V
.end method

.method public native handleSendMedia(Ljava/lang/String;[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native handleSendMediaToGroup(J[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native handleSendMessageDeliveredAck(J)V
.end method

.method public native handleSendMessageReceivedAck(JZ)V
.end method

.method public native handleSendMessageReplyAck(J)V
.end method

.method public native handleSendMissedCallsAck([J)Z
.end method

.method public native handleSendPtt(Ljava/lang/String;IJILcom/viber/jni/LocationInfo;ZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native handleSendPttToGroup(JIJILcom/viber/jni/LocationInfo;ZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native handleSendPublicGroupInvite(I[Ljava/lang/String;J)Z
.end method

.method public native handleSendPublicGroupsUpdatedAck(J)V
.end method

.method public native handleSendRegisteredNumbersAck(IZ)Z
.end method

.method public native handleSendSyncConversationAck(Ljava/lang/String;JI)Z
.end method

.method public native handleSendSyncGroupAck(JJI)Z
.end method

.method public native handleSendSyncMessageLikeAck(J)V
.end method

.method public native handleSendSyncMessagesAck([J[J)Z
.end method

.method public native handleSendText(Ljava/lang/String;Ljava/lang/String;ILcom/viber/jni/LocationInfo;ZI)Z
.end method

.method public native handleSendTextToGroup(JLjava/lang/String;ILcom/viber/jni/LocationInfo;ZI)Z
.end method

.method public native handleSendUnregisteredNumbersAck(I)Z
.end method

.method public native handleSendUpdateSelfUserDetailsAck(J)Z
.end method

.method public native handleSendVideo(Ljava/lang/String;[B[BIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native handleSendVideoToGroup(J[B[BIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native handleSetCanonizationRules(Ljava/lang/String;)Z
.end method

.method public native handleStartPlayPtt(Ljava/lang/String;)V
.end method

.method public native handleStartRecordPtt(I)V
.end method

.method public native handleStopPlayPtt(Ljava/lang/String;)V
.end method

.method public native handleStopRecordPtt(Ljava/lang/String;)V
.end method

.method public native handleSwitchToGSM(Ljava/lang/String;)V
.end method

.method public native handleSyncConversation(Ljava/lang/String;JI)Z
.end method

.method public native handleSyncDeletedMessages([Lcom/viber/jni/ConversationToken;[Lcom/viber/jni/GroupToken;I)Z
.end method

.method public native handleSyncGroup(JJI)Z
.end method

.method public native handleSyncMessageLikeAck(J)Z
.end method

.method public native handleTransfer(Z)V
.end method

.method public native handleTransferReply(JI)V
.end method

.method public native handleUnmute()V
.end method

.method public native handleUnregisterApp(II)Z
.end method

.method public native handleUpdateBadge(I)Z
.end method

.method public native handleUpdateExistingMsgStatus(JI)Z
.end method

.method public native handleUpdateExistingMsgStatusAck(J)Z
.end method

.method public native handleUpdateGroupConversationStatus(J)Z
.end method

.method public native handleUpdateGroupConversationStatusAck(J)Z
.end method

.method public native handleUpdateLanguage(Ljava/lang/String;)Z
.end method

.method public native handleUpdateUserName(Ljava/lang/String;)Z
.end method

.method public native handleUpdateUserPhoto(J)Z
.end method

.method public native handleUserInfoChangeAck(J)Z
.end method

.method public native handleUserIsTyping(Ljava/lang/String;Z)Z
.end method

.method public native handleValidatePublicGroupUri(ILjava/lang/String;)Z
.end method

.method public native isConnected()Z
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/viber/jni/PhoneControllerHelper;->mInitialized:Z

    return v0
.end method

.method public native isRakutenPhone(Ljava/lang/String;)Z
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/viber/jni/PhoneControllerHelper;->mReady:Z

    return v0
.end method

.method public native isRegisteredNumber(Ljava/lang/String;)Z
.end method

.method public native isShortStandardBackgroundID(Ljava/lang/String;)Z
.end method

.method public native isVideoSupported()Z
.end method

.method public native lengthenStandartBackgroundID(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected declared-synchronized loadLibrary()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/viber/jni/PhoneControllerHelper;->mReady:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 62
    :try_start_1
    const-string/jumbo v2, "vassert"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2

    .line 65
    :goto_0
    :try_start_2
    const-string/jumbo v2, "VoipEngineNative"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    :try_start_3
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getFlagsForDeviceModel()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/sound/AbstractSoundService;->setDeviceFlags(I)I

    .line 77
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getSpeechEnhancementsModeForDeviceModel()Lcom/viber/jni/DeviceFlags$DeviceModes;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 79
    :try_start_4
    iget v2, v1, Lcom/viber/jni/DeviceFlags$DeviceModes;->AEC_mode:I

    iget v3, v1, Lcom/viber/jni/DeviceFlags$DeviceModes;->AGC_mode:I

    iget v4, v1, Lcom/viber/jni/DeviceFlags$DeviceModes;->NS_mode:I

    iget v5, v1, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxAGC_mode:I

    iget v1, v1, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxNS_mode:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/viber/voip/sound/AbstractSoundService;->setSpeechEnhancementsModes(IIIII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1

    .line 81
    :goto_1
    const/4 v1, 0x1

    :try_start_5
    sput-boolean v1, Lcom/viber/jni/PhoneControllerHelper;->mReady:Z

    .line 82
    invoke-static {}, Lorg/webrtc/videoengine/ViEVideoSupport;->init()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    :goto_2
    monitor-exit p0

    return v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const/4 v2, 0x6

    :try_start_6
    const-string/jumbo v3, "LIBRARY"

    const-string/jumbo v4, "Unable to load library: "

    invoke-static {v2, v3, v4, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 68
    goto :goto_2

    .line 80
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v0, v1

    .line 85
    goto :goto_2

    .line 62
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public native notifyActivityOnForeground(Z)V
.end method

.method public native queryVoiceQuality()I
.end method

.method public native requestShutdown()V
.end method

.method public native resetDeviceKey()V
.end method

.method public native sendCallStartedNotificationToSN(J)V
.end method

.method public native sendKA()V
.end method

.method public native sendStatistics(Ljava/lang/String;)Z
.end method

.method public native sendTransferReqMsg(ZJI)V
.end method

.method public native setCaptureDeviceName(Ljava/lang/String;)V
.end method

.method public native setConnectionToken(J)V
.end method

.method public native setDeviceKey([B)V
.end method

.method public native setDeviceOrientation(III)I
.end method

.method public native setEnableVideo(Z)V
.end method

.method public native setIsVoTrialCall(Z)V
.end method

.method public native setPixieBundle(Ljava/lang/String;)V
.end method

.method public native setPixieMode(I)V
.end method

.method public native shareAddressBookList([Lcom/viber/jni/CAddressBookInfo;II)Z
.end method

.method public native shareContact(Lcom/viber/jni/CAddressBookInfo;II)Z
.end method

.method public native shortenStandardBackgroundID(Ljava/lang/String;[J)I
.end method

.method public native startPixie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V
.end method

.method public native startRecvVideo(Ljava/lang/Object;)I
.end method

.method public native startSendVideo(Ljava/lang/Object;)I
.end method

.method public native stopRecvVideo()I
.end method

.method public native stopSendVideo()I
.end method

.method public native testConnection(I)V
.end method

.method public native updateData(Ljava/lang/String;)Z
.end method
