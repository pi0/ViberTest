.class public Lcom/viber/voip/market/a/g;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/market/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/viber/voip/market/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/w;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p2, p0, Lcom/viber/voip/market/a/g;->b:Lcom/viber/voip/market/w;

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string/jumbo v1, "product_id"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bt;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const-class v2, Lcom/viber/voip/market/a/g;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/market/a/g;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    const-string/jumbo v0, "product_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bt;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bt;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/viber/voip/market/MarketApi;->a()Lcom/viber/voip/market/MarketApi;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/market/a/h;

    invoke-direct {v2, p0, p2}, Lcom/viber/voip/market/a/h;-><init>(Lcom/viber/voip/market/a/g;Lcom/viber/voip/process/b;)V

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/market/MarketApi;->a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/w;)V

    .line 43
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    const-string/jumbo v0, "product_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bt;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bt;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/viber/voip/market/v;->values()[Lcom/viber/voip/market/v;

    move-result-object v1

    const-string/jumbo v2, "product_status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 52
    iget-object v2, p0, Lcom/viber/voip/market/a/g;->b:Lcom/viber/voip/market/w;

    invoke-interface {v2, v0, v1}, Lcom/viber/voip/market/w;->a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/market/a/g;->a:Ljava/lang/String;

    const-string/jumbo v2, "processResult: ERROR: null result received!"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
