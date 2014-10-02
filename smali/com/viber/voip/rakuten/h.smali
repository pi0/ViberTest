.class Lcom/viber/voip/rakuten/h;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/rakuten/a;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/viber/voip/rakuten/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-class v1, Lcom/viber/voip/rakuten/h;

    const/4 v2, 0x0

    invoke-super {p0, v0, v1, v2}, Lcom/viber/voip/process/c;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 136
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/l;->d()V

    .line 127
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    return-void
.end method
