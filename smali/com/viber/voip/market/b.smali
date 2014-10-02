.class Lcom/viber/voip/market/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/MarketActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/MarketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/viber/voip/market/b;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/viber/voip/market/b;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->b(Lcom/viber/voip/market/MarketActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/market/b;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-virtual {v0}, Lcom/viber/voip/market/MarketActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
