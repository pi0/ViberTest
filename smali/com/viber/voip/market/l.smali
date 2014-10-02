.class Lcom/viber/voip/market/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/process/i;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/MarketActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/MarketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/process/j;)V
    .locals 6
    .parameter

    .prologue
    .line 533
    iget v0, p1, Lcom/viber/voip/process/j;->a:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->f(Lcom/viber/voip/market/MarketActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v1}, Lcom/viber/voip/market/MarketActivity;->e(Lcom/viber/voip/market/MarketActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 535
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->b(Lcom/viber/voip/market/MarketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-virtual {v0}, Lcom/viber/voip/market/MarketActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    const v2, 0x7f0c05f6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/viber/voip/process/j;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "0 %"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/market/MarketActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/process/j;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 541
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->f(Lcom/viber/voip/market/MarketActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v1}, Lcom/viber/voip/market/MarketActivity;->e(Lcom/viber/voip/market/MarketActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 542
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->b(Lcom/viber/voip/market/MarketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/viber/voip/process/j;->a:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    const v1, 0x7f0c05f6

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/viber/voip/process/j;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/market/MarketActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-virtual {v1}, Lcom/viber/voip/market/MarketActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    const v1, 0x7f0c05f7

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/viber/voip/process/j;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/market/MarketActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(ZLcom/viber/voip/process/j;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->f(Lcom/viber/voip/market/MarketActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v1}, Lcom/viber/voip/market/MarketActivity;->e(Lcom/viber/voip/market/MarketActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 551
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->b(Lcom/viber/voip/market/MarketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p2, Lcom/viber/voip/process/j;->a:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-virtual {v0}, Lcom/viber/voip/market/MarketActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    const v2, 0x7f0c05f9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/viber/voip/process/j;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/market/MarketActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->f(Lcom/viber/voip/market/MarketActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v1}, Lcom/viber/voip/market/MarketActivity;->e(Lcom/viber/voip/market/MarketActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/process/j;)V
    .locals 6
    .parameter

    .prologue
    .line 558
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->f(Lcom/viber/voip/market/MarketActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v1}, Lcom/viber/voip/market/MarketActivity;->e(Lcom/viber/voip/market/MarketActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->b(Lcom/viber/voip/market/MarketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/viber/voip/process/j;->a:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-virtual {v0}, Lcom/viber/voip/market/MarketActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    const v2, 0x7f0c05f8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/viber/voip/process/j;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/market/MarketActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->f(Lcom/viber/voip/market/MarketActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/l;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v1}, Lcom/viber/voip/market/MarketActivity;->e(Lcom/viber/voip/market/MarketActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public c(Lcom/viber/voip/process/j;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    return-void
.end method
