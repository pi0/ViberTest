.class Lcom/viber/voip/phone/q;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/PhoneActivity;

.field private b:Lcom/viber/voip/phone/call/k;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/phone/call/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/viber/voip/phone/q;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/viber/voip/phone/q;->b:Lcom/viber/voip/phone/call/k;

    .line 122
    invoke-direct {p0}, Lcom/viber/voip/phone/q;->a()V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/q;)Lcom/viber/voip/phone/call/k;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/phone/q;->b:Lcom/viber/voip/phone/call/k;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/q;->c:Z

    .line 127
    iget-object v0, p0, Lcom/viber/voip/phone/q;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/q;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/q;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/phone/r;

    invoke-direct {v2, p0}, Lcom/viber/voip/phone/r;-><init>(Lcom/viber/voip/phone/q;)V

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    .line 136
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/q;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/viber/voip/phone/q;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/phone/q;)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/viber/voip/phone/q;->c:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/phone/q;->a:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v1, Lcom/viber/voip/phone/s;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/s;-><init>(Lcom/viber/voip/phone/q;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method
