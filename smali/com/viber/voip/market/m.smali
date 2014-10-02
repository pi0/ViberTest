.class Lcom/viber/voip/market/m;
.super Lcom/viber/voip/process/a/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/market/MarketActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/MarketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/viber/voip/market/m;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-direct {p0}, Lcom/viber/voip/process/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/process/j;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 574
    if-eqz p1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/viber/voip/market/m;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->g(Lcom/viber/voip/market/MarketActivity;)Lcom/viber/voip/process/i;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/process/i;->a(Lcom/viber/voip/process/j;I)V

    .line 577
    :cond_0
    return-void
.end method
