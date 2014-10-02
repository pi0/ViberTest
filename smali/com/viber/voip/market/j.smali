.class Lcom/viber/voip/market/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/bi;

.field final synthetic b:Lcom/viber/voip/market/MarketActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/MarketActivity;Lcom/viber/voip/market/bi;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/viber/voip/market/j;->b:Lcom/viber/voip/market/MarketActivity;

    iput-object p2, p0, Lcom/viber/voip/market/j;->a:Lcom/viber/voip/market/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 439
    iget-object v1, p0, Lcom/viber/voip/market/j;->b:Lcom/viber/voip/market/MarketActivity;

    iget-object v0, p0, Lcom/viber/voip/market/j;->a:Lcom/viber/voip/market/bi;

    sget-object v2, Lcom/viber/voip/market/bi;->a:Lcom/viber/voip/market/bi;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/viber/voip/market/MarketActivity;->c(Lcom/viber/voip/market/MarketActivity;Z)V

    .line 440
    return-void

    .line 439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
