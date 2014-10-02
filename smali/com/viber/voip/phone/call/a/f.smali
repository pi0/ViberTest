.class public Lcom/viber/voip/phone/call/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;
.implements Lcom/viber/voip/phone/call/i;


# instance fields
.field private a:Lcom/viber/voip/phone/call/a/h;

.field private b:Lcom/viber/voip/phone/call/k;

.field private c:Z

.field private d:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/viber/voip/phone/call/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/phone/call/a/h;-><init>(Lcom/viber/voip/phone/call/a/f;Lcom/viber/voip/phone/call/a/g;)V

    iput-object v0, p0, Lcom/viber/voip/phone/call/a/f;->a:Lcom/viber/voip/phone/call/a/h;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a/f;->c:Z

    .line 32
    iput-object p1, p0, Lcom/viber/voip/phone/call/a/f;->d:Landroid/app/Application;

    .line 33
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    :goto_0
    const v1, 0x10050004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/viber/voip/phone/call/a/f;->d:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void

    .line 41
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL_FROM_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/phone/call/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/viber/voip/phone/call/a/f;->a()V

    return-void
.end method


# virtual methods
.method public hideCall(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/phone/call/a/f;->b:Lcom/viber/voip/phone/call/k;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a/f;->c:Z

    .line 82
    return-void
.end method

.method public hideReception()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/f;->a:Lcom/viber/voip/phone/call/a/h;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a/h;->b()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/phone/call/a/f;->b:Lcom/viber/voip/phone/call/k;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a/f;->c:Z

    .line 67
    return-void
.end method

.method public onCallInfoReady(Lcom/viber/voip/phone/call/k;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/viber/voip/phone/call/a/f;->b:Lcom/viber/voip/phone/call/k;

    .line 88
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/a/f;->c:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/viber/voip/phone/call/a/f;->a()V

    .line 91
    :cond_0
    return-void
.end method

.method public showCall(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a/f;->c:Z

    .line 73
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/f;->b:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/viber/voip/phone/call/a/f;->a()V

    .line 76
    :cond_0
    return-void
.end method

.method public showReception(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/f;->a:Lcom/viber/voip/phone/call/a/h;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a/h;->a()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a/f;->c:Z

    .line 57
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/f;->b:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/viber/voip/phone/call/a/f;->a()V

    .line 60
    :cond_0
    return-void
.end method
