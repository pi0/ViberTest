.class public interface abstract Lcom/viber/jni/PhoneControllerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract IsGSMCallActive()Z
.end method

.method public abstract getPersistentSecureValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract getPersistentValue(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract getVoiceStatsString()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAddressBook(IIZZI[Lcom/viber/jni/CAddressBookEntry;)Z
.end method

.method public abstract onAnimatedMessageReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onAnimatedMessageReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract onAnimatedMessagesSupported()V
.end method

.method public abstract onAppsApiSupported()V
.end method

.method public abstract onAuthenticateAppReply(Ljava/lang/String;III)V
.end method

.method public abstract onBlockAppReply(II)V
.end method

.method public abstract onBlockListReply(I)V
.end method

.method public abstract onCallMissed(JLjava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract onChangeConversationSettingsReply(Ljava/lang/String;ZZ)V
.end method

.method public abstract onChangeGroup(JJIIII)V
.end method

.method public abstract onChangeGroupSettingsReply(JZZ)V
.end method

.method public abstract onChangeSettings(Z)V
.end method

.method public abstract onChangeSettingsReply(II)V
.end method

.method public abstract onChangeUserActivitySettingsReply(II)V
.end method

.method public abstract onCommError(I)V
.end method

.method public abstract onCreateGroupReply(IIJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDebugInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onEncryptedPhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract onFormattedMessageReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onGSMCallStateChanged(IZ)V
.end method

.method public abstract onGSMStateChange(ILjava/lang/String;)V
.end method

.method public abstract onGetBillingToken(JLjava/lang/String;)V
.end method

.method public abstract onGetMissedCalls([Lcom/viber/jni/CMissedCall;)Z
.end method

.method public abstract onGetPublicGroupLikes(IIZJLjava/util/Map;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onGetPublicGroupMessages(IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V
.end method

.method public abstract onGetRecentMessagesEnded(I)V
.end method

.method public abstract onGetUserActivity(Ljava/util/Map;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onGetUserAppsReply([III)V
.end method

.method public abstract onGetUsersDetail([Lcom/viber/jni/CGetUserDetails;)V
.end method

.method public abstract onGroupAddMember(JLjava/lang/String;JI)V
.end method

.method public abstract onGroupAddMembers(JIJI[Ljava/lang/String;Ljava/util/Map;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJI[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract onGroupChanged(JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)Z
.end method

.method public abstract onGroupConversationUpdate(J)Z
.end method

.method public abstract onGroupConversationUpdateReply(J)V
.end method

.method public abstract onGroupInfo(IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V
.end method

.method public abstract onGroupLeave(JJI)V
.end method

.method public abstract onGroupMessageDelivered(JJLjava/lang/String;J)Z
.end method

.method public abstract onGroupUserIsTyping(JLjava/lang/String;ZIZ)V
.end method

.method public abstract onHandleSelfDetails(JLjava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract onIsOnlineReply(Ljava/lang/String;Z)V
.end method

.method public abstract onIsRegistered(I)V
.end method

.method public abstract onIsRegisteredNumber(Ljava/lang/String;I)V
.end method

.method public abstract onJoinPublicGroup(JII)V
.end method

.method public abstract onKeepaliveReply()V
.end method

.method public abstract onLBServerTime(J)V
.end method

.method public abstract onLikePublicGroupMessage(JJIZIJI)V
.end method

.method public abstract onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onMediaReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract onMessageDelivered(JJII)Z
.end method

.method public abstract onMessageStateUpdate(JI)Z
.end method

.method public abstract onMuteGroupReply(JZZ)V
.end method

.method public abstract onPublicChatSupported(I)V
.end method

.method public abstract onPublicGroupChanged(JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
.end method

.method public abstract onPublicGroupsUpdated([Lcom/viber/jni/PGLatestParams;J)V
.end method

.method public abstract onRecanonize(Ljava/lang/String;)V
.end method

.method public abstract onRecoverGroups([Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V
.end method

.method public abstract onRegisteredNumbers(ZZLjava/util/Map;III)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;III)Z"
        }
    .end annotation
.end method

.method public abstract onRegisteredNumbers(ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation
.end method

.method public abstract onRequestCanceled(II)V
.end method

.method public abstract onSearchPublicGroups(I[Lcom/viber/jni/PublicGroupInfo;I)V
.end method

.method public abstract onSecondaryRegistered(JIII)Z
.end method

.method public abstract onSelfVideoEnded(I)V
.end method

.method public abstract onSendMessageReply(IJII)V
.end method

.method public abstract onSendTextReply(IJI)V
.end method

.method public abstract onServiceStateChanged(I)V
.end method

.method public abstract onShareAddressBook()V
.end method

.method public abstract onShareAddressBookDone(Z)V
.end method

.method public abstract onShareAddressBookReply(ZII)V
.end method

.method public abstract onShouldRegister()V
.end method

.method public abstract onSignal(Ljava/lang/String;I)V
.end method

.method public abstract onSyncConversation(Ljava/lang/String;JI)Z
.end method

.method public abstract onSyncConversationReply(Ljava/lang/String;JI)V
.end method

.method public abstract onSyncGroup(JJI)Z
.end method

.method public abstract onSyncGroupReply(JJI)V
.end method

.method public abstract onSyncMessageLike(JJIZJ)Z
.end method

.method public abstract onSyncMessages([J[J)Z
.end method

.method public abstract onSyncMessagesReply(I[JI)V
.end method

.method public abstract onTextDelivered(JJ)V
.end method

.method public abstract onTextReceived(JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)Z
.end method

.method public abstract onTextReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
.end method

.method public abstract onUnregisterAppReply(II)V
.end method

.method public abstract onUnregisteredNumber(Ljava/lang/String;)Z
.end method

.method public abstract onUpdateBadgeReply(Z)V
.end method

.method public abstract onUpdateLanguage(I)V
.end method

.method public abstract onUpdateUserName(I)V
.end method

.method public abstract onUpdateUserPhoto(I)V
.end method

.method public abstract onUserInfoChange(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUserIsTyping(Ljava/lang/String;ZIZ)V
.end method

.method public abstract onValidatePublicGroupUri(Ljava/lang/String;II)V
.end method

.method public abstract onViberOutGroup(I)V
.end method

.method public abstract onViberOutState(I)V
.end method

.method public abstract onVideoReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onVideoReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract onVoiceChannelStateChange(Z)V
.end method

.method public abstract onWebNotification(JLjava/lang/String;)Z
.end method

.method public abstract playTone(I)V
.end method

.method public abstract removeAllPersistentSecureValues(Ljava/lang/String;)I
.end method

.method public abstract removeBadge(Ljava/lang/String;)V
.end method

.method public abstract setPersistentSecureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setPersistentValue(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract shouldAutoAnswer()Z
.end method

.method public abstract stopTone()V
.end method
