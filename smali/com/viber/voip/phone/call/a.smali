.class public Lcom/viber/voip/phone/call/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerMuteState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;


# instance fields
.field private final a:Lcom/viber/voip/ViberApplication;

.field private final b:Lcom/viber/jni/dialer/DialerController;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/phone/call/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/viber/voip/phone/c;

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lcom/viber/jni/PhoneControllerDelegateAdapter;


# direct methods
.method public constructor <init>(Lcom/viber/voip/ViberApplication;Lcom/viber/jni/dialer/DialerController;Lcom/viber/jni/PhoneControllerListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/phone/call/a;->c:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/call/a;->f:Ljava/util/Map;

    .line 404
    new-instance v0, Lcom/viber/voip/phone/call/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/call/f;-><init>(Lcom/viber/voip/phone/call/a;)V

    iput-object v0, p0, Lcom/viber/voip/phone/call/a;->h:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    .line 80
    iput-object p1, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    .line 81
    iput-object p2, p0, Lcom/viber/voip/phone/call/a;->b:Lcom/viber/jni/dialer/DialerController;

    .line 83
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v0}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/viber/voip/phone/c;

    invoke-direct {v1, p2, v0}, Lcom/viber/voip/phone/c;-><init>(Lcom/viber/jni/dialer/DialerController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    .line 86
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getSecureCallsListener()Lcom/viber/jni/secure/SecureCallsListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/secure/SecureCallsListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 87
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerVideoListener()Lcom/viber/jni/dialer/DialerVideoListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerVideoListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 88
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerLocalCallStateListener()Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 89
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerRemoteCallStateListener()Lcom/viber/jni/dialer/DialerRemoteCallStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerRemoteCallStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 90
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 91
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerMuteStateListener()Lcom/viber/jni/dialer/DialerMuteStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerMuteStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 92
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerHoldStateListener()Lcom/viber/jni/dialer/DialerHoldStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerHoldStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 93
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerTransferCallListener()Lcom/viber/jni/dialer/DialerTransferCallListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerTransferCallListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 94
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerIncomingScreenListener()Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerIncomingScreenListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 95
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerOutgoingScreenListener()Lcom/viber/jni/dialer/DialerOutgoingScreenListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerOutgoingScreenListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 96
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerCallInterruptionListener()Lcom/viber/jni/dialer/DialerCallInterruptionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerCallInterruptionListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 97
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerCallbackListener()Lcom/viber/jni/dialer/DialerCallbackListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/dialer/DialerCallbackListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 99
    invoke-virtual {p1}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-interface {v1, v2}, Lcom/viber/voip/sound/ISoundService;->registerSpeakerStateListener(Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;)V

    .line 101
    sget-object v1, Lcom/viber/voip/dk;->f:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v1

    .line 102
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerLocalCallStateListener()Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 103
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerMuteStateListener()Lcom/viber/jni/dialer/DialerMuteStateListener;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/dialer/DialerMuteStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 104
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 105
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerCallbackListener()Lcom/viber/jni/dialer/DialerCallbackListener;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/dialer/DialerCallbackListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 106
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerIncomingScreenListener()Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/dialer/DialerIncomingScreenListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/viber/jni/PhoneControllerDelegate;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/phone/call/a;->h:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    aput-object v3, v0, v2

    invoke-virtual {p3, v0}, Lcom/viber/jni/PhoneControllerListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 111
    new-instance v0, Lcom/viber/voip/phone/call/a/e;

    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/viber/voip/phone/call/a/e;-><init>(Lcom/viber/voip/sound/ISoundService;)V

    .line 112
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerIncomingScreenListener()Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/viber/jni/dialer/DialerIncomingScreenListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 113
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/i;)Z

    .line 115
    new-instance v0, Lcom/viber/voip/phone/call/a/f;

    invoke-direct {v0, p1}, Lcom/viber/voip/phone/call/a/f;-><init>(Landroid/app/Application;)V

    .line 116
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerIncomingScreenListener()Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/viber/jni/dialer/DialerIncomingScreenListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 117
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerOutgoingScreenListener()Lcom/viber/jni/dialer/DialerOutgoingScreenListener;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/viber/jni/dialer/DialerOutgoingScreenListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 118
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/i;)Z

    .line 120
    new-instance v0, Lcom/viber/voip/phone/call/a/a;

    invoke-direct {v0}, Lcom/viber/voip/phone/call/a/a;-><init>()V

    .line 121
    invoke-virtual {p3}, Lcom/viber/jni/PhoneControllerListener;->getDialerLocalCallStateListener()Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 122
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/i;)Z

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/call/a;)Lcom/viber/jni/dialer/DialerController;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->b:Lcom/viber/jni/dialer/DialerController;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 285
    iget-object v1, p0, Lcom/viber/voip/phone/call/a;->f:Ljava/util/Map;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 287
    monitor-exit v1

    .line 288
    if-nez v0, :cond_1

    .line 292
    :cond_0
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 289
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 290
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/phone/call/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/call/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/call/a;Ljava/lang/String;Lcom/viber/voip/phone/call/l;IZZLjava/lang/String;ILcom/viber/voip/phone/call/i;)V
    .locals 0
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
    .line 60
    invoke-direct/range {p0 .. p8}, Lcom/viber/voip/phone/call/a;->a(Ljava/lang/String;Lcom/viber/voip/phone/call/l;IZZLjava/lang/String;ILcom/viber/voip/phone/call/i;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/viber/voip/phone/call/l;IZZLjava/lang/String;ILcom/viber/voip/phone/call/i;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    const/4 v1, 0x0

    .line 303
    if-eqz v0, :cond_2

    .line 304
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 305
    if-nez v1, :cond_0

    move-object v1, v0

    .line 307
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 308
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    :cond_1
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 316
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0370

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 319
    :goto_1
    const/4 v0, 0x1

    if-ne v0, p3, :cond_4

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v3, "viber_in_enabled"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 322
    :goto_2
    iget-object v3, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v3

    invoke-virtual {v3, p4, v0}, Lcom/viber/voip/phone/v;->a(ZZ)Landroid/net/Uri;

    move-result-object v3

    .line 323
    new-instance v4, Lcom/viber/voip/phone/call/CallerInfo;

    invoke-direct {v4, v2, p1, v1, v3}, Lcom/viber/voip/phone/call/CallerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/b/b;Landroid/net/Uri;)V

    .line 325
    sget-object v1, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    if-ne v1, p2, :cond_6

    .line 326
    iget-object v1, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v4, v0, p4}, Lcom/viber/voip/phone/c;->a(Lcom/viber/voip/phone/call/CallerInfo;IZ)Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 331
    :goto_4
    invoke-virtual {v0, p7}, Lcom/viber/voip/phone/call/k;->b(I)V

    .line 335
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/phone/call/a/d;

    invoke-direct {v2}, Lcom/viber/voip/phone/call/a/d;-><init>()V

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->addObserver(Ljava/util/Observer;)V

    .line 340
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    .line 342
    if-eqz p8, :cond_3

    .line 343
    invoke-interface {p8, v0}, Lcom/viber/voip/phone/call/i;->onCallInfoReady(Lcom/viber/voip/phone/call/k;)V

    .line 346
    :cond_3
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/call/a;->a(Lcom/viber/voip/phone/call/k;)V

    .line 347
    return-void

    .line 319
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 326
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 329
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0, v4, p5}, Lcom/viber/voip/phone/c;->a(Lcom/viber/voip/phone/call/CallerInfo;Z)Lcom/viber/voip/phone/call/k;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v2, v0

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    new-instance v1, Lcom/viber/voip/phone/call/b;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/viber/voip/phone/call/b;-><init>(Lcom/viber/voip/phone/call/a;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/viber/voip/phone/call/a;)Lcom/viber/voip/ViberApplication;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a;->e:Z

    .line 74
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->b:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleHangup()V

    .line 75
    return-void
.end method

.method public a(ILjava/lang/Runnable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->a()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->c()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 271
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/phone/call/a;->f:Ljava/util/Map;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 276
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, p0, Lcom/viber/voip/phone/call/a;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    .line 367
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/phone/call/a;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 368
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/call/i;

    .line 369
    invoke-interface {v0, p1}, Lcom/viber/voip/phone/call/i;->onCallInfoReady(Lcom/viber/voip/phone/call/k;)V

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lcom/viber/voip/phone/call/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleSpeaker() stateOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/call/a;->c(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v1}, Lcom/viber/voip/phone/c;->a()Lcom/viber/voip/phone/call/k;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->isSpeakerphoneAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->rejectSpeakerActiveState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->isSpeakerphoneOn()Z

    move-result v2

    if-eq p1, v2, :cond_1

    .line 381
    :cond_0
    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->setSpeakerphoneOn(Z)V

    .line 382
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/viber/voip/a/g;->b(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 383
    const-string/jumbo v0, "handleSpeaker() done"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/call/a;->c(Ljava/lang/String;)V

    .line 385
    :cond_1
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->a()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->a()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/viber/voip/phone/call/i;->onCallInfoReady(Lcom/viber/voip/phone/call/k;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/viber/voip/phone/call/k;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->a()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/viberout/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/viber/voip/phone/call/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    return-void
.end method

.method public b(Z)V
    .locals 7
    .parameter

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleCallTransfer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/call/a;->c(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->a()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 390
    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/viber/voip/phone/call/n;->i(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    .line 395
    if-eqz p1, :cond_1

    .line 396
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/g;->o()Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 401
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->b:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0, p1}, Lcom/viber/jni/dialer/DialerController;->handleTransfer(Z)V

    goto :goto_0

    .line 398
    :cond_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->w()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/a/g;->c(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1
.end method

.method public b(Lcom/viber/voip/phone/call/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/viber/voip/phone/call/k;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/viber/voip/phone/g;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->d()Lcom/viber/voip/phone/g;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setMicrophoneMute(Z)V

    .line 168
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->mute()V

    .line 169
    const-string/jumbo v0, "handleMute() done"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/call/a;->c(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setMicrophoneMute(Z)V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->unmute()V

    .line 175
    const-string/jumbo v0, "handleMute() done"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/call/a;->c(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->e()V

    .line 180
    return-void
.end method

.method public hideCallBack()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method public hideReception()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public mute()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setMicrophoneMute(Z)V

    .line 212
    return-void
.end method

.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    .line 194
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->c()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    const/4 v1, 0x3

    if-ne p5, v1, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v0

    div-long/2addr v0, v7

    .line 198
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    iget-boolean v3, p0, Lcom/viber/voip/phone/call/a;->e:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/a/g;->e(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 206
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a;->e:Z

    .line 207
    return-void

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/a/g;->f(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_2
    if-eqz v0, :cond_0

    const/16 v1, 0x9

    if-ne p5, v1, :cond_0

    .line 201
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->w()J

    move-result-wide v5

    sub-long/2addr v3, v5

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/a/g;->d(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1
.end method

.method public onCallStarted(Z)V
    .locals 0
    .parameter

    .prologue
    .line 486
    return-void
.end method

.method public onHangup()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 249
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->d:Lcom/viber/voip/phone/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/c;->a()Lcom/viber/voip/phone/call/k;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_1

    .line 252
    iget v0, p0, Lcom/viber/voip/phone/call/a;->g:I

    if-eq v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 254
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 255
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Locked"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/a/g;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 258
    :cond_0
    iput p1, p0, Lcom/viber/voip/phone/call/a;->g:I

    .line 261
    :cond_1
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/call/a;->a(I)V

    .line 262
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->d()V

    .line 263
    return-void

    .line 255
    :cond_2
    const-string/jumbo v0, "Unlocked"

    goto :goto_0
.end method

.method public showCallBack(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 468
    return-void
.end method

.method public showDialog(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 480
    return-void
.end method

.method public showReception(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v6, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    new-instance v0, Lcom/viber/voip/phone/call/d;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/phone/call/d;-><init>(Lcom/viber/voip/phone/call/a;Ljava/lang/String;IZLjava/lang/String;)V

    invoke-static {v6, p1, v0}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    .line 227
    return-void
.end method

.method public switchToGSM(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchToGSM number :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/call/a;->c(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    new-instance v1, Lcom/viber/voip/phone/call/e;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/phone/call/e;-><init>(Lcom/viber/voip/phone/call/a;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/phone/call/a;->a(ILjava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method public unmute()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/viber/voip/phone/call/a;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setMicrophoneMute(Z)V

    .line 217
    return-void
.end method
