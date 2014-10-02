.class Lcom/viber/voip/market/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/am;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/am;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/viber/voip/market/bb;->a:Lcom/viber/voip/market/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 301
    const-string/jumbo v0, "getClientInfo"

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/viber/voip/market/bb;->a:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;)Lcom/viber/voip/market/bk;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/market/bc;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/bc;-><init>(Lcom/viber/voip/market/bb;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/market/bk;->a(Lcom/viber/voip/market/q;)V

    .line 308
    return-void
.end method
