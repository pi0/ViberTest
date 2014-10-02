.class public interface abstract Lcom/viber/jni/controller/PhoneController;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canonizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract canonizePhoneNumberForCountryCode(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract connectivityTest(Lcom/viber/service/a;)I
.end method

.method public abstract disconnect()V
.end method

.method public abstract done()I
.end method

.method public abstract encodeCurrency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract generateSequence()I
.end method

.method public abstract getConnectionController()Lcom/viber/jni/connection/ConnectionController;
.end method

.method public abstract getCountryCode(Ljava/lang/String;)I
.end method

.method public abstract getCountryName(Ljava/lang/String;)Lcom/viber/jni/CountryNameInfo;
.end method

.method public abstract getDialerController()Lcom/viber/jni/dialer/DialerController;
.end method

.method public abstract getLastOnlineController()Lcom/viber/jni/lastonline/LastOnlineController;
.end method

.method public abstract getMyCID()J
.end method

.method public abstract getMyVersion()J
.end method

.method public abstract getPhoneType()J
.end method

.method public abstract getPttController()Lcom/viber/jni/ptt/PttController;
.end method

.method public abstract getPublicGroupController()Lcom/viber/jni/publicgroup/PublicGroupController;
.end method

.method public abstract getSecureCallsController()Lcom/viber/jni/secure/SecureCallsController;
.end method

.method public abstract getSettingsController()Lcom/viber/jni/settings/SettingsController;
.end method

.method public abstract handleAppModeChanged(I)V
.end method

.method public abstract handleAuthenticateApp(ILjava/lang/String;II)Z
.end method

.method public abstract handleBlockApp(II)V
.end method

.method public abstract handleBlockList([Ljava/lang/String;IZ)V
.end method

.method public abstract handleChangeConversationSettings(Ljava/lang/String;Z)Z
.end method

.method public abstract handleChangeGroup(JLjava/lang/String;I)Z
.end method

.method public abstract handleChangeGroupSettings(JZ)Z
.end method

.method public abstract handleChangePublicGroup(JLjava/lang/String;JJLjava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;III)Z
.end method

.method public abstract handleChangeSettings(IZZZ)Z
.end method

.method public abstract handleChangeUserActivitySettings(I)Z
.end method

.method public abstract handleCommError(I)V
.end method

.method public abstract handleConnectReject(JI)V
.end method

.method public abstract handleConnectivityChange(I)V
.end method

.method public abstract handleCreateGroup(I[Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handleCreatePublicGroup(ILjava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JZ)Z
.end method

.method public abstract handleDataInterruption(Z)V
.end method

.method public abstract handleDialConference(Ljava/lang/String;)V
.end method

.method public abstract handleGSMStateChange(I)V
.end method

.method public abstract handleGetBillingToken()Z
.end method

.method public abstract handleGetGroupInfo(IJ)Z
.end method

.method public abstract handleGetPublicGroupInfo(IJII)Z
.end method

.method public abstract handleGetPublicGroupInfoUri(ILjava/lang/String;)Z
.end method

.method public abstract handleGetPublicGroupLikes(IJII)Z
.end method

.method public abstract handleGetPublicGroupMessages(IJI)Z
.end method

.method public abstract handleGetUserActivity([Ljava/lang/String;IIJ)Z
.end method

.method public abstract handleGetUsersDetail([Ljava/lang/String;)Z
.end method

.method public abstract handleGroupAddMember(JLjava/lang/String;)Z
.end method

.method public abstract handleGroupAddMembers(JI[Ljava/lang/String;)Z
.end method

.method public abstract handleGroupLeave(J)Z
.end method

.method public abstract handleGroupUserIsTyping(JZ)Z
.end method

.method public abstract handleIsOnline(Ljava/lang/String;)Z
.end method

.method public abstract handleJoinPublicGroup(JILjava/lang/String;J)Z
.end method

.method public abstract handleLikePublicGroupMessage(JJIZJI)Z
.end method

.method public abstract handleMuteGroup(JZ)Z
.end method

.method public abstract handleNetworkError(IZ)V
.end method

.method public abstract handlePeerCapabilities(I)V
.end method

.method public abstract handleRecanonizeAck(Ljava/lang/String;)Z
.end method

.method public abstract handleRecoverGroups()Z
.end method

.method public abstract handleReportFacebookStatistics(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handleSearchPublicGroupsByText(ILjava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract handleSearchPublicGroupsForCountry(ILjava/lang/String;I)Z
.end method

.method public abstract handleSecondaryRegisteredAck(J)Z
.end method

.method public abstract handleSendAddressBookForSecondaryAck([BIIZ)Z
.end method

.method public abstract handleSendAnimatedMessage(Ljava/lang/String;[BILcom/viber/jni/LocationInfo;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handleSendAnimatedToGroup(J[BILcom/viber/jni/LocationInfo;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handleSendGroupChangedAck(J)V
.end method

.method public abstract handleSendMedia(Ljava/lang/String;[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handleSendMediaToGroup(J[B[BIIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handleSendMessageDeliveredAck(J)V
.end method

.method public abstract handleSendMessageReceivedAck(JZ)V
.end method

.method public abstract handleSendMessageReplyAck(J)V
.end method

.method public abstract handleSendMissedCallsAck([J)Z
.end method

.method public abstract handleSendPublicGroupsUpdatedAck(J)V
.end method

.method public abstract handleSendRegisteredNumbersAck(IZ)Z
.end method

.method public abstract handleSendSyncConversationAck(Ljava/lang/String;JI)Z
.end method

.method public abstract handleSendSyncGroupAck(JJI)Z
.end method

.method public abstract handleSendSyncMessageLikeAck(J)V
.end method

.method public abstract handleSendSyncMessagesAck([J[J)Z
.end method

.method public abstract handleSendText(Ljava/lang/String;Ljava/lang/String;ILcom/viber/jni/LocationInfo;ZI)Z
.end method

.method public abstract handleSendTextToGroup(JLjava/lang/String;ILcom/viber/jni/LocationInfo;ZI)Z
.end method

.method public abstract handleSendUnregisteredNumbersAck(I)Z
.end method

.method public abstract handleSendUpdateSelfUserDetailsAck(J)Z
.end method

.method public abstract handleSendVideo(Ljava/lang/String;[B[BIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handleSendVideoToGroup(J[B[BIJLcom/viber/jni/LocationInfo;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handleSetCanonizationRules(Ljava/lang/String;)Z
.end method

.method public abstract handleSyncConversation(Ljava/lang/String;JI)Z
.end method

.method public abstract handleSyncDeletedMessages([Lcom/viber/jni/ConversationToken;[Lcom/viber/jni/GroupToken;I)Z
.end method

.method public abstract handleSyncGroup(JJI)Z
.end method

.method public abstract handleSyncMessageLikeAck(J)Z
.end method

.method public abstract handleUnregisterApp(II)Z
.end method

.method public abstract handleUpdateBadge(I)Z
.end method

.method public abstract handleUpdateExistingMsgStatus(JI)Z
.end method

.method public abstract handleUpdateExistingMsgStatusAck(J)Z
.end method

.method public abstract handleUpdateGroupConversationStatus(J)Z
.end method

.method public abstract handleUpdateGroupConversationStatusAck(J)Z
.end method

.method public abstract handleUpdateLanguage(Ljava/lang/String;)Z
.end method

.method public abstract handleUpdateUserName(Ljava/lang/String;)Z
.end method

.method public abstract handleUpdateUserPhoto(J)Z
.end method

.method public abstract handleUserInfoChangeAck(J)Z
.end method

.method public abstract handleUserIsTyping(Ljava/lang/String;Z)Z
.end method

.method public abstract handleValidatePublicGroupUri(ILjava/lang/String;)Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isRakutenPhone(Ljava/lang/String;)Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isRegisteredNumber(Ljava/lang/String;)Z
.end method

.method public abstract isShortStandardBackgroundID(Ljava/lang/String;)Z
.end method

.method public abstract isVideoSupported()Z
.end method

.method public abstract lengthenStandartBackgroundID(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract notifyActivityOnForeground(Z)V
.end method

.method public abstract requestShutdown()V
.end method

.method public abstract resetDeviceKey()V
.end method

.method public abstract sendCallStartedNotificationToSN(J)V
.end method

.method public abstract sendKA()V
.end method

.method public abstract sendStatistics(Ljava/lang/String;)Z
.end method

.method public abstract sendTransferReqMsg(ZJI)V
.end method

.method public abstract setConnectionToken(J)V
.end method

.method public abstract setDeviceKey([B)V
.end method

.method public abstract setDeviceOrientation(III)I
.end method

.method public abstract setEnableVideo(Z)V
.end method

.method public abstract setPixieBundle(Ljava/lang/String;)V
.end method

.method public abstract setPixieMode(I)V
.end method

.method public abstract shareAddressBookList([Lcom/viber/jni/CAddressBookInfo;II)Z
.end method

.method public abstract shareContact(Lcom/viber/jni/CAddressBookInfo;II)Z
.end method

.method public abstract shortenStandardBackgroundID(Ljava/lang/String;[J)I
.end method

.method public abstract startPixie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V
.end method

.method public abstract testConnection(I)V
.end method

.method public abstract updateData(Ljava/lang/String;)Z
.end method
