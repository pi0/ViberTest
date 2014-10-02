.class public Lcom/viber/voip/messages/ui/TimeFillView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private final c:F

.field private d:Lcom/viber/voip/ui/call/a/c;

.field private e:Lcom/viber/voip/ui/call/a/e;

.field private f:F

.field private g:Landroid/graphics/RectF;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->a:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->b:Landroid/graphics/Paint;

    .line 17
    const v0, 0x3f555555

    iput v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->c:F

    .line 20
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->d:Lcom/viber/voip/ui/call/a/c;

    .line 21
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0x7530

    iget-object v3, p0, Lcom/viber/voip/messages/ui/TimeFillView;->d:Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;-><init>(JLcom/viber/voip/ui/call/a/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->e:Lcom/viber/voip/ui/call/a/e;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->h:Z

    .line 31
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/TimeFillView;->a(Landroid/content/Context;)V

    .line 32
    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->a:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->b:Landroid/graphics/Paint;

    .line 17
    const v0, 0x3f555555

    iput v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->c:F

    .line 20
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->d:Lcom/viber/voip/ui/call/a/c;

    .line 21
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0x7530

    iget-object v3, p0, Lcom/viber/voip/messages/ui/TimeFillView;->d:Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;-><init>(JLcom/viber/voip/ui/call/a/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->e:Lcom/viber/voip/ui/call/a/e;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->h:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/TimeFillView;->a(Landroid/content/Context;)V

    .line 36
    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->a:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->b:Landroid/graphics/Paint;

    .line 17
    const v0, 0x3f555555

    iput v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->c:F

    .line 20
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->d:Lcom/viber/voip/ui/call/a/c;

    .line 21
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0x7530

    iget-object v3, p0, Lcom/viber/voip/messages/ui/TimeFillView;->d:Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;-><init>(JLcom/viber/voip/ui/call/a/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->e:Lcom/viber/voip/ui/call/a/e;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->h:Z

    .line 39
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/TimeFillView;->a(Landroid/content/Context;)V

    .line 40
    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->e:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/e;->c()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->h:Z

    .line 65
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TimeFillView;->postInvalidate()V

    .line 66
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/ui/TimeFillView;->setWillNotDraw(Z)V

    .line 43
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->e:Lcom/viber/voip/ui/call/a/e;

    sget v1, Lcom/viber/voip/ui/call/a/e;->b:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(I)V

    .line 44
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->g:Landroid/graphics/RectF;

    .line 48
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TimeFillView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x3f570a3d

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/TimeFillView;->setFillPercentage(F)V

    .line 51
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->h:Z

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/TimeFillView;->setFillPercentage(F)V

    .line 71
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->g:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TimeFillView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TimeFillView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 95
    iget-object v1, p0, Lcom/viber/voip/messages/ui/TimeFillView;->g:Landroid/graphics/RectF;

    const/high16 v3, 0x43b4

    iget-object v5, p0, Lcom/viber/voip/messages/ui/TimeFillView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 96
    iget-object v1, p0, Lcom/viber/voip/messages/ui/TimeFillView;->g:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c

    iget v3, p0, Lcom/viber/voip/messages/ui/TimeFillView;->f:F

    iget-object v5, p0, Lcom/viber/voip/messages/ui/TimeFillView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 97
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->h:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->e:Lcom/viber/voip/ui/call/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ui/call/a/e;->a(J)V

    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->d:Lcom/viber/voip/ui/call/a/c;

    iget v0, v0, Lcom/viber/voip/ui/call/a/c;->c:F

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/TimeFillView;->setFillPercentage(F)V

    .line 101
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 56
    return-void
.end method

.method public setFillPercentage(F)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 75
    const v0, 0x3f555555

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->a:Landroid/graphics/Paint;

    const v1, -0xc4d0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    :goto_0
    const/high16 v0, 0x43b4

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->f:F

    .line 81
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_2

    .line 82
    const-wide/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/TimeFillView;->postInvalidateDelayed(J)V

    .line 83
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->h:Z

    .line 89
    :cond_0
    :goto_1
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TimeFillView;->a:Landroid/graphics/Paint;

    const v1, -0x669a3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TimeFillView;->b()V

    goto :goto_1
.end method
