.class public Lcom/viber/jni/PhoneControllerDelegateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsGSMCallActive()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public getPersistentSecureValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    const/4 v0, -0x1

    return v0
.end method

.method public getPersistentValue(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 443
    const/4 v0, -0x1

    return v0
.end method

.method public getVoiceStatsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAddressBook(IIZZI[Lcom/viber/jni/CAddressBookEntry;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimatedMessageReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimatedMessageReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimatedMessagesSupported()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onAppsApiSupported()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public onAuthenticateAppReply(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    return-void
.end method

.method public onBlockAppReply(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 498
    return-void
.end method

.method public onBlockListReply(I)V
    .locals 0
    .parameter

    .prologue
    .line 392
    return-void
.end method

.method public onCallMissed(JLjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    return-void
.end method

.method public onChangeConversationSettingsReply(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    return-void
.end method

.method public onChangeGroup(JJIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    return-void
.end method

.method public onChangeGroupSettingsReply(JZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    return-void
.end method

.method public onChangeSettings(Z)V
    .locals 0
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public onChangeSettingsReply(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    return-void
.end method

.method public onChangeUserActivitySettingsReply(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 521
    return-void
.end method

.method public onCommError(I)V
    .locals 0
    .parameter

    .prologue
    .line 143
    return-void
.end method

.method public onCreateGroupReply(IIJLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 151
    return-void
.end method

.method public onDebugInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public onEncryptedPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    return-void
.end method

.method public onFormattedMessageReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public onGSMCallStateChanged(IZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    return-void
.end method

.method public onGSMStateChange(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    return-void
.end method

.method public onGetBillingToken(JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    return-void
.end method

.method public onGetMissedCalls([Lcom/viber/jni/CMissedCall;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public onGetPublicGroupLikes(IIZJLjava/util/Map;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 435
    return-void
.end method

.method public onGetPublicGroupMessages(IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 459
    return-void
.end method

.method public onGetRecentMessagesEnded(I)V
    .locals 0
    .parameter

    .prologue
    .line 307
    return-void
.end method

.method public onGetUserActivity(Ljava/util/Map;I)V
    .locals 0
    .parameter
    .parameter
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

    .prologue
    .line 516
    return-void
.end method

.method public onGetUserAppsReply([III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    return-void
.end method

.method public onGetUsersDetail([Lcom/viber/jni/CGetUserDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    return-void
.end method

.method public onGroupAddMember(JLjava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    return-void
.end method

.method public onGroupAddMembers(JIJI[Ljava/lang/String;Ljava/util/Map;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 368
    return-void
.end method

.method public onGroupChanged(JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupConversationUpdate(J)Z
    .locals 1
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupConversationUpdateReply(J)V
    .locals 0
    .parameter

    .prologue
    .line 254
    return-void
.end method

.method public onGroupInfo(IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    return-void
.end method

.method public onGroupLeave(JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    return-void
.end method

.method public onGroupMessageDelivered(JJLjava/lang/String;J)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupUserIsTyping(JLjava/lang/String;ZIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method public onHandleSelfDetails(JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public onIsOnlineReply(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    return-void
.end method

.method public onIsRegistered(I)V
    .locals 0
    .parameter

    .prologue
    .line 17
    return-void
.end method

.method public onIsRegisteredNumber(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    return-void
.end method

.method public onJoinPublicGroup(JII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    return-void
.end method

.method public onKeepaliveReply()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onLBServerTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 65
    return-void
.end method

.method public onLikePublicGroupMessage(JJIZIJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    return-void
.end method

.method public onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageDelivered(JJII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageStateUpdate(JI)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public onMuteGroupReply(JZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    return-void
.end method

.method public onPublicChatSupported(I)V
    .locals 0
    .parameter

    .prologue
    .line 539
    return-void
.end method

.method public onPublicGroupChanged(JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public onPublicGroupsUpdated([Lcom/viber/jni/PGLatestParams;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 402
    return-void
.end method

.method public onRecanonize(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    return-void
.end method

.method public onRecoverGroups([Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    return-void
.end method

.method public onRegisteredNumbers(ZZLjava/util/Map;III)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public onRegisteredNumbers(ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestCanceled(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    return-void
.end method

.method public onSearchPublicGroups(I[Lcom/viber/jni/PublicGroupInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    return-void
.end method

.method public onSecondaryRegistered(JIII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public onSelfVideoEnded(I)V
    .locals 0
    .parameter

    .prologue
    .line 511
    return-void
.end method

.method public onSendMessageReply(IJII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method public onSendTextReply(IJI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    return-void
.end method

.method public onServiceStateChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 85
    return-void
.end method

.method public onShareAddressBook()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public onShareAddressBookDone(Z)V
    .locals 0
    .parameter

    .prologue
    .line 34
    return-void
.end method

.method public onShareAddressBookReply(ZII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    return-void
.end method

.method public onShouldRegister()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onSignal(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    return-void
.end method

.method public onSyncConversation(Ljava/lang/String;JI)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncConversationReply(Ljava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    return-void
.end method

.method public onSyncGroup(JJI)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncGroupReply(JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    return-void
.end method

.method public onSyncMessageLike(JJIZJ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncMessages([J[J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncMessagesReply(I[JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    return-void
.end method

.method public onTextDelivered(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    return-void
.end method

.method public onTextReceived(JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onTextReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public onUnregisterAppReply(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 453
    return-void
.end method

.method public onUnregisteredNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateBadgeReply(Z)V
    .locals 0
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public onUpdateLanguage(I)V
    .locals 0
    .parameter

    .prologue
    .line 471
    return-void
.end method

.method public onUpdateUserName(I)V
    .locals 0
    .parameter

    .prologue
    .line 199
    return-void
.end method

.method public onUpdateUserPhoto(I)V
    .locals 0
    .parameter

    .prologue
    .line 195
    return-void
.end method

.method public onUserInfoChange(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    return-void
.end method

.method public onUserIsTyping(Ljava/lang/String;ZIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    return-void
.end method

.method public onValidatePublicGroupUri(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    return-void
.end method

.method public onViberOutGroup(I)V
    .locals 0
    .parameter

    .prologue
    .line 363
    return-void
.end method

.method public onViberOutState(I)V
    .locals 0
    .parameter

    .prologue
    .line 280
    return-void
.end method

.method public onVideoReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceChannelStateChange(Z)V
    .locals 0
    .parameter

    .prologue
    .line 81
    return-void
.end method

.method public onWebNotification(JLjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public playTone(I)V
    .locals 0
    .parameter

    .prologue
    .line 73
    return-void
.end method

.method public removeAllPersistentSecureValues(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 485
    const/4 v0, -0x1

    return v0
.end method

.method public removeBadge(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    return-void
.end method

.method public setPersistentSecureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 475
    const/4 v0, -0x1

    return v0
.end method

.method public setPersistentValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 448
    const/4 v0, -0x1

    return v0
.end method

.method public shouldAutoAnswer()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public stopTone()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
