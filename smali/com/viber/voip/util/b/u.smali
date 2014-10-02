.class public Lcom/viber/voip/util/b/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/io/File;

.field public d:Landroid/graphics/Bitmap$CompressFormat;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    const/16 v0, 0x1400

    iput v0, p0, Lcom/viber/voip/util/b/u;->a:I

    .line 490
    const/high16 v0, 0xa0

    iput v0, p0, Lcom/viber/voip/util/b/u;->b:I

    .line 492
    invoke-static {}, Lcom/viber/voip/util/b/s;->f()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/u;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 493
    const/16 v0, 0x46

    iput v0, p0, Lcom/viber/voip/util/b/u;->e:I

    .line 494
    iput-boolean v1, p0, Lcom/viber/voip/util/b/u;->f:Z

    .line 495
    iput-boolean v1, p0, Lcom/viber/voip/util/b/u;->g:Z

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/util/b/u;->h:Z

    .line 508
    invoke-static {p1, p2}, Lcom/viber/voip/util/b/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/u;->c:Ljava/io/File;

    .line 509
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 525
    const v0, 0x3c23d70a

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setMemCacheSizePercent - percent must be between 0.01 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x4480

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/util/b/u;->a:I

    .line 530
    return-void
.end method
