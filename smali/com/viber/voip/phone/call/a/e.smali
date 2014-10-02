.class public Lcom/viber/voip/phone/call/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;
.implements Lcom/viber/voip/phone/call/i;


# instance fields
.field private a:Z

.field private b:Lcom/viber/voip/phone/call/k;

.field private c:Lcom/viber/voip/sound/ISoundService;


# direct methods
.method public constructor <init>(Lcom/viber/voip/sound/ISoundService;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a/e;->a:Z

    .line 23
    iput-object p1, p0, Lcom/viber/voip/phone/call/a/e;->c:Lcom/viber/voip/sound/ISoundService;

    .line 24
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/e;->c:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lcom/viber/voip/phone/call/a/e;->c:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1, p1}, Lcom/viber/voip/sound/ISoundService;->getRingtone(Landroid/net/Uri;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 52
    return-void
.end method


# virtual methods
.method public hideReception()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a/e;->a:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/phone/call/a/e;->b:Lcom/viber/voip/phone/call/k;

    .line 47
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/e;->c:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stopRingtone()Z

    .line 48
    return-void
.end method

.method public onCallInfoReady(Lcom/viber/voip/phone/call/k;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/viber/voip/phone/call/a/e;->b:Lcom/viber/voip/phone/call/k;

    .line 29
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/a/e;->a:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/e;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/call/a/e;->a(Landroid/net/Uri;)V

    .line 32
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
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/call/a/e;->a:Z

    .line 38
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/e;->b:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/e;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/call/a/e;->a(Landroid/net/Uri;)V

    .line 41
    :cond_0
    return-void
.end method
