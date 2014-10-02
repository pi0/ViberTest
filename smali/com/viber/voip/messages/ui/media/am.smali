.class Lcom/viber/voip/messages/ui/media/am;
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
    .line 434
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/am;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/am;-><init>(Lcom/viber/voip/messages/ui/media/ai;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    .prologue
    .line 454
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/am;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 455
    const/4 v0, 0x0

    .line 465
    :cond_0
    :goto_0
    return v0

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/am;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/am;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "downloadId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->b(Ljava/lang/String;)Lcom/viber/voip/util/upload/z;

    move-result-object v1

    .line 459
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/am;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->i(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v0

    .line 460
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/viber/voip/util/upload/z;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/viber/voip/util/upload/z;->b:I

    if-eqz v2, :cond_0

    .line 461
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/viber/voip/util/upload/z;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget v0, v1, Lcom/viber/voip/util/upload/z;->b:I

    int-to-long v0, v0

    div-long v0, v2, v0

    long-to-int v0, v0

    goto :goto_0

    .line 465
    :cond_2
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/am;->a()I

    move-result v0

    .line 444
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/am;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->f(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 445
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/am;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->d(Lcom/viber/voip/messages/ui/media/ai;)Lcom/viber/voip/messages/ui/media/ap;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->f:Lcom/viber/voip/messages/ui/media/ap;

    if-eq v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/am;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->f(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/SeekBar;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/am;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->l(Lcom/viber/voip/messages/ui/media/ai;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/am;->a:Lcom/viber/voip/messages/ui/media/ai;

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->a:Lcom/viber/voip/messages/ui/media/ap;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/ap;)V

    .line 451
    :cond_0
    return-void
.end method
