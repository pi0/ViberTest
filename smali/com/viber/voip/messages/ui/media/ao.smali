.class Lcom/viber/voip/messages/ui/media/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/ai;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/media/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ao;-><init>(Lcom/viber/voip/messages/ui/media/ai;)V

    return-void
.end method


# virtual methods
.method public a(JJ)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    .line 421
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 423
    div-long v0, p1, v2

    long-to-int v0, v0

    int-to-long v0, v0

    .line 424
    div-long v2, p3, v2

    long-to-int v2, v2

    int-to-long v2, v2

    .line 427
    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 386
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->i(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->j(Lcom/viber/voip/messages/ui/media/ai;)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->d(Lcom/viber/voip/messages/ui/media/ai;)Lcom/viber/voip/messages/ui/media/ap;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/ui/media/ap;->a:Lcom/viber/voip/messages/ui/media/ap;

    if-eq v1, v2, :cond_1

    .line 389
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    sget-object v2, Lcom/viber/voip/messages/ui/media/ap;->a:Lcom/viber/voip/messages/ui/media/ap;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/ap;)V

    .line 395
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;I)I

    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->i(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 398
    const-string/jumbo v0, "ProgressUpdater return"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Ljava/lang/String;)V

    .line 412
    :goto_1
    return-void

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->j(Lcom/viber/voip/messages/ui/media/ai;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->d(Lcom/viber/voip/messages/ui/media/ai;)Lcom/viber/voip/messages/ui/media/ap;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/ui/media/ap;->b:Lcom/viber/voip/messages/ui/media/ap;

    if-eq v1, v2, :cond_0

    .line 391
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    sget-object v2, Lcom/viber/voip/messages/ui/media/ap;->b:Lcom/viber/voip/messages/ui/media/ap;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/ap;)V

    .line 392
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/ai;->b()V

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->i(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 403
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->j(Lcom/viber/voip/messages/ui/media/ai;)I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/viber/voip/messages/ui/media/ao;->a(JJ)I

    move-result v0

    .line 408
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->f(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 409
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->f(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/SeekBar;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->k(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ao;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->j(Lcom/viber/voip/messages/ui/media/ai;)I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/util/hx;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
