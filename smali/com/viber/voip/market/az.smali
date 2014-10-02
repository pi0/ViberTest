.class Lcom/viber/voip/market/az;
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
    .line 276
    iput-object p1, p0, Lcom/viber/voip/market/az;->b:Lcom/viber/voip/market/am;

    iput-object p2, p0, Lcom/viber/voip/market/az;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBarTitle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/az;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/viber/voip/market/az;->b:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v0}, Lcom/viber/voip/market/ak;->b(Lcom/viber/voip/market/ak;)Lcom/viber/voip/market/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/az;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/voip/market/bh;->b(Ljava/lang/String;)V

    .line 281
    return-void
.end method
