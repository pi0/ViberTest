.class public Lcom/viber/voip/phone/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallInterruption;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerMuteState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;
.implements Lcom/viber/jni/secure/SecureCallsDelegate;
.implements Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;


# instance fields
.field private a:Lcom/viber/voip/phone/f;

.field private b:I

.field private volatile c:Lcom/viber/voip/phone/call/k;

.field private volatile d:Lcom/viber/voip/phone/call/k;

.field private volatile e:Lcom/viber/voip/phone/g;

.field private f:I

.field private g:Lcom/viber/jni/dialer/DialerController;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/viber/jni/dialer/DialerController;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/viber/voip/phone/g;

    invoke-direct {v0}, Lcom/viber/voip/phone/g;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/phone/c;->e:Lcom/viber/voip/phone/g;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/phone/c;->f:I

    .line 66
    iput-object p1, p0, Lcom/viber/voip/phone/c;->g:Lcom/viber/jni/dialer/DialerController;

    .line 67
    iput-object p2, p0, Lcom/viber/voip/phone/c;->h:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private a(Lcom/viber/voip/phone/call/k;)Lcom/viber/voip/phone/call/k;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 95
    iput-object v5, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 96
    iput-object v5, p0, Lcom/viber/voip/phone/c;->d:Lcom/viber/voip/phone/call/k;

    .line 97
    iget-object v0, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    invoke-static {v1}, Lcom/viber/voip/phone/f;->a(Lcom/viber/voip/phone/f;)I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    invoke-static {v2}, Lcom/viber/voip/phone/f;->b(Lcom/viber/voip/phone/f;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    invoke-static {v3}, Lcom/viber/voip/phone/f;->c(Lcom/viber/voip/phone/f;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    invoke-static {v4}, Lcom/viber/voip/phone/f;->d(Lcom/viber/voip/phone/f;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/phone/call/n;->a(I[BLjava/lang/String;I)Lcom/viber/voip/phone/call/n;

    .line 99
    iput-object v5, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/c;->b:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->a(I)Lcom/viber/voip/phone/call/n;

    .line 102
    return-object p1
.end method

.method public static f()Z
    .locals 4

    .prologue
    .line 437
    invoke-static {}, Lorg/webrtc/videoengine/ViEVideoSupport;->isVideoCallSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "0"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "sound_settings_video"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/viber/voip/phone/call/k;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    return-object v0
.end method

.method public a(Lcom/viber/voip/phone/call/CallerInfo;IZ)Lcom/viber/voip/phone/call/k;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/viber/voip/phone/call/k;

    invoke-direct {v0, p1, p2, p3}, Lcom/viber/voip/phone/call/k;-><init>(Lcom/viber/voip/phone/call/CallerInfo;IZ)V

    iput-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 90
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/c;->a(Lcom/viber/voip/phone/call/k;)Lcom/viber/voip/phone/call/k;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 91
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    return-object v0
.end method

.method public a(Lcom/viber/voip/phone/call/CallerInfo;Z)Lcom/viber/voip/phone/call/k;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/viber/voip/phone/call/k;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/phone/call/k;-><init>(Lcom/viber/voip/phone/call/CallerInfo;Z)V

    iput-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 78
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/c;->a(Lcom/viber/voip/phone/call/k;)Lcom/viber/voip/phone/call/k;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 79
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    return-object v0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 409
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/phone/c;->a(ILjava/lang/String;)V

    .line 410
    return-void
.end method

.method public b()Lcom/viber/voip/phone/call/k;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/c;->d:Lcom/viber/voip/phone/call/k;

    goto :goto_0
.end method

.method public c()Lcom/viber/voip/phone/call/n;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/viber/voip/phone/c;->a()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/viber/voip/phone/g;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/phone/c;->e:Lcom/viber/voip/phone/g;

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/viber/voip/phone/c;->e:Lcom/viber/voip/phone/g;

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-static {}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->getDevicesList()Ljava/util/List;

    move-result-object v0

    .line 424
    invoke-static {}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->getCurrentCaptureObject()Lorg/webrtc/videoengine/VideoCaptureAndroid;

    move-result-object v1

    .line 425
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 427
    invoke-static {v1, v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->getCaptureDeviceIndex(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/phone/c;->f:I

    .line 428
    iget v1, p0, Lcom/viber/voip/phone/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/viber/voip/phone/c;->f:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/viber/voip/phone/c;->f:I

    .line 429
    iget-object v1, p0, Lcom/viber/voip/phone/c;->g:Lcom/viber/jni/dialer/DialerController;

    iget v2, p0, Lcom/viber/voip/phone/c;->f:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/viber/jni/dialer/DialerController;->setCaptureDeviceName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideCall(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 401
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->A()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public hideCallBack()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public hideReception()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public localHold()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 303
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 304
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->a(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->b(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    .line 308
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/g;->f()Lcom/viber/voip/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_0
.end method

.method public localUnhold()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 314
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->C()Z

    move-result v1

    .line 318
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->b(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->a(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public mute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 343
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 344
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->f(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    .line 348
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/g;->a(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0
.end method

.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 392
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/phone/call/n;->a(J)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/viber/voip/phone/call/n;->b(I)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public onCallStarted(Z)V
    .locals 2
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 382
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->z()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public onDataInterruption(Z)V
    .locals 2
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 201
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/call/n;->d(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public onHangup()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public onHeadphonesConnected(Z)V
    .locals 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 129
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/phone/c;->h:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/phone/d;

    invoke-direct {v2, p0, v0, p1}, Lcom/viber/voip/phone/d;-><init>(Lcom/viber/voip/phone/c;Lcom/viber/voip/phone/call/k;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPeerBusy()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public onPeerCapabilities(I)V
    .locals 2
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 221
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/call/k;->a(I)I

    .line 225
    iget-object v1, p0, Lcom/viber/voip/phone/c;->e:Lcom/viber/voip/phone/g;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->n()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/g;->b(Z)V

    goto :goto_0
.end method

.method public onPeerRinging()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 211
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->c(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public onPeerVideoEnded()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 173
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 178
    :goto_0
    return v2

    .line 177
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/call/n;->e(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public onPeerVideoEndedAck()I
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoStarted()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 162
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return v2

    .line 166
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->e(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public onPeerVideoStartedAck()I
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public onPhoneStateChanged(I)V
    .locals 4
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 231
    iput p1, p0, Lcom/viber/voip/phone/c;->b:I

    .line 233
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    const/16 v1, 0xa

    if-ne v1, p1, :cond_3

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    iput-object v1, p0, Lcom/viber/voip/phone/c;->d:Lcom/viber/voip/phone/call/k;

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 242
    :cond_3
    const/4 v1, 0x2

    if-eq v1, p1, :cond_4

    const/4 v1, 0x3

    if-ne v1, p1, :cond_5

    .line 243
    :cond_4
    invoke-static {}, Lcom/viber/voip/phone/c;->f()Z

    move-result v1

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPhoneStateChanged() isVideoAvailable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/phone/c;->a(Ljava/lang/String;)V

    .line 245
    if-eqz v1, :cond_5

    .line 246
    iget-object v1, p0, Lcom/viber/voip/phone/c;->e:Lcom/viber/voip/phone/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/g;->a(Z)V

    .line 250
    :cond_5
    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/call/n;->a(I)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public onSecureCallStateChange(JI[BILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p6, p5}, Lcom/viber/voip/phone/call/n;->a(I[BLjava/lang/String;I)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    .line 368
    iput-object v1, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Lcom/viber/voip/phone/f;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/phone/f;-><init>(Lcom/viber/voip/phone/c;Lcom/viber/voip/phone/d;)V

    iput-object v0, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    .line 371
    iget-object v0, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    invoke-static {v0, p1, p2}, Lcom/viber/voip/phone/f;->a(Lcom/viber/voip/phone/f;J)J

    .line 372
    iget-object v0, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    invoke-static {v0, p3}, Lcom/viber/voip/phone/f;->a(Lcom/viber/voip/phone/f;I)I

    .line 373
    iget-object v0, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    invoke-static {v0, p4}, Lcom/viber/voip/phone/f;->a(Lcom/viber/voip/phone/f;[B)[B

    .line 374
    iget-object v0, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    invoke-static {v0, p6}, Lcom/viber/voip/phone/f;->a(Lcom/viber/voip/phone/f;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/viber/voip/phone/c;->a:Lcom/viber/voip/phone/f;

    invoke-static {v0, p5}, Lcom/viber/voip/phone/f;->b(Lcom/viber/voip/phone/f;I)I

    goto :goto_0
.end method

.method public onSpeakerStateChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 145
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/phone/c;->h:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/phone/e;

    invoke-direct {v2, p0, v0, p1}, Lcom/viber/voip/phone/e;-><init>(Lcom/viber/voip/phone/c;Lcom/viber/voip/phone/call/k;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/a/g;->b(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0
.end method

.method public onSpeakerStatePreChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 511
    return-void
.end method

.method public onStartRingback(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    return-void
.end method

.method public onTransferFailed(I)V
    .locals 3
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 276
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->i(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    .line 284
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 285
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/g;->p()Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0
.end method

.method public onTransferReplyOK(J)V
    .locals 3
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 258
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->v()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/phone/call/n;->b(J)Lcom/viber/voip/phone/call/n;

    .line 269
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public peerHold()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 323
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 324
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->b(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->j(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    .line 328
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/g;->g()Lcom/viber/voip/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_0
.end method

.method public peerUnhold()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 334
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->B()Z

    move-result v1

    .line 338
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->b(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->j(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public showCall(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    return-void
.end method

.method public showCallBack(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 295
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/call/n;->c(I)Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    goto :goto_0
.end method

.method public showDialog(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 501
    return-void
.end method

.method public showReception(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    return-void
.end method

.method public switchToGSM(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    return-void
.end method

.method public unmute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    .line 354
    iget-object v1, p0, Lcom/viber/voip/phone/c;->c:Lcom/viber/voip/phone/call/k;

    if-nez v1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->f(Z)Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->notifyObservers()V

    .line 358
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/g;->a(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0
.end method
