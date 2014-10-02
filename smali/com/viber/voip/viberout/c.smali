.class Lcom/viber/voip/viberout/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/v;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/d;

.field final synthetic b:Lcom/viber/voip/viberout/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/a;Lcom/viber/voip/viberout/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/viber/voip/viberout/c;->b:Lcom/viber/voip/viberout/a;

    iput-object p2, p0, Lcom/viber/voip/viberout/c;->a:Lcom/viber/voip/viberout/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkPromoGrowUpgradeConditions: callLogsCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/a;->a(Ljava/lang/String;)V

    .line 325
    if-lez p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/viber/voip/viberout/c;->a:Lcom/viber/voip/viberout/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/viberout/d;->a(Z)V

    .line 330
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/viberout/c;->a:Lcom/viber/voip/viberout/d;

    iget-object v1, p0, Lcom/viber/voip/viberout/c;->b:Lcom/viber/voip/viberout/a;

    invoke-static {v1}, Lcom/viber/voip/viberout/a;->b(Lcom/viber/voip/viberout/a;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/viberout/d;->a(Z)V

    goto :goto_0
.end method
