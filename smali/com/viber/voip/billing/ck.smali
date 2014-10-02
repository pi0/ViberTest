.class Lcom/viber/voip/billing/ck;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/billing/cj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    const-string/jumbo v0, "success"

    sput-object v0, Lcom/viber/voip/billing/ck;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/viber/voip/billing/ck;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/cj;)V
    .locals 3
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/viber/voip/billing/ck;->b:Lcom/viber/voip/billing/cj;

    .line 249
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-class v1, Lcom/viber/voip/billing/ck;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/billing/ck;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 250
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/billing/cl;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/billing/cl;-><init>(Lcom/viber/voip/billing/ck;Lcom/viber/voip/process/b;)V

    invoke-static {v0, v1}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/cj;)V

    .line 262
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/viber/voip/billing/ck;->b:Lcom/viber/voip/billing/cj;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/viber/voip/billing/ck;->b:Lcom/viber/voip/billing/cj;

    sget-object v1, Lcom/viber/voip/billing/ck;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/cj;->a(Z)V

    .line 269
    :cond_0
    return-void
.end method
