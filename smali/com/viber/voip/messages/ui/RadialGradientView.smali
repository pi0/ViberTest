.class public Lcom/viber/voip/messages/ui/RadialGradientView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected a:I

.field private b:Landroid/graphics/Paint;

.field private final c:I

.field private final d:I

.field private final e:[I

.field private f:Lcom/viber/voip/ui/call/a/c;

.field private g:Lcom/viber/voip/ui/call/a/e;

.field private h:Lcom/viber/voip/ui/call/a/c;

.field private i:Lcom/viber/voip/ui/call/a/e;

.field private j:Z

.field private k:Z

.field private l:Landroid/graphics/RadialGradient;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/16 v5, 0x99

    const/16 v4, 0x77

    const/16 v3, 0x4f

    const/4 v6, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    .line 18
    const v0, -0x1188b067

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->c:I

    .line 19
    const v0, 0x774f99

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->d:I

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xfa

    invoke-static {v1, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0xfa

    invoke-static {v2, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xfa

    invoke-static {v1, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x3

    const/16 v2, 0x8c

    invoke-static {v2, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xa

    const/16 v3, 0xe2

    const/16 v4, 0xe2

    const/16 v5, 0xe2

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->e:[I

    .line 29
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x3

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->f:Lcom/viber/voip/ui/call/a/c;

    .line 30
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0x3e8

    iget-object v3, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->f:Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;-><init>(JLcom/viber/voip/ui/call/a/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->g:Lcom/viber/voip/ui/call/a/e;

    .line 32
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    new-array v3, v7, [F

    fill-array-data v3, :array_2

    new-array v4, v7, [F

    fill-array-data v4, :array_3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->h:Lcom/viber/voip/ui/call/a/c;

    .line 33
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0xc8

    iget-object v3, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->h:Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;-><init>(JLcom/viber/voip/ui/call/a/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->i:Lcom/viber/voip/ui/call/a/e;

    .line 35
    iput-boolean v6, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->j:Z

    .line 36
    iput-boolean v6, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->k:Z

    .line 38
    const/16 v0, 0x6e

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->a:I

    .line 46
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/RadialGradientView;->a(Landroid/content/Context;)V

    .line 47
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0xb8t 0x41t
        0x0t 0x0t 0x61t 0x43t
        0x0t 0x0t 0xb8t 0x41t
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0xdct 0x42t
        0x0t 0x0t 0xb8t 0x41t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/16 v5, 0x99

    const/16 v4, 0x77

    const/16 v3, 0x4f

    const/4 v6, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    .line 18
    const v0, -0x1188b067

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->c:I

    .line 19
    const v0, 0x774f99

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->d:I

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xfa

    invoke-static {v1, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0xfa

    invoke-static {v2, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xfa

    invoke-static {v1, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x3

    const/16 v2, 0x8c

    invoke-static {v2, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xa

    const/16 v3, 0xe2

    const/16 v4, 0xe2

    const/16 v5, 0xe2

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->e:[I

    .line 29
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x3

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->f:Lcom/viber/voip/ui/call/a/c;

    .line 30
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0x3e8

    iget-object v3, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->f:Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;-><init>(JLcom/viber/voip/ui/call/a/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->g:Lcom/viber/voip/ui/call/a/e;

    .line 32
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    new-array v3, v7, [F

    fill-array-data v3, :array_2

    new-array v4, v7, [F

    fill-array-data v4, :array_3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->h:Lcom/viber/voip/ui/call/a/c;

    .line 33
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0xc8

    iget-object v3, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->h:Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;-><init>(JLcom/viber/voip/ui/call/a/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->i:Lcom/viber/voip/ui/call/a/e;

    .line 35
    iput-boolean v6, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->j:Z

    .line 36
    iput-boolean v6, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->k:Z

    .line 38
    const/16 v0, 0x6e

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->a:I

    .line 51
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/RadialGradientView;->a(Landroid/content/Context;)V

    .line 52
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0xb8t 0x41t
        0x0t 0x0t 0x61t 0x43t
        0x0t 0x0t 0xb8t 0x41t
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0xdct 0x42t
        0x0t 0x0t 0xb8t 0x41t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/16 v5, 0x99

    const/16 v4, 0x77

    const/16 v3, 0x4f

    const/4 v6, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    .line 18
    const v0, -0x1188b067

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->c:I

    .line 19
    const v0, 0x774f99

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->d:I

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xfa

    invoke-static {v1, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0xfa

    invoke-static {v2, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xfa

    invoke-static {v1, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x3

    const/16 v2, 0x8c

    invoke-static {v2, v4, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xa

    const/16 v3, 0xe2

    const/16 v4, 0xe2

    const/16 v5, 0xe2

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->e:[I

    .line 29
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x3

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->f:Lcom/viber/voip/ui/call/a/c;

    .line 30
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0x3e8

    iget-object v3, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->f:Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;-><init>(JLcom/viber/voip/ui/call/a/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->g:Lcom/viber/voip/ui/call/a/e;

    .line 32
    new-instance v0, Lcom/viber/voip/ui/call/a/c;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    new-array v3, v7, [F

    fill-array-data v3, :array_2

    new-array v4, v7, [F

    fill-array-data v4, :array_3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->h:Lcom/viber/voip/ui/call/a/c;

    .line 33
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0xc8

    iget-object v3, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->h:Lcom/viber/voip/ui/call/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;-><init>(JLcom/viber/voip/ui/call/a/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->i:Lcom/viber/voip/ui/call/a/e;

    .line 35
    iput-boolean v6, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->j:Z

    .line 36
    iput-boolean v6, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->k:Z

    .line 38
    const/16 v0, 0x6e

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->a:I

    .line 56
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/RadialGradientView;->a(Landroid/content/Context;)V

    .line 57
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0xb8t 0x41t
        0x0t 0x0t 0x61t 0x43t
        0x0t 0x0t 0xb8t 0x41t
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0xdct 0x42t
        0x0t 0x0t 0xb8t 0x41t
    .end array-data
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    :goto_0
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/ui/RadialGradientView;->setWillNotDraw(Z)V

    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->g:Lcom/viber/voip/ui/call/a/e;

    sget v1, Lcom/viber/voip/ui/call/a/e;->a:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(I)V

    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->i:Lcom/viber/voip/ui/call/a/e;

    sget v1, Lcom/viber/voip/ui/call/a/e;->b:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(I)V

    .line 93
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->postInvalidate()V

    .line 94
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->j:Z

    .line 62
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->postInvalidate()V

    .line 63
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->j:Z

    .line 67
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->k:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->postInvalidate()V

    .line 72
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->m:I

    iget v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->n:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->m:I

    :goto_0
    div-int/lit8 v0, v0, 0x2

    .line 99
    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->l:Landroid/graphics/RadialGradient;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->m:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->n:I

    if-eq v1, v2, :cond_2

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->m:I

    .line 101
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->n:I

    .line 103
    iget v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->m:I

    iget v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->n:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->m:I

    :goto_1
    div-int/lit8 v7, v0, 0x2

    .line 104
    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v7

    div-float/2addr v1, v2

    sub-float v8, v0, v1

    .line 105
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->m:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->n:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, v7

    iget-object v4, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->e:[I

    const/4 v5, 0x6

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v9, 0x0

    aput v9, v5, v6

    const/4 v6, 0x1

    aput v8, v5, v6

    const/4 v6, 0x2

    const v9, 0x3c23d70a

    add-float/2addr v9, v8

    aput v9, v5, v6

    const/4 v6, 0x3

    const v9, 0x3d4ccccd

    add-float/2addr v9, v8

    aput v9, v5, v6

    const/4 v6, 0x4

    const v9, 0x3f7ae148

    aput v9, v5, v6

    const/4 v6, 0x5

    const/high16 v9, 0x3f80

    aput v9, v5, v6

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->l:Landroid/graphics/RadialGradient;

    .line 108
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 110
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; r:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4248

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    move v0, v7

    .line 117
    :cond_2
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->j:Z

    if-eqz v1, :cond_6

    .line 118
    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->g:Lcom/viber/voip/ui/call/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;->a(J)V

    .line 119
    const-wide/16 v1, 0x28

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/ui/RadialGradientView;->postInvalidateDelayed(J)V

    .line 130
    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 131
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->k:Z

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->i:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v1}, Lcom/viber/voip/ui/call/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->h:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/ui/call/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 133
    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->h:Lcom/viber/voip/ui/call/a/c;

    iget v2, v2, Lcom/viber/voip/ui/call/a/c;->c:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->i:Lcom/viber/voip/ui/call/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;->a(J)V

    .line 135
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/RadialGradientView;->postInvalidate()V

    .line 144
    :cond_3
    :goto_3
    iget v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->m:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->m:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    return-void

    .line 98
    :cond_4
    iget v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->n:I

    goto/16 :goto_0

    .line 103
    :cond_5
    iget v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->n:I

    goto/16 :goto_1

    .line 121
    :cond_6
    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->g:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v1}, Lcom/viber/voip/ui/call/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->f:Lcom/viber/voip/ui/call/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/ui/call/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 122
    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->g:Lcom/viber/voip/ui/call/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/ui/call/a/e;->a(J)V

    .line 123
    const-wide/16 v1, 0x28

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/ui/RadialGradientView;->postInvalidateDelayed(J)V

    goto :goto_2

    .line 126
    :cond_7
    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->g:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v1}, Lcom/viber/voip/ui/call/a/e;->c()V

    goto :goto_2

    .line 138
    :cond_8
    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->f:Lcom/viber/voip/ui/call/a/c;

    iget v2, v2, Lcom/viber/voip/ui/call/a/c;->c:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3
.end method

.method public setActive(Z)V
    .locals 3
    .parameter

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->k:Z

    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->l:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 156
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    const v1, -0x1188b067

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->i:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/a/e;->c()V

    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->i:Lcom/viber/voip/ui/call/a/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ui/call/a/e;->a(J)V

    .line 159
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/RadialGradientView;->postInvalidateDelayed(J)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 77
    if-eqz p1, :cond_0

    const/16 v0, 0x6e

    :goto_0
    iput v0, p0, Lcom/viber/voip/messages/ui/RadialGradientView;->a:I

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
