.class Lcom/viber/voip/market/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/market/am;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/am;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/viber/voip/market/av;->c:Lcom/viber/voip/market/am;

    iput-object p2, p0, Lcom/viber/voip/market/av;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/market/av;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/viber/voip/market/av;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/billing/bt;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bt;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadProduct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/market/av;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/viber/voip/market/av;->c:Lcom/viber/voip/market/am;

    iget-object v1, v1, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;)Lcom/viber/voip/market/bk;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/market/av;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/market/bk;->a(Lcom/viber/voip/billing/bt;Ljava/lang/String;)V

    .line 191
    return-void
.end method
