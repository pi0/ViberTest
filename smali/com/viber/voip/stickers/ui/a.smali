.class public Lcom/viber/voip/stickers/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 23
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/stickers/ui/a;->d:Z

    .line 24
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getAvailableScreenWidthMeasurer()Lcom/viber/voip/ui/a;

    move-result-object v0

    .line 25
    iget-boolean v2, p0, Lcom/viber/voip/stickers/ui/a;->d:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/ui/a;->a()I

    move-result v0

    .line 28
    :goto_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/viber/voip/stickers/ui/a;->e:Z

    .line 29
    iget-boolean v2, p0, Lcom/viber/voip/stickers/ui/a;->e:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/viber/voip/stickers/ui/a;->d:Z

    if-nez v2, :cond_0

    .line 30
    int-to-float v0, v0

    invoke-static {p1}, Lcom/viber/voip/util/gl;->g(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/viber/voip/stickers/an;->d:F

    .line 36
    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/a;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/viber/voip/stickers/an;->c:F

    .line 39
    :goto_3
    int-to-float v4, v0

    mul-float/2addr v3, v4

    .line 40
    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 42
    add-float/2addr v0, v3

    iput v0, p0, Lcom/viber/voip/stickers/ui/a;->c:F

    .line 43
    const/high16 v0, 0x3f00

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/stickers/ui/a;->a:I

    .line 45
    iput v1, p0, Lcom/viber/voip/stickers/ui/a;->b:I

    .line 46
    return-void

    :cond_1
    move v0, v1

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v0}, Lcom/viber/voip/ui/a;->b()I

    move-result v0

    goto :goto_1

    .line 35
    :cond_3
    const v2, 0x3da3d70a

    goto :goto_2

    .line 36
    :cond_4
    const v3, 0x3c83126f

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/viber/voip/stickers/p;Z)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 96
    .line 97
    iget-object v3, p2, Lcom/viber/voip/stickers/p;->a:[Lcom/viber/voip/stickers/c/a;

    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 98
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/ui/a;->a(Lcom/viber/voip/stickers/c/a;)I

    move-result v5

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/ui/a;->d(Lcom/viber/voip/stickers/c/a;)I

    move-result v0

    add-int/2addr v0, v5

    .line 100
    if-le v0, v1, :cond_2

    .line 97
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/a;->c()I

    move-result v0

    add-int/2addr v0, v1

    .line 106
    if-eqz p3, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/a;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/viber/voip/stickers/c/a;)I
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/viber/voip/stickers/c/a;->g:I

    .line 67
    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/stickers/ui/a;->c:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 66
    :cond_0
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->i:I

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/viber/voip/stickers/ui/a;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/viber/voip/stickers/ui/a;->b:I

    return v0
.end method

.method public b(Lcom/viber/voip/stickers/c/a;)I
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/viber/voip/stickers/c/a;->f:I

    .line 72
    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/stickers/ui/a;->c:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 71
    :cond_0
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->h:I

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/viber/voip/stickers/ui/a;->a:I

    return v0
.end method

.method public c(Lcom/viber/voip/stickers/c/a;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/viber/voip/stickers/c/a;->l:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->n:I

    goto :goto_0
.end method

.method public d(Lcom/viber/voip/stickers/c/a;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/viber/voip/stickers/c/a;->m:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->o:I

    goto :goto_0
.end method
