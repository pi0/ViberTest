.class Lcom/viber/voip/market/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/market/am;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/am;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/viber/voip/market/ba;->b:Lcom/viber/voip/market/am;

    iput p2, p0, Lcom/viber/voip/market/ba;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLoadingPageStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/market/ba;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/viber/voip/market/ba;->b:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v0}, Lcom/viber/voip/market/ak;->b(Lcom/viber/voip/market/ak;)Lcom/viber/voip/market/bh;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/market/bi;->values()[Lcom/viber/voip/market/bi;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/market/ba;->a:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/viber/voip/market/bh;->a(Lcom/viber/voip/market/bi;)V

    .line 292
    return-void
.end method
