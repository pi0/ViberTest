.class public Lcom/viber/voip/ui/call/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/call/a/d;
.implements Lcom/viber/voip/ui/call/a/f;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/Rect;

.field private c:[Lcom/viber/voip/ui/call/a/c;

.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;FFIFZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/viber/voip/ui/call/d;->d:Z

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/ui/call/d;->e:F

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/ui/call/d;->f:F

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/ui/call/d;->g:F

    .line 23
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/viber/voip/ui/call/d;->h:Z

    .line 34
    iput-object p1, p0, Lcom/viber/voip/ui/call/d;->a:Landroid/graphics/drawable/Drawable;

    .line 35
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/viber/voip/ui/call/d;->b:Landroid/graphics/Rect;

    .line 36
    move/from16 v0, p5

    invoke-virtual {p0, p2, p3, v0}, Lcom/viber/voip/ui/call/d;->a(FFF)V

    .line 37
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/viber/voip/ui/call/d;->h:Z

    .line 39
    new-array v1, p4, [Lcom/viber/voip/ui/call/a/c;

    iput-object v1, p0, Lcom/viber/voip/ui/call/d;->c:[Lcom/viber/voip/ui/call/a/c;

    .line 40
    const v2, 0x3dcccccd

    .line 41
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    .line 42
    const/high16 v3, 0x3f80

    sub-int v4, p4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    .line 43
    iget-object v4, p0, Lcom/viber/voip/ui/call/d;->c:[Lcom/viber/voip/ui/call/a/c;

    new-instance v5, Lcom/viber/voip/ui/call/a/c;

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x4

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    aput v3, v8, v9

    const/4 v9, 0x2

    const v10, 0x3d4ccccd

    add-float/2addr v3, v10

    aput v3, v8, v9

    const/4 v3, 0x3

    const/high16 v9, 0x3f80

    aput v9, v8, v3

    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[F)V

    aput-object v5, v4, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 43
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0xc8t 0x42t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x7ft 0x43t
    .end array-data
.end method


# virtual methods
.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/ui/call/d;->c:[Lcom/viber/voip/ui/call/a/c;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/viber/voip/ui/call/d;->c:[Lcom/viber/voip/ui/call/a/c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/viber/voip/ui/call/a/c;->a(F)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public a(FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/viber/voip/ui/call/d;->e:F

    .line 51
    iput p2, p0, Lcom/viber/voip/ui/call/d;->f:F

    .line 52
    iput p3, p0, Lcom/viber/voip/ui/call/d;->g:F

    .line 53
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/d;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 58
    :goto_0
    iget-boolean v1, p0, Lcom/viber/voip/ui/call/d;->h:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 59
    :goto_1
    iget-boolean v2, p0, Lcom/viber/voip/ui/call/d;->h:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/ui/call/d;->c:[Lcom/viber/voip/ui/call/a/c;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/viber/voip/ui/call/d;->h:Z

    if-nez v2, :cond_5

    if-ltz v0, :cond_5

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/ui/call/d;->b:Landroid/graphics/Rect;

    iget v3, p0, Lcom/viber/voip/ui/call/d;->e:F

    iget v4, p0, Lcom/viber/voip/ui/call/d;->g:F

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/viber/voip/ui/call/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr v4, v0

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/viber/voip/ui/call/d;->f:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 61
    iget-object v3, p0, Lcom/viber/voip/ui/call/d;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/viber/voip/ui/call/d;->c:[Lcom/viber/voip/ui/call/a/c;

    iget-boolean v2, p0, Lcom/viber/voip/ui/call/d;->h:Z

    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    aget-object v2, v4, v2

    iget v2, v2, Lcom/viber/voip/ui/call/a/c;->c:F

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 62
    iget-object v2, p0, Lcom/viber/voip/ui/call/d;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/viber/voip/ui/call/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 63
    iget-object v2, p0, Lcom/viber/voip/ui/call/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    add-int/2addr v0, v1

    goto :goto_1

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/ui/call/d;->c:[Lcom/viber/voip/ui/call/a/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 58
    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    .line 61
    :cond_4
    iget-object v2, p0, Lcom/viber/voip/ui/call/d;->c:[Lcom/viber/voip/ui/call/a/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    goto :goto_2

    .line 66
    :cond_5
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/viber/voip/ui/call/d;->d:Z

    .line 84
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/d;->d:Z

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/ui/call/d;->c:[Lcom/viber/voip/ui/call/a/c;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/viber/voip/ui/call/d;->c:[Lcom/viber/voip/ui/call/a/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/viber/voip/ui/call/a/c;->c()V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method
