.class public Lcom/viber/voip/phone/b/c;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/phone/call/a;

.field private b:Lcom/viber/jni/dialer/DialerController;

.field private c:Lcom/viber/voip/sound/ISoundService;

.field private d:Lcom/viber/voip/registration/HardwareParameters;

.field private e:Lcom/viber/jni/PhoneControllerListener;

.field private f:Lcom/viber/voip/util/b/w;

.field private g:Lcom/viber/voip/util/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/c;Lcom/viber/voip/util/b/a/a;)Lcom/viber/voip/util/b/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/viber/voip/phone/b/c;->g:Lcom/viber/voip/util/b/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/c;)Lcom/viber/voip/util/b/w;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->f:Lcom/viber/voip/util/b/w;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/phone/b/c;)Lcom/viber/voip/util/b/a/a;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->g:Lcom/viber/voip/util/b/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/net/Uri;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Lcom/viber/voip/phone/b/d;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/viber/voip/phone/b/d;-><init>(Lcom/viber/voip/phone/b/c;Landroid/view/View;ILandroid/net/Uri;)V

    invoke-static {p1, v0}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public c()Lcom/viber/voip/phone/call/a;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->a:Lcom/viber/voip/phone/call/a;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/c;->a:Lcom/viber/voip/phone/call/a;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->a:Lcom/viber/voip/phone/call/a;

    return-object v0
.end method

.method public d()Lcom/viber/jni/dialer/DialerController;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->b:Lcom/viber/jni/dialer/DialerController;

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/c;->b:Lcom/viber/jni/dialer/DialerController;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->b:Lcom/viber/jni/dialer/DialerController;

    return-object v0
.end method

.method public e()Lcom/viber/voip/sound/ISoundService;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->c:Lcom/viber/voip/sound/ISoundService;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/c;->c:Lcom/viber/voip/sound/ISoundService;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->c:Lcom/viber/voip/sound/ISoundService;

    return-object v0
.end method

.method public f()Lcom/viber/voip/registration/HardwareParameters;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->d:Lcom/viber/voip/registration/HardwareParameters;

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/c;->d:Lcom/viber/voip/registration/HardwareParameters;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->d:Lcom/viber/voip/registration/HardwareParameters;

    return-object v0
.end method

.method public g()Lcom/viber/jni/PhoneControllerListener;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->e:Lcom/viber/jni/PhoneControllerListener;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/c;->e:Lcom/viber/jni/PhoneControllerListener;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/c;->e:Lcom/viber/jni/PhoneControllerListener;

    return-object v0
.end method

.method public h()Lcom/viber/voip/a/g;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/c;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/c;->f:Lcom/viber/voip/util/b/w;

    .line 48
    return-void
.end method
