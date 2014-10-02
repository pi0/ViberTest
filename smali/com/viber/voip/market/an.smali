.class Lcom/viber/voip/market/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/market/am;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/am;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/viber/voip/market/an;->b:Lcom/viber/voip/market/am;

    iput-object p2, p0, Lcom/viber/voip/market/an;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/viber/voip/market/an;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/billing/bt;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bt;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProductStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/viber/voip/market/an;->b:Lcom/viber/voip/market/am;

    iget-object v1, v1, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;)Lcom/viber/voip/market/bk;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/market/ao;

    invoke-direct {v2, p0}, Lcom/viber/voip/market/ao;-><init>(Lcom/viber/voip/market/an;)V

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/market/bk;->a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/w;)V

    .line 174
    return-void
.end method
