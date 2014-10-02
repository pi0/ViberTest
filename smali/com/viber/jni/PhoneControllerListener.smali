.class public Lcom/viber/jni/PhoneControllerListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerDelegate;
.implements Lcom/viber/jni/connection/ConnectionDelegate;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerDelegate;
.implements Lcom/viber/jni/lastonline/LastOnlineDelegate;
.implements Lcom/viber/jni/ptt/PttControllerDelegate$DelegatePtt;
.implements Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupDelegate;
.implements Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;
.implements Lcom/viber/jni/secure/SecureCallsDelegate;
.implements Lcom/viber/jni/settings/SettingsControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/PhoneControllerDelegate;",
        ">;",
        "Lcom/viber/jni/PhoneControllerDelegate;",
        "Lcom/viber/jni/connection/ConnectionDelegate;",
        "Lcom/viber/jni/dialer/DialerControllerDelegate$DialerDelegate;",
        "Lcom/viber/jni/lastonline/LastOnlineDelegate;",
        "Lcom/viber/jni/ptt/PttControllerDelegate$DelegatePtt;",
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupDelegate;",
        "Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;",
        "Lcom/viber/jni/secure/SecureCallsDelegate;",
        "Lcom/viber/jni/settings/SettingsControllerDelegate;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneControllerListener"

.field private static final onConnectionStatesStr:[Ljava/lang/String;


# instance fields
.field private mConnectionListener:Lcom/viber/jni/connection/ConnectionListener;

.field private mDialerCallInterruptionListener:Lcom/viber/jni/dialer/DialerCallInterruptionListener;

.field private mDialerCallbackListener:Lcom/viber/jni/dialer/DialerCallbackListener;

.field private mDialerEndScreenListener:Lcom/viber/jni/dialer/DialerEndScreenListener;

.field private mDialerHoldStateListener:Lcom/viber/jni/dialer/DialerHoldStateListener;

.field private mDialerIncomingScreenListener:Lcom/viber/jni/dialer/DialerIncomingScreenListener;

.field private mDialerLocalCallStateListener:Lcom/viber/jni/dialer/DialerLocalCallStateListener;

.field private mDialerMuteStateListener:Lcom/viber/jni/dialer/DialerMuteStateListener;

.field private mDialerOutgoingScreenListener:Lcom/viber/jni/dialer/DialerOutgoingScreenListener;

.field private mDialerPhoneStateListener:Lcom/viber/jni/dialer/DialerPhoneStateListener;

.field private mDialerRemoteCallStateListener:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

.field private mDialerTransferCall:Lcom/viber/jni/dialer/DialerTransferCallListener;

.field private mDialerVideoListener:Lcom/viber/jni/dialer/DialerVideoListener;

.field private mLastOnlineListener:Lcom/viber/jni/lastonline/LastOnlineListener;

.field private mPttDownloaderListener:Lcom/viber/jni/ptt/PttDownloaderListener;

.field private mPttPlayerListener:Lcom/viber/jni/ptt/PttPlayerListener;

.field private mPttReceiverListener:Lcom/viber/jni/ptt/PttReceiverListener;

.field private mPttRecorderListener:Lcom/viber/jni/ptt/PttRecorderListener;

.field private mPttUploaderListener:Lcom/viber/jni/ptt/PttUploaderListener;

.field private mPublicGroupInfoReceiverListener:Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

.field private mPublicGroupInviteReceiveListener:Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;

.field private mPublicGroupInviteSendListener:Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;

.field private mSecureCallsListener:Lcom/viber/jni/secure/SecureCallsListener;

.field private mSettingsListener:Lcom/viber/jni/settings/SettingsListener;

.field private voiceStats:Lcom/viber/jni/VoiceStats;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1196
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Disconnected"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Connecting"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Failed connect"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Connected"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/jni/PhoneControllerListener;->onConnectionStatesStr:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    .line 61
    new-instance v0, Lcom/viber/jni/ptt/PttPlayerListener;

    invoke-direct {v0}, Lcom/viber/jni/ptt/PttPlayerListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttPlayerListener:Lcom/viber/jni/ptt/PttPlayerListener;

    .line 62
    new-instance v0, Lcom/viber/jni/ptt/PttRecorderListener;

    invoke-direct {v0}, Lcom/viber/jni/ptt/PttRecorderListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttRecorderListener:Lcom/viber/jni/ptt/PttRecorderListener;

    .line 63
    new-instance v0, Lcom/viber/jni/ptt/PttReceiverListener;

    invoke-direct {v0}, Lcom/viber/jni/ptt/PttReceiverListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttReceiverListener:Lcom/viber/jni/ptt/PttReceiverListener;

    .line 64
    new-instance v0, Lcom/viber/jni/ptt/PttUploaderListener;

    invoke-direct {v0}, Lcom/viber/jni/ptt/PttUploaderListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttUploaderListener:Lcom/viber/jni/ptt/PttUploaderListener;

    .line 65
    new-instance v0, Lcom/viber/jni/ptt/PttDownloaderListener;

    invoke-direct {v0}, Lcom/viber/jni/ptt/PttDownloaderListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttDownloaderListener:Lcom/viber/jni/ptt/PttDownloaderListener;

    .line 67
    new-instance v0, Lcom/viber/jni/settings/SettingsListener;

    invoke-direct {v0}, Lcom/viber/jni/settings/SettingsListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mSettingsListener:Lcom/viber/jni/settings/SettingsListener;

    .line 69
    new-instance v0, Lcom/viber/jni/connection/ConnectionListener;

    invoke-direct {v0}, Lcom/viber/jni/connection/ConnectionListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mConnectionListener:Lcom/viber/jni/connection/ConnectionListener;

    .line 71
    new-instance v0, Lcom/viber/jni/lastonline/LastOnlineListener;

    invoke-direct {v0}, Lcom/viber/jni/lastonline/LastOnlineListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mLastOnlineListener:Lcom/viber/jni/lastonline/LastOnlineListener;

    .line 73
    new-instance v0, Lcom/viber/jni/secure/SecureCallsListener;

    invoke-direct {v0}, Lcom/viber/jni/secure/SecureCallsListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mSecureCallsListener:Lcom/viber/jni/secure/SecureCallsListener;

    .line 75
    new-instance v0, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;

    invoke-direct {v0}, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPublicGroupInviteReceiveListener:Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;

    .line 76
    new-instance v0, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;

    invoke-direct {v0}, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPublicGroupInviteSendListener:Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;

    .line 77
    new-instance v0, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

    invoke-direct {v0}, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPublicGroupInfoReceiverListener:Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

    .line 79
    new-instance v0, Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerLocalCallStateListener:Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    .line 80
    new-instance v0, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerRemoteCallStateListener:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    .line 81
    new-instance v0, Lcom/viber/jni/dialer/DialerCallbackListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerCallbackListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerCallbackListener:Lcom/viber/jni/dialer/DialerCallbackListener;

    .line 82
    new-instance v0, Lcom/viber/jni/dialer/DialerMuteStateListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerMuteStateListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerMuteStateListener:Lcom/viber/jni/dialer/DialerMuteStateListener;

    .line 83
    new-instance v0, Lcom/viber/jni/dialer/DialerHoldStateListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerHoldStateListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerHoldStateListener:Lcom/viber/jni/dialer/DialerHoldStateListener;

    .line 84
    new-instance v0, Lcom/viber/jni/dialer/DialerTransferCallListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerTransferCallListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerTransferCall:Lcom/viber/jni/dialer/DialerTransferCallListener;

    .line 85
    new-instance v0, Lcom/viber/jni/dialer/DialerVideoListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerVideoListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerVideoListener:Lcom/viber/jni/dialer/DialerVideoListener;

    .line 86
    new-instance v0, Lcom/viber/jni/dialer/DialerPhoneStateListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerPhoneStateListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerPhoneStateListener:Lcom/viber/jni/dialer/DialerPhoneStateListener;

    .line 87
    new-instance v0, Lcom/viber/jni/dialer/DialerEndScreenListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerEndScreenListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerEndScreenListener:Lcom/viber/jni/dialer/DialerEndScreenListener;

    .line 88
    new-instance v0, Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerIncomingScreenListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerIncomingScreenListener:Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    .line 89
    new-instance v0, Lcom/viber/jni/dialer/DialerOutgoingScreenListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerOutgoingScreenListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerOutgoingScreenListener:Lcom/viber/jni/dialer/DialerOutgoingScreenListener;

    .line 90
    new-instance v0, Lcom/viber/jni/dialer/DialerCallInterruptionListener;

    invoke-direct {v0}, Lcom/viber/jni/dialer/DialerCallInterruptionListener;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerCallInterruptionListener:Lcom/viber/jni/dialer/DialerCallInterruptionListener;

    .line 92
    new-instance v0, Lcom/viber/jni/VoiceStats;

    invoke-direct {v0}, Lcom/viber/jni/VoiceStats;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->voiceStats:Lcom/viber/jni/VoiceStats;

    return-void
.end method

.method private logout(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 191
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method


# virtual methods
.method public IsGSMCallActive()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1248
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isGSMCallActive()Z

    move-result v0

    return v0
.end method

.method public getConnectionListener()Lcom/viber/jni/connection/ConnectionListener;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mConnectionListener:Lcom/viber/jni/connection/ConnectionListener;

    return-object v0
.end method

.method public getDialerCallInterruptionListener()Lcom/viber/jni/dialer/DialerCallInterruptionListener;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerCallInterruptionListener:Lcom/viber/jni/dialer/DialerCallInterruptionListener;

    return-object v0
.end method

.method public getDialerCallbackListener()Lcom/viber/jni/dialer/DialerCallbackListener;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerCallbackListener:Lcom/viber/jni/dialer/DialerCallbackListener;

    return-object v0
.end method

.method public getDialerEndScreenListener()Lcom/viber/jni/dialer/DialerEndScreenListener;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerEndScreenListener:Lcom/viber/jni/dialer/DialerEndScreenListener;

    return-object v0
.end method

.method public getDialerHoldStateListener()Lcom/viber/jni/dialer/DialerHoldStateListener;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerHoldStateListener:Lcom/viber/jni/dialer/DialerHoldStateListener;

    return-object v0
.end method

.method public getDialerIncomingScreenListener()Lcom/viber/jni/dialer/DialerIncomingScreenListener;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerIncomingScreenListener:Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    return-object v0
.end method

.method public getDialerLocalCallStateListener()Lcom/viber/jni/dialer/DialerLocalCallStateListener;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerLocalCallStateListener:Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    return-object v0
.end method

.method public getDialerMuteStateListener()Lcom/viber/jni/dialer/DialerMuteStateListener;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerMuteStateListener:Lcom/viber/jni/dialer/DialerMuteStateListener;

    return-object v0
.end method

.method public getDialerOutgoingScreenListener()Lcom/viber/jni/dialer/DialerOutgoingScreenListener;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerOutgoingScreenListener:Lcom/viber/jni/dialer/DialerOutgoingScreenListener;

    return-object v0
.end method

.method public getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerPhoneStateListener:Lcom/viber/jni/dialer/DialerPhoneStateListener;

    return-object v0
.end method

.method public getDialerRemoteCallStateListener()Lcom/viber/jni/dialer/DialerRemoteCallStateListener;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerRemoteCallStateListener:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    return-object v0
.end method

.method public getDialerTransferCallListener()Lcom/viber/jni/dialer/DialerTransferCallListener;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerTransferCall:Lcom/viber/jni/dialer/DialerTransferCallListener;

    return-object v0
.end method

.method public getDialerVideoListener()Lcom/viber/jni/dialer/DialerVideoListener;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerVideoListener:Lcom/viber/jni/dialer/DialerVideoListener;

    return-object v0
.end method

.method public getLastOnlineListener()Lcom/viber/jni/lastonline/LastOnlineListener;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mLastOnlineListener:Lcom/viber/jni/lastonline/LastOnlineListener;

    return-object v0
.end method

.method public getPersistentSecureValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1850
    invoke-static {p1}, Lcom/viber/voip/ViberApplication;->preferences(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1851
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x6

    .line 1853
    :goto_0
    return v0

    .line 1852
    :cond_1
    aput-object v1, p3, v0

    goto :goto_0
.end method

.method public getPersistentValue(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1760
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1761
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x6

    .line 1763
    :goto_0
    return v0

    .line 1762
    :cond_1
    aput-object v1, p2, v0

    goto :goto_0
.end method

.method public getPttDownloaderListener()Lcom/viber/jni/ptt/PttDownloaderListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttDownloaderListener:Lcom/viber/jni/ptt/PttDownloaderListener;

    return-object v0
.end method

.method public getPttPlayerListener()Lcom/viber/jni/ptt/PttPlayerListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttPlayerListener:Lcom/viber/jni/ptt/PttPlayerListener;

    return-object v0
.end method

.method public getPttReceiverListener()Lcom/viber/jni/ptt/PttReceiverListener;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttReceiverListener:Lcom/viber/jni/ptt/PttReceiverListener;

    return-object v0
.end method

.method public getPttRecorderListener()Lcom/viber/jni/ptt/PttRecorderListener;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttRecorderListener:Lcom/viber/jni/ptt/PttRecorderListener;

    return-object v0
.end method

.method public getPttUploaderListener()Lcom/viber/jni/ptt/PttUploaderListener;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttUploaderListener:Lcom/viber/jni/ptt/PttUploaderListener;

    return-object v0
.end method

.method public getPublicGroupInfoReceiverListener()Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPublicGroupInfoReceiverListener:Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

    return-object v0
.end method

.method public getPublicGroupInviteReceiveListener()Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPublicGroupInviteReceiveListener:Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;

    return-object v0
.end method

.method public getPublicGroupInviteSendListener()Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPublicGroupInviteSendListener:Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;

    return-object v0
.end method

.method public getSecureCallsListener()Lcom/viber/jni/secure/SecureCallsListener;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mSecureCallsListener:Lcom/viber/jni/secure/SecureCallsListener;

    return-object v0
.end method

.method public getSettingsListener()Lcom/viber/jni/settings/SettingsListener;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mSettingsListener:Lcom/viber/jni/settings/SettingsListener;

    return-object v0
.end method

.method public getVoiceStatsString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1241
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerListener;->voiceStats:Lcom/viber/jni/VoiceStats;

    invoke-interface {v0, v1}, Lcom/viber/jni/dialer/DialerController;->getVoiceStats(Lcom/viber/jni/VoiceStats;)Lcom/viber/jni/VoiceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->voiceStats:Lcom/viber/jni/VoiceStats;

    .line 1242
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->voiceStats:Lcom/viber/jni/VoiceStats;

    invoke-virtual {v0}, Lcom/viber/jni/VoiceStats;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideCall(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 921
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerOutgoingScreenListener:Lcom/viber/jni/dialer/DialerOutgoingScreenListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/dialer/DialerOutgoingScreenListener;->hideCall(Ljava/lang/String;Z)V

    .line 922
    return-void
.end method

.method public hideCallBack()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerCallbackListener:Lcom/viber/jni/dialer/DialerCallbackListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerCallbackListener;->hideCallBack()V

    .line 901
    return-void
.end method

.method public hideEndCall()V
    .locals 1

    .prologue
    .line 932
    const-string/jumbo v0, "hideEndCall"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerEndScreenListener:Lcom/viber/jni/dialer/DialerEndScreenListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerEndScreenListener;->hideEndCall()V

    .line 934
    return-void
.end method

.method public hideReception()V
    .locals 1

    .prologue
    .line 945
    const-string/jumbo v0, "hideReception"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerIncomingScreenListener:Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerIncomingScreenListener;->hideReception()V

    .line 947
    return-void
.end method

.method public localHold()V
    .locals 1

    .prologue
    .line 1015
    const-string/jumbo v0, "localHold"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerHoldStateListener:Lcom/viber/jni/dialer/DialerHoldStateListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerHoldStateListener;->localHold()V

    .line 1017
    return-void
.end method

.method public localUnhold()V
    .locals 1

    .prologue
    .line 1021
    const-string/jumbo v0, "localUnhold"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerHoldStateListener:Lcom/viber/jni/dialer/DialerHoldStateListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerHoldStateListener;->localUnhold()V

    .line 1023
    return-void
.end method

.method public mute()V
    .locals 1

    .prologue
    .line 1003
    const-string/jumbo v0, "mute"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerMuteStateListener:Lcom/viber/jni/dialer/DialerMuteStateListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerMuteStateListener;->mute()V

    .line 1005
    return-void
.end method

.method public onAddressBook(IIZZI[Lcom/viber/jni/CAddressBookEntry;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1290
    const-string/jumbo v0, "onAddressBook"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1291
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$61;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerListener$61;-><init>(Lcom/viber/jni/PhoneControllerListener;IIZZI[Lcom/viber/jni/CAddressBookEntry;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1298
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimatedMessageReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
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
    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnimatedMessageReceived messageToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1408
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$62;

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/viber/jni/PhoneControllerListener$62;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1416
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimatedMessageReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 19
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
    .line 1424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAnimatedMessageReceivedFromGroup messageToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1426
    new-instance v2, Lcom/viber/jni/PhoneControllerListener$63;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    invoke-direct/range {v2 .. v18}, Lcom/viber/jni/PhoneControllerListener$63;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1434
    const/4 v2, 0x0

    return v2
.end method

.method public onAnimatedMessagesSupported()V
    .locals 1

    .prologue
    .line 1474
    const-string/jumbo v0, "onAnimatedMessagesSupported"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1476
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$66;

    invoke-direct {v0, p0}, Lcom/viber/jni/PhoneControllerListener$66;-><init>(Lcom/viber/jni/PhoneControllerListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1483
    return-void
.end method

.method public onAppsApiSupported()V
    .locals 1

    .prologue
    .line 1936
    const-string/jumbo v0, "onAppsApiSupported"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1937
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$93;

    invoke-direct {v0, p0}, Lcom/viber/jni/PhoneControllerListener$93;-><init>(Lcom/viber/jni/PhoneControllerListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1944
    return-void
.end method

.method public onAuthenticateAppReply(Ljava/lang/String;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAuthenticateAppReply: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1653
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$77;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener$77;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1659
    return-void
.end method

.method public onBlockAppReply(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1788
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$85;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$85;-><init>(Lcom/viber/jni/PhoneControllerListener;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1794
    return-void
.end method

.method public onBlockListReply(I)V
    .locals 2
    .parameter

    .prologue
    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBlockListReply: sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1595
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$74;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$74;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1602
    return-void
.end method

.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 966
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallEnded callToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isInitiator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; originPhoneNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; dialType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerLocalCallStateListener:Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->onCallEnded(JZLjava/lang/String;II)V

    .line 969
    return-void
.end method

.method public onCallMissed(JLjava/lang/String;IILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallMissed originPhoneNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",numMissed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",numMissedOther:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$3;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerListener$3;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 241
    return-void
.end method

.method public onCallStarted(Z)V
    .locals 4
    .parameter

    .prologue
    .line 957
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallStarted isInitiator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerLocalCallStateListener:Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->onCallStarted(Z)V

    .line 959
    return-void
.end method

.method public onChangeConversationSettingsReply(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OnChangeConversationSettingsReply PeerPhoneNum= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SmartNotifications= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IsOK= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 861
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$45;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerListener$45;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 868
    return-void
.end method

.method public onChangeGroup(JJIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1695
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$79;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/viber/jni/PhoneControllerListener$79;-><init>(Lcom/viber/jni/PhoneControllerListener;JJIIII)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1702
    return-void
.end method

.method public onChangeGroupSettingsReply(JZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChangeGroupSettingsReply groupId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SmartNotifications= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isOk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1125
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$52;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener$52;-><init>(Lcom/viber/jni/PhoneControllerListener;JZZ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1131
    return-void
.end method

.method public onChangeLastOnlineSettingsReply(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChangeLastOnlineSettingsReply settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1229
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mSettingsListener:Lcom/viber/jni/settings/SettingsListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/settings/SettingsListener;->onChangeLastOnlineSettingsReply(II)V

    .line 1230
    return-void
.end method

.method public onChangeReadNotificationsSettingsReply(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChangeReadNotificationsSettingsReply settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mSettingsListener:Lcom/viber/jni/settings/SettingsListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/settings/SettingsListener;->onChangeReadNotificationsSettingsReply(II)V

    .line 1268
    return-void
.end method

.method public onChangeSettings(Z)V
    .locals 2
    .parameter

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChangeSettings isOk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 558
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$25;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$25;-><init>(Lcom/viber/jni/PhoneControllerListener;Z)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 565
    return-void
.end method

.method public onChangeSettingsReply(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChangeSettingsReply sequence="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " status = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v3, "settings_viber_in_syncing"

    invoke-interface {v0, v3, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 572
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/settings/j;->ap()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 575
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v4

    if-ne p2, v1, :cond_1

    :goto_0
    invoke-interface {v3, v4, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 576
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "settings_viber_in_syncing"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 579
    :cond_0
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$26;-><init>(Lcom/viber/jni/PhoneControllerListener;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 586
    return-void

    .line 575
    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onChangeUserActivitySettingsReply(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChangeUserActivitySettingsReply setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1926
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$92;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$92;-><init>(Lcom/viber/jni/PhoneControllerListener;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1932
    return-void
.end method

.method public onCommError(I)V
    .locals 2
    .parameter

    .prologue
    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCommError status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 647
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$30;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$30;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 654
    return-void
.end method

.method public onConnect()V
    .locals 3

    .prologue
    .line 212
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    const-string/jumbo v2, "onConnect"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mConnectionListener:Lcom/viber/jni/connection/ConnectionListener;

    invoke-virtual {v0}, Lcom/viber/jni/connection/ConnectionListener;->onConnect()V

    .line 214
    return-void
.end method

.method public onConnectionStateChange(I)V
    .locals 2
    .parameter

    .prologue
    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectionStateChange connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " describe:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/jni/PhoneControllerListener;->onConnectionStatesStr:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mConnectionListener:Lcom/viber/jni/connection/ConnectionListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/connection/ConnectionListener;->onConnectionStateChange(I)V

    .line 1202
    return-void
.end method

.method public onCreateGroupReply(IIJLjava/util/Map;)V
    .locals 7
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
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreateGroupReply status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notFoundMembers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 674
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$32;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerListener$32;-><init>(Lcom/viber/jni/PhoneControllerListener;IIJLjava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 681
    return-void
.end method

.method public onDataInterruption(Z)V
    .locals 2
    .parameter

    .prologue
    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDataInterruption: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerCallInterruptionListener:Lcom/viber/jni/dialer/DialerCallInterruptionListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/dialer/DialerCallInterruptionListener;->onDataInterruption(Z)V

    .line 993
    return-void
.end method

.method public onDebugInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    const/4 v0, 0x3

    invoke-static {v0, p2, p3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public onDownloadPtt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDownloadPtt downloadID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pttID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttDownloaderListener:Lcom/viber/jni/ptt/PttDownloaderListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/ptt/PttDownloaderListener;->onDownloadPtt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1395
    return-void
.end method

.method public onEncryptedPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEncryptedPhoneNumber encryptedPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1890
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$89;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$89;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1896
    return-void
.end method

.method public onFormattedMessageReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1816
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$87;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/viber/jni/PhoneControllerListener$87;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1822
    const/4 v0, 0x0

    return v0
.end method

.method public onGSMCallStateChanged(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGSMCallStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; active_call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 478
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$19;-><init>(Lcom/viber/jni/PhoneControllerListener;IZ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 485
    return-void
.end method

.method public onGSMStateChange(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 453
    const-string/jumbo v0, "onGSMStateChange "

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 454
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$17;-><init>(Lcom/viber/jni/PhoneControllerListener;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 460
    return-void
.end method

.method public onGetBillingToken(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGetBillingToken timeStamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1208
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$58;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerListener$58;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1215
    return-void
.end method

.method public onGetMissedCalls([Lcom/viber/jni/CMissedCall;)Z
    .locals 3
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    const-string/jumbo v2, "onGetMissedCalls"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$4;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$4;-><init>(Lcom/viber/jni/PhoneControllerListener;[Lcom/viber/jni/CMissedCall;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public onGetPublicGroupLikes(IIZJLjava/util/Map;I)V
    .locals 9
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
    .line 1737
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$82;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/viber/jni/PhoneControllerListener$82;-><init>(Lcom/viber/jni/PhoneControllerListener;IIZJLjava/util/Map;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1743
    return-void
.end method

.method public onGetPublicGroupMessages(IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1800
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$86;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerListener$86;-><init>(Lcom/viber/jni/PhoneControllerListener;IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1807
    return-void
.end method

.method public onGetRecentMessagesEnded(I)V
    .locals 2
    .parameter

    .prologue
    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGetRecentMessagesEnded status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1110
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$51;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$51;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1118
    return-void
.end method

.method public onGetUserActivity(Ljava/util/Map;I)V
    .locals 2
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
    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGetUserActivity seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1913
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$91;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$91;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/util/Map;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1919
    return-void
.end method

.method public onGetUserAppsReply([III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1948
    const-string/jumbo v0, "onGetUserAppsReply"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1949
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$94;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerListener$94;-><init>(Lcom/viber/jni/PhoneControllerListener;[III)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1955
    return-void
.end method

.method public onGetUsersDetail([Lcom/viber/jni/CGetUserDetails;)V
    .locals 2
    .parameter

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGetUsersDetail users.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", users = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 357
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$11;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$11;-><init>(Lcom/viber/jni/PhoneControllerListener;[Lcom/viber/jni/CGetUserDetails;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 364
    return-void
.end method

.method public onGroupAddMember(JLjava/lang/String;JI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1507
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$68;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerListener$68;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1513
    return-void
.end method

.method public onGroupAddMembers(JIJI[Ljava/lang/String;Ljava/util/Map;II)V
    .locals 12
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
    .line 1531
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$69;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/viber/jni/PhoneControllerListener$69;-><init>(Lcom/viber/jni/PhoneControllerListener;JIJI[Ljava/lang/String;Ljava/util/Map;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1537
    return-void
.end method

.method public onGroupChanged(JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)Z
    .locals 17
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
    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGroupChanged groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", phoneNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 779
    new-instance v2, Lcom/viber/jni/PhoneControllerListener$39;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    invoke-direct/range {v2 .. v16}, Lcom/viber/jni/PhoneControllerListener$39;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 788
    const/4 v2, 0x1

    return v2
.end method

.method public onGroupConversationUpdate(J)Z
    .locals 2
    .parameter

    .prologue
    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupConversationUpdate groupId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1161
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$55;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$55;-><init>(Lcom/viber/jni/PhoneControllerListener;J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupConversationUpdateReply(J)V
    .locals 2
    .parameter

    .prologue
    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupConversationUpdateReply groupId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1174
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$56;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$56;-><init>(Lcom/viber/jni/PhoneControllerListener;J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1181
    return-void
.end method

.method public onGroupInfo(IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGroupInfo groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", groupName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", members"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 751
    new-instance v1, Lcom/viber/jni/PhoneControllerListener$37;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/viber/jni/PhoneControllerListener$37;-><init>(Lcom/viber/jni/PhoneControllerListener;IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V

    invoke-virtual {p0, v1}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 758
    return-void
.end method

.method public onGroupLeave(JJI)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupLeave groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 764
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$38;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerListener$38;-><init>(Lcom/viber/jni/PhoneControllerListener;JJI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 771
    return-void
.end method

.method public onGroupMessageDelivered(JJLjava/lang/String;J)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupMessageDelivered groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deliveredTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 723
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$35;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/viber/jni/PhoneControllerListener$35;-><init>(Lcom/viber/jni/PhoneControllerListener;JJLjava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupUserIsTyping(JLjava/lang/String;ZIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupUserIsTyping groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fromNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",active:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 737
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$36;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerListener$36;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;ZIZ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 744
    return-void
.end method

.method public onHandleSelfDetails(JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OnHandleSelfDetails token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " DownloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1072
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$48;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerListener$48;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1078
    const/4 v0, 0x0

    return v0
.end method

.method public onHangup()V
    .locals 3

    .prologue
    .line 997
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    const-string/jumbo v2, "onHangup"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerLocalCallStateListener:Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->onHangup()V

    .line 999
    return-void
.end method

.method public onIsOnlineReply(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onIsOnlineReply phoneNumber= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Online="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1136
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$53;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$53;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1143
    return-void
.end method

.method public onIsRegistered(I)V
    .locals 4
    .parameter

    .prologue
    .line 218
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onIsRegistered status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$2;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$2;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 226
    return-void
.end method

.method public onIsRegisteredNumber(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 259
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onIsRegisteredNumber#toNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$5;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 268
    return-void
.end method

.method public onJoinPublicGroup(JII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onJoinPublicGroup: groupID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1556
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$71;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener$71;-><init>(Lcom/viber/jni/PhoneControllerListener;JII)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1562
    return-void
.end method

.method public onKeepaliveReply()V
    .locals 1

    .prologue
    .line 658
    const-string/jumbo v0, "onKeepaliveReply: STUB"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 659
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$31;

    invoke-direct {v0, p0}, Lcom/viber/jni/PhoneControllerListener$31;-><init>(Lcom/viber/jni/PhoneControllerListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 666
    return-void
.end method

.method public onLBServerTime(J)V
    .locals 1
    .parameter

    .prologue
    .line 393
    const-string/jumbo v0, "onLBServerTime "

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 394
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$13;-><init>(Lcom/viber/jni/PhoneControllerListener;J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 401
    return-void
.end method

.method public onLastOnline([Lcom/viber/jni/OnlineContactInfo;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLastOnline onlineContactInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mLastOnlineListener:Lcom/viber/jni/lastonline/LastOnlineListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/lastonline/LastOnlineListener;->onLastOnline([Lcom/viber/jni/OnlineContactInfo;I)V

    .line 1221
    return-void
.end method

.method public onLikePublicGroupMessage(JJIZIJI)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLikePublicGroupMessage: groupID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", messageToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", messageID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", like = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1569
    new-instance v2, Lcom/viber/jni/PhoneControllerListener$72;

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lcom/viber/jni/PhoneControllerListener$72;-><init>(Lcom/viber/jni/PhoneControllerListener;JJIZIJI)V

    invoke-virtual {p0, v2}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1576
    return-void
.end method

.method public onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
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
    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMediaReceived messageToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; fromNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; timeStamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; messageSeq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mediaType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; bucketName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; downloadID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 616
    new-instance v2, Lcom/viber/jni/PhoneControllerListener$28;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    invoke-direct/range {v2 .. v17}, Lcom/viber/jni/PhoneControllerListener$28;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 624
    const/4 v2, 0x0

    return v2
.end method

.method public onMediaReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 22
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
    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMediaReceivedFromGroup groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", groupName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 707
    new-instance v2, Lcom/viber/jni/PhoneControllerListener$34;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move/from16 v21, p18

    invoke-direct/range {v2 .. v21}, Lcom/viber/jni/PhoneControllerListener$34;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 715
    const/4 v2, 0x0

    return v2
.end method

.method public onMessageDelivered(JJII)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMessageDelivered messageToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; timeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; messageSeq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 531
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$23;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerListener$23;-><init>(Lcom/viber/jni/PhoneControllerListener;JJII)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageStateUpdate(JI)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMessageStateUpdate messageToken= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1148
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$54;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerListener$54;-><init>(Lcom/viber/jni/PhoneControllerListener;JI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1155
    const/4 v0, 0x0

    return v0
.end method

.method public onMuteGroupReply(JZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OnMuteGroupReply GroupID= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Mute= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IsOK= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 873
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$46;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener$46;-><init>(Lcom/viber/jni/PhoneControllerListener;JZZ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 879
    return-void
.end method

.method public onPeerBusy()V
    .locals 3

    .prologue
    .line 973
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    const-string/jumbo v2, "onPeerBusy"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerRemoteCallStateListener:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;->onPeerBusy()V

    .line 975
    return-void
.end method

.method public onPeerCapabilities(I)V
    .locals 3
    .parameter

    .prologue
    .line 985
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    const-string/jumbo v2, "onPeerCapabilities"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerRemoteCallStateListener:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;->onPeerCapabilities(I)V

    .line 987
    return-void
.end method

.method public onPeerRinging()V
    .locals 3

    .prologue
    .line 979
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    const-string/jumbo v2, "onPeerRinging"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerRemoteCallStateListener:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;->onPeerRinging()V

    .line 981
    return-void
.end method

.method public onPeerVideoEnded()I
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerVideoListener:Lcom/viber/jni/dialer/DialerVideoListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerVideoListener;->onPeerVideoEnded()I

    move-result v0

    return v0
.end method

.method public onPeerVideoEndedAck()I
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerVideoListener:Lcom/viber/jni/dialer/DialerVideoListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerVideoListener;->onPeerVideoEndedAck()I

    move-result v0

    return v0
.end method

.method public onPeerVideoStarted()I
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerVideoListener:Lcom/viber/jni/dialer/DialerVideoListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerVideoListener;->onPeerVideoStarted()I

    move-result v0

    return v0
.end method

.method public onPeerVideoStartedAck()I
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerVideoListener:Lcom/viber/jni/dialer/DialerVideoListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerVideoListener;->onPeerVideoStartedAck()I

    move-result v0

    return v0
.end method

.method public onPhoneStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPhoneStateChanged state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerPhoneStateListener:Lcom/viber/jni/dialer/DialerPhoneStateListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->onPhoneStateChanged(I)V

    .line 953
    return-void
.end method

.method public onPttBufferingStarted(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPttBufferingStarted pttID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttPlayerListener:Lcom/viber/jni/ptt/PttPlayerListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/ptt/PttPlayerListener;->onPttBufferingStarted(Ljava/lang/String;)V

    .line 1353
    return-void
.end method

.method public onPttBufferingStopped(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPttBufferingStopped pttID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttPlayerListener:Lcom/viber/jni/ptt/PttPlayerListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/ptt/PttPlayerListener;->onPttBufferingStopped(Ljava/lang/String;)V

    .line 1359
    return-void
.end method

.method public onPttDownloaded(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPttDownloaded downloadID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttDownloaderListener:Lcom/viber/jni/ptt/PttDownloaderListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/ptt/PttDownloaderListener;->onPttDownloaded(Ljava/lang/String;II)V

    .line 1401
    return-void
.end method

.method public onPttFirstChunkUploaded(Ljava/lang/String;JII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPttFirstChunkUploaded pttID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " objectID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uploadDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttUploaderListener:Lcom/viber/jni/ptt/PttUploaderListener;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/ptt/PttUploaderListener;->onPttFirstChunkUploaded(Ljava/lang/String;JII)V

    .line 1383
    return-void
.end method

.method public onPttPlayStopped(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPttPlayStopped pttID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttPlayerListener:Lcom/viber/jni/ptt/PttPlayerListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/ptt/PttPlayerListener;->onPttPlayStopped(Ljava/lang/String;I)V

    .line 1347
    return-void
.end method

.method public onPttReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 14
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
    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPttReceived token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " timeSent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " seq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " downloadID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uploadDuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " clientName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1366
    iget-object v2, p0, Lcom/viber/jni/PhoneControllerListener;->mPttReceiverListener:Lcom/viber/jni/ptt/PttReceiverListener;

    move-wide v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/viber/jni/ptt/PttReceiverListener;->onPttReceived(JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public onPttReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 17
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
    .line 1375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/jni/PhoneControllerListener;->mPttReceiverListener:Lcom/viber/jni/ptt/PttReceiverListener;

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    invoke-virtual/range {v1 .. v16}, Lcom/viber/jni/ptt/PttReceiverListener;->onPttReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public onPttRecordStopped(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPttRecordStopped pttID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttRecorderListener:Lcom/viber/jni/ptt/PttRecorderListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/ptt/PttRecorderListener;->onPttRecordStopped(Ljava/lang/String;I)V

    .line 1317
    return-void
.end method

.method public onPttUploaded(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPttUploaded pttID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttUploaderListener:Lcom/viber/jni/ptt/PttUploaderListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/ptt/PttUploaderListener;->onPttUploaded(Ljava/lang/String;II)V

    .line 1389
    return-void
.end method

.method public onPublicChatSupported(I)V
    .locals 1
    .parameter

    .prologue
    .line 1972
    const-string/jumbo v0, "onGetUserAppsReply"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1973
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$96;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$96;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1979
    return-void
.end method

.method public onPublicGroupChanged(JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
    .locals 25
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
    .line 1674
    new-instance v1, Lcom/viber/jni/PhoneControllerListener$78;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move/from16 v24, p22

    invoke-direct/range {v1 .. v24}, Lcom/viber/jni/PhoneControllerListener$78;-><init>(Lcom/viber/jni/PhoneControllerListener;JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1683
    const/4 v1, 0x0

    return v1
.end method

.method public onPublicGroupInfo(IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;IIIZI)V
    .locals 21
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
    .line 1631
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/jni/PhoneControllerListener;->mPublicGroupInfoReceiverListener:Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    invoke-virtual/range {v1 .. v20}, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;->onPublicGroupInfo(IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;IIIZI)V

    .line 1633
    return-void
.end method

.method public onPublicGroupInvite(JLjava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)Z
    .locals 14
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
    .line 1884
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPublicGroupInviteReceiveListener:Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;

    move-wide v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/viber/jni/publicgroup/PublicGroupInviteReceiveListener;->onPublicGroupInvite(JLjava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public onPublicGroupsUpdated([Lcom/viber/jni/PGLatestParams;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPublicGroupsUpdated: groupInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1639
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$76;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerListener$76;-><init>(Lcom/viber/jni/PhoneControllerListener;[Lcom/viber/jni/PGLatestParams;J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1646
    return-void
.end method

.method public onRecanonize(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRecanonize: newPhoneNumbner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1543
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$70;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$70;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1549
    return-void
.end method

.method public onRecoverGroups([Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1279
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$60;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerListener$60;-><init>(Lcom/viber/jni/PhoneControllerListener;[Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1286
    return-void
.end method

.method public onRegisteredNumbers(ZZLjava/util/Map;III)Z
    .locals 10
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
    .line 1235
    const/4 v5, 0x0

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/viber/jni/PhoneControllerListener;->onRegisteredNumbers(ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public onRegisteredNumbers(ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)Z
    .locals 11
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
    .line 274
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    const/4 v1, 0x4

    const-string/jumbo v2, "PhoneControllerListener"

    const-string/jumbo v3, "onRegisteredNumbers clearAll=%s, lastPortion=%s registeredNumbers=%s Seq=%d isJoin=%s joinedName=%s joinedSystem=%s ackSequence=%d"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x5

    aput-object p6, v4, v0

    const/4 v0, 0x6

    aput-object p7, v4, v0

    const/4 v0, 0x7

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$6;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/viber/jni/PhoneControllerListener$6;-><init>(Lcom/viber/jni/PhoneControllerListener;ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 288
    new-instance v0, Lcom/viber/logger/QaLogger$QaRegisteredNumbersEvent;

    invoke-direct {v0, p1, p3, p4}, Lcom/viber/logger/QaLogger$QaRegisteredNumbersEvent;-><init>(ZLjava/util/Map;I)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestCanceled(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1724
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$81;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$81;-><init>(Lcom/viber/jni/PhoneControllerListener;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1730
    return-void
.end method

.method public onSearchPublicGroups(I[Lcom/viber/jni/PublicGroupInfo;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1710
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$80;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerListener$80;-><init>(Lcom/viber/jni/PhoneControllerListener;I[Lcom/viber/jni/PublicGroupInfo;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1718
    return-void
.end method

.method public onSecondaryRegistered(JIII)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSecondaryRegistered: messageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " activationCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " deviceID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1608
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$75;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerListener$75;-><init>(Lcom/viber/jni/PhoneControllerListener;JIII)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1615
    const/4 v0, 0x0

    return v0
.end method

.method public onSecureCallStateChange(JI[BILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSecureCallStart ct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " peerCID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1843
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mSecureCallsListener:Lcom/viber/jni/secure/SecureCallsListener;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/viber/jni/secure/SecureCallsListener;->onSecureCallStateChange(JI[BILjava/lang/String;)V

    .line 1844
    return-void
.end method

.method public onSelfVideoEnded(I)V
    .locals 2
    .parameter

    .prologue
    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSelfVideoEnded reasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1902
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$90;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$90;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1908
    return-void
.end method

.method public onSendMessageReply(IJII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSendMessageReply seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; messageToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 517
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$22;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerListener$22;-><init>(Lcom/viber/jni/PhoneControllerListener;IJII)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 524
    return-void
.end method

.method public onSendPublicGroupInviteReply(IJILjava/util/Map;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSendPublicGroupInviteReply status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1875
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPublicGroupInviteSendListener:Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/publicgroup/PublicGroupInviteSendListener;->onSendPublicGroupInviteReply(IJILjava/util/Map;)V

    .line 1876
    return-void
.end method

.method public onSendTextReply(IJI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSendTextReply#messageToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$9;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener$9;-><init>(Lcom/viber/jni/PhoneControllerListener;IJI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 338
    return-void
.end method

.method public onServiceStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 465
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$18;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$18;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 472
    return-void
.end method

.method public onShareAddressBook()V
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    const-string/jumbo v2, "onShareAddressBook"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$1;

    invoke-direct {v0, p0}, Lcom/viber/jni/PhoneControllerListener$1;-><init>(Lcom/viber/jni/PhoneControllerListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 208
    return-void
.end method

.method public onShareAddressBookDone(Z)V
    .locals 2
    .parameter

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onShareAddressBookDone#isOk = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 309
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$8;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$8;-><init>(Lcom/viber/jni/PhoneControllerListener;Z)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 316
    return-void
.end method

.method public onShareAddressBookReply(ZII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    const/4 v0, 0x4

    const-string/jumbo v1, "PhoneControllerListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShareAddressBookReply#isOk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerListener$7;-><init>(Lcom/viber/jni/PhoneControllerListener;ZII)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 304
    return-void
.end method

.method public onShouldRegister()V
    .locals 1

    .prologue
    .line 379
    const-string/jumbo v0, "onShouldRegister "

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 381
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$12;

    invoke-direct {v0, p0}, Lcom/viber/jni/PhoneControllerListener$12;-><init>(Lcom/viber/jni/PhoneControllerListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 389
    return-void
.end method

.method public onSignal(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSignal stackTrace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getCrashHandler()Lcom/viber/error/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/error/a;->a(Ljava/lang/String;I)V

    .line 407
    return-void
.end method

.method public onStartPlayPttReply(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartPlayPttReply pttID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttPlayerListener:Lcom/viber/jni/ptt/PttPlayerListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/ptt/PttPlayerListener;->onStartPlayPttReply(Ljava/lang/String;I)V

    .line 1335
    return-void
.end method

.method public onStartPttIndicator()V
    .locals 1

    .prologue
    .line 1321
    const-string/jumbo v0, "onStartPttIndicator"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttRecorderListener:Lcom/viber/jni/ptt/PttRecorderListener;

    invoke-virtual {v0}, Lcom/viber/jni/ptt/PttRecorderListener;->onStartPttIndicator()V

    .line 1323
    return-void
.end method

.method public onStartRecordPttReply(ILjava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartRecordPttReply pttID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttRecorderListener:Lcom/viber/jni/ptt/PttRecorderListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/ptt/PttRecorderListener;->onStartRecordPttReply(ILjava/lang/String;I)V

    .line 1305
    return-void
.end method

.method public onStartRingback(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartRingback# toNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerRemoteCallStateListener:Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;->onStartRingback(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public onStopPlayPttReply(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopPlayPttReply pttID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttPlayerListener:Lcom/viber/jni/ptt/PttPlayerListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/ptt/PttPlayerListener;->onStopPlayPttReply(Ljava/lang/String;I)V

    .line 1341
    return-void
.end method

.method public onStopPttIndicator()V
    .locals 1

    .prologue
    .line 1327
    const-string/jumbo v0, "onStopPttIndicator"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttRecorderListener:Lcom/viber/jni/ptt/PttRecorderListener;

    invoke-virtual {v0}, Lcom/viber/jni/ptt/PttRecorderListener;->onStopPttIndicator()V

    .line 1329
    return-void
.end method

.method public onStopRecordPttReply(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopRecordPttReply pttID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mPttRecorderListener:Lcom/viber/jni/ptt/PttRecorderListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/ptt/PttRecorderListener;->onStopRecordPttReply(Ljava/lang/String;I)V

    .line 1311
    return-void
.end method

.method public onSyncConversation(Ljava/lang/String;JI)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncConversation peerNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lastMessageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1084
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$49;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener$49;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncConversationReply(Ljava/lang/String;JI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncConversationReply peerNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lastMessageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1097
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$50;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener$50;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1103
    return-void
.end method

.method public onSyncGroup(JJI)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncGroup GroupID= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lastMessageToken= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " flags= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 847
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$44;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerListener$44;-><init>(Lcom/viber/jni/PhoneControllerListener;JJI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncGroupReply(JJI)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncGroupReply GroupID= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lastMessageToken= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 834
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$43;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerListener$43;-><init>(Lcom/viber/jni/PhoneControllerListener;JJI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 842
    return-void
.end method

.method public onSyncMessageLike(JJIZJ)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncMessageLike: groupID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1582
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$73;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/viber/jni/PhoneControllerListener$73;-><init>(Lcom/viber/jni/PhoneControllerListener;JJIZJ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1588
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncMessages([J[J)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncMessages readToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " deletedTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1187
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$57;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$57;-><init>(Lcom/viber/jni/PhoneControllerListener;[J[J)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1193
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncMessagesReply(I[JI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncMessagesReply sequence= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tokens= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 822
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$42;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerListener$42;-><init>(Lcom/viber/jni/PhoneControllerListener;I[JI)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 829
    return-void
.end method

.method public onTextDelivered(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTextDelivered#serverToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeDelivered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 344
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$10;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener$10;-><init>(Lcom/viber/jni/PhoneControllerListener;JJ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 351
    return-void
.end method

.method public onTextReceived(JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)Z
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextReceived messageToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; fromNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/viber/voip/util/gj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; timeStamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; messageSeq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 596
    new-instance v2, Lcom/viber/jni/PhoneControllerListener$27;

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lcom/viber/jni/PhoneControllerListener$27;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 603
    const/4 v2, 0x0

    return v2
.end method

.method public onTextReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z
    .locals 18
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
    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextReceivedFromGroup groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", groupName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p7 .. p7}, Lcom/viber/voip/util/gj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 689
    new-instance v2, Lcom/viber/jni/PhoneControllerListener$33;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    invoke-direct/range {v2 .. v17}, Lcom/viber/jni/PhoneControllerListener$33;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 697
    const/4 v2, 0x0

    return v2
.end method

.method public onTransferFailed(I)V
    .locals 2
    .parameter

    .prologue
    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OnTransferFailed reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerTransferCall:Lcom/viber/jni/dialer/DialerTransferCallListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/dialer/DialerTransferCallListener;->onTransferFailed(I)V

    .line 1061
    return-void
.end method

.method public onTransferReplyOK(J)V
    .locals 2
    .parameter

    .prologue
    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTransferReplyOK transferToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerTransferCall:Lcom/viber/jni/dialer/DialerTransferCallListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/dialer/DialerTransferCallListener;->onTransferReplyOK(J)V

    .line 1067
    return-void
.end method

.method public onUnregisterAppReply(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1776
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$84;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/PhoneControllerListener$84;-><init>(Lcom/viber/jni/PhoneControllerListener;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1782
    return-void
.end method

.method public onUnregisteredNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnregisteredNumber number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 631
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$29;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$29;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 639
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdateBadgeReply(Z)V
    .locals 2
    .parameter

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdateBadgeReply isOk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 491
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$20;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$20;-><init>(Lcom/viber/jni/PhoneControllerListener;Z)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 498
    return-void
.end method

.method public onUpdateLanguage(I)V
    .locals 2
    .parameter

    .prologue
    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdateLanguage status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1829
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$88;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$88;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1835
    return-void
.end method

.method public onUpdateUserName(I)V
    .locals 2
    .parameter

    .prologue
    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdateUserName status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 808
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$41;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$41;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 815
    return-void
.end method

.method public onUpdateUserPhoto(I)V
    .locals 2
    .parameter

    .prologue
    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdateUserPhoto status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 795
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$40;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$40;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 802
    return-void
.end method

.method public onUserInfoChange(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OnUserInfoChange MessageToken= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ClientName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " PhotoDownloadID= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 885
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$47;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener$47;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 891
    return-void
.end method

.method public onUserIsTyping(Ljava/lang/String;ZIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserIsTyping fromNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 545
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$24;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerListener$24;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;ZIZ)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 552
    return-void
.end method

.method public onValidatePublicGroupUri(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1749
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$83;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerListener$83;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1756
    return-void
.end method

.method public onViberOutGroup(I)V
    .locals 2
    .parameter

    .prologue
    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onViberOutGroup voGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1489
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$67;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$67;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1495
    return-void
.end method

.method public onViberOutState(I)V
    .locals 2
    .parameter

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onViberOutState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1255
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$59;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$59;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1262
    return-void
.end method

.method public onVideoReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
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
    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVideoReceived messageToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1444
    new-instance v2, Lcom/viber/jni/PhoneControllerListener$64;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    invoke-direct/range {v2 .. v17}, Lcom/viber/jni/PhoneControllerListener$64;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1451
    const/4 v2, 0x0

    return v2
.end method

.method public onVideoReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 22
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
    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVideoReceivedFromGroup messageToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1462
    new-instance v2, Lcom/viber/jni/PhoneControllerListener$65;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move/from16 v21, p18

    invoke-direct/range {v2 .. v21}, Lcom/viber/jni/PhoneControllerListener$65;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1469
    const/4 v2, 0x0

    return v2
.end method

.method public onVoiceChannelStateChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVoiceChannelStateChange# arg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 442
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$16;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$16;-><init>(Lcom/viber/jni/PhoneControllerListener;Z)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 449
    return-void
.end method

.method public onWebNotification(JLjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1959
    const-string/jumbo v0, "onGetUserAppsReply"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1960
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$95;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/PhoneControllerListener$95;-><init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 1966
    const/4 v0, 0x0

    return v0
.end method

.method public peerHold()V
    .locals 1

    .prologue
    .line 1027
    const-string/jumbo v0, "peerHold"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerHoldStateListener:Lcom/viber/jni/dialer/DialerHoldStateListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerHoldStateListener;->peerHold()V

    .line 1029
    return-void
.end method

.method public peerUnhold()V
    .locals 1

    .prologue
    .line 1033
    const-string/jumbo v0, "peerUnhold"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerHoldStateListener:Lcom/viber/jni/dialer/DialerHoldStateListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerHoldStateListener;->peerUnhold()V

    .line 1035
    return-void
.end method

.method public playTone(I)V
    .locals 2
    .parameter

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playTone toneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$14;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$14;-><init>(Lcom/viber/jni/PhoneControllerListener;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 425
    return-void
.end method

.method public removeAllPersistentSecureValues(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 1866
    invoke-static {p1}, Lcom/viber/voip/ViberApplication;->preferences(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/settings/l;->a()Lcom/viber/voip/settings/l;

    .line 1867
    const/4 v0, 0x0

    return v0
.end method

.method public removeBadge(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeBadge phoneNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 504
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$21;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/PhoneControllerListener$21;-><init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 511
    return-void
.end method

.method public setPersistentSecureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1860
    invoke-static {p1}, Lcom/viber/voip/ViberApplication;->preferences(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 1861
    const/4 v0, 0x0

    return v0
.end method

.method public setPersistentValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1768
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 1769
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAutoAnswer()Z
    .locals 1

    .prologue
    .line 373
    const-string/jumbo v0, "shouldAutoAnswer "

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public showCall(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 916
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerOutgoingScreenListener:Lcom/viber/jni/dialer/DialerOutgoingScreenListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/jni/dialer/DialerOutgoingScreenListener;->showCall(Ljava/lang/String;ZZ)V

    .line 917
    return-void
.end method

.method public showCallBack(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 895
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerCallbackListener:Lcom/viber/jni/dialer/DialerCallbackListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/dialer/DialerCallbackListener;->showCallBack(II)V

    .line 896
    return-void
.end method

.method public showDialog(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 905
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerCallbackListener:Lcom/viber/jni/dialer/DialerCallbackListener;

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/dialer/DialerCallbackListener;->showDialog(ILjava/lang/String;)V

    .line 906
    return-void
.end method

.method public showEndCall()V
    .locals 1

    .prologue
    .line 926
    const-string/jumbo v0, "showEndCall"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerEndScreenListener:Lcom/viber/jni/dialer/DialerEndScreenListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerEndScreenListener;->showEndCall()V

    .line 928
    return-void
.end method

.method public showReception(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 939
    const-string/jumbo v0, "showReception"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerIncomingScreenListener:Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/jni/dialer/DialerIncomingScreenListener;->showReception(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 941
    return-void
.end method

.method public stopTone()V
    .locals 1

    .prologue
    .line 429
    const-string/jumbo v0, "stopTone "

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 430
    new-instance v0, Lcom/viber/jni/PhoneControllerListener$15;

    invoke-direct {v0, p0}, Lcom/viber/jni/PhoneControllerListener$15;-><init>(Lcom/viber/jni/PhoneControllerListener;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 437
    return-void
.end method

.method public switchToGSM(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 910
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerCallbackListener:Lcom/viber/jni/dialer/DialerCallbackListener;

    invoke-virtual {v0, p1}, Lcom/viber/jni/dialer/DialerCallbackListener;->switchToGSM(Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method public unmute()V
    .locals 1

    .prologue
    .line 1009
    const-string/jumbo v0, "unmute"

    invoke-direct {p0, v0}, Lcom/viber/jni/PhoneControllerListener;->logout(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener;->mDialerMuteStateListener:Lcom/viber/jni/dialer/DialerMuteStateListener;

    invoke-virtual {v0}, Lcom/viber/jni/dialer/DialerMuteStateListener;->unmute()V

    .line 1011
    return-void
.end method
