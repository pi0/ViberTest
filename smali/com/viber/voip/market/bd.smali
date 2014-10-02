.class Lcom/viber/voip/market/bd;
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
    .line 321
    iput-object p1, p0, Lcom/viber/voip/market/bd;->a:Lcom/viber/voip/market/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    const-string/jumbo v0, "getUserPublicGroups"

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/viber/voip/market/bd;->a:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;)Lcom/viber/voip/market/bk;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/market/be;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/be;-><init>(Lcom/viber/voip/market/bd;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/market/bk;->a(Lcom/viber/voip/market/s;)V

    .line 331
    return-void
.end method
