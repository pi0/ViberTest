.class final Lcom/viber/voip/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/dw;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/ViberApplication;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    const-string/jumbo v0, "onAppReady"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "ANIMATED_MESSAGES_ENABLED"

    invoke-interface {v0, v1, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    invoke-static {}, Lcom/viber/voip/k/a;->g()Lcom/viber/voip/k/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/k/a;->a(Z)V

    .line 75
    invoke-virtual {p1, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    .line 76
    new-array v1, v5, [Lcom/viber/jni/PhoneControllerDelegate;

    invoke-static {}, Lcom/viber/voip/k/a;->g()Lcom/viber/voip/k/a;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 77
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerEndScreenListener()Lcom/viber/jni/dialer/DialerEndScreenListener;

    move-result-object v1

    new-array v2, v5, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;

    invoke-static {}, Lcom/viber/voip/k/a;->g()Lcom/viber/voip/k/a;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/viber/jni/dialer/DialerEndScreenListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 78
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerLocalCallStateListener()Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    move-result-object v1

    new-array v2, v5, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;

    invoke-static {}, Lcom/viber/voip/k/a;->g()Lcom/viber/voip/k/a;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 79
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerIncomingScreenListener()Lcom/viber/jni/dialer/DialerIncomingScreenListener;

    move-result-object v0

    new-array v1, v5, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;

    invoke-static {}, Lcom/viber/voip/k/a;->g()Lcom/viber/voip/k/a;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerIncomingScreenListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 80
    return-void
.end method
