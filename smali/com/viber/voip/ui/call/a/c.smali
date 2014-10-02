.class public Lcom/viber/voip/ui/call/a/c;
.super Lcom/viber/voip/ui/call/a/a;
.source "SourceFile"


# instance fields
.field public c:F

.field private d:Ljava/lang/String;

.field private e:Lcom/viber/voip/ui/call/a/b;

.field private f:[F

.field private g:[F

.field private h:I

.field private i:Z

.field private j:Z

.field private k:F


# direct methods
.method public constructor <init>(FF[F[F)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/ui/call/a/c;-><init>(FF[F[FLcom/viber/voip/ui/call/a/b;)V

    .line 23
    return-void
.end method

.method public constructor <init>(FF[F[FLcom/viber/voip/ui/call/a/b;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/call/a/a;-><init>(FF)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/ui/call/a/c;->d:Ljava/lang/String;

    .line 11
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/viber/voip/ui/call/a/c;->f:[F

    .line 12
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    .line 16
    iput-boolean v1, p0, Lcom/viber/voip/ui/call/a/c;->i:Z

    .line 17
    iput-boolean v1, p0, Lcom/viber/voip/ui/call/a/c;->j:Z

    .line 28
    iput-object p3, p0, Lcom/viber/voip/ui/call/a/c;->f:[F

    .line 29
    iput-object p4, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    .line 30
    iput-object p5, p0, Lcom/viber/voip/ui/call/a/c;->e:Lcom/viber/voip/ui/call/a/b;

    .line 31
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 35
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/a/c;->c()V

    .line 39
    :cond_0
    iget v0, p0, Lcom/viber/voip/ui/call/a/c;->a:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/viber/voip/ui/call/a/c;->b:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    .line 41
    const/4 v0, 0x0

    .line 42
    iget-boolean v2, p0, Lcom/viber/voip/ui/call/a/c;->i:Z

    if-nez v2, :cond_1

    .line 43
    iput-boolean v1, p0, Lcom/viber/voip/ui/call/a/c;->i:Z

    .line 44
    iget-object v2, p0, Lcom/viber/voip/ui/call/a/c;->e:Lcom/viber/voip/ui/call/a/b;

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/viber/voip/ui/call/a/c;->e:Lcom/viber/voip/ui/call/a/b;

    invoke-interface {v2, p1}, Lcom/viber/voip/ui/call/a/b;->b(F)V

    .line 53
    :cond_1
    :goto_0
    iget v2, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    iget-object v3, p0, Lcom/viber/voip/ui/call/a/c;->f:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/viber/voip/ui/call/a/c;->b(F)F

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/ui/call/a/c;->f:[F

    iget v4, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 54
    iget v2, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    .line 55
    iget v2, p0, Lcom/viber/voip/ui/call/a/c;->c:F

    iget-object v3, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    iget v4, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 60
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    iget v2, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    aget v0, v0, v2

    iput v0, p0, Lcom/viber/voip/ui/call/a/c;->c:F

    move v0, v1

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/ui/call/a/c;->e:Lcom/viber/voip/ui/call/a/b;

    if-eqz v2, :cond_1

    .line 68
    iget v2, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    if-lez v2, :cond_3

    .line 69
    iget-object v2, p0, Lcom/viber/voip/ui/call/a/c;->e:Lcom/viber/voip/ui/call/a/b;

    iget v3, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, p1, v3}, Lcom/viber/voip/ui/call/a/b;->b(FI)V

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/ui/call/a/c;->e:Lcom/viber/voip/ui/call/a/b;

    iget v3, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    invoke-interface {v2, p1, v3}, Lcom/viber/voip/ui/call/a/b;->a(FI)V

    goto :goto_0

    .line 76
    :cond_4
    if-nez v0, :cond_5

    iget v0, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    iget-object v1, p0, Lcom/viber/voip/ui/call/a/c;->f:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 77
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    iget v1, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    iget v2, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    iget v3, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/viber/voip/ui/call/a/c;->f:[F

    iget v3, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/viber/voip/ui/call/a/c;->f:[F

    iget v4, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p1}, Lcom/viber/voip/ui/call/a/c;->b(F)F

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/viber/voip/ui/call/a/c;->a(FFF)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/ui/call/a/c;->c:F

    .line 99
    :cond_5
    :goto_1
    return-void

    .line 83
    :cond_6
    iget v0, p0, Lcom/viber/voip/ui/call/a/c;->a:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_7

    iget v0, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    if-eqz v0, :cond_7

    .line 84
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/a/c;->c()V

    goto :goto_1

    .line 85
    :cond_7
    iget v0, p0, Lcom/viber/voip/ui/call/a/c;->b:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    array-length v0, v0

    if-lez v0, :cond_5

    .line 86
    iget-boolean v0, p0, Lcom/viber/voip/ui/call/a/c;->j:Z

    if-nez v0, :cond_8

    .line 87
    iput-boolean v1, p0, Lcom/viber/voip/ui/call/a/c;->j:Z

    .line 88
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/c;->e:Lcom/viber/voip/ui/call/a/b;

    if-eqz v0, :cond_8

    .line 89
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/c;->e:Lcom/viber/voip/ui/call/a/b;

    invoke-interface {v0, p1}, Lcom/viber/voip/ui/call/a/b;->c(F)V

    .line 92
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    iget-object v1, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/viber/voip/ui/call/a/c;->c:F

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/viber/voip/ui/call/a/c;->d:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 115
    iget v0, p0, Lcom/viber/voip/ui/call/a/c;->c:F

    iget-object v1, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    iget-object v2, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/ui/call/a/c;->h:I

    .line 104
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/c;->g:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/viber/voip/ui/call/a/c;->c:F

    .line 105
    iput-boolean v1, p0, Lcom/viber/voip/ui/call/a/c;->i:Z

    .line 106
    iput-boolean v1, p0, Lcom/viber/voip/ui/call/a/c;->j:Z

    .line 107
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/viber/voip/ui/call/a/c;->k:F

    iget v1, p0, Lcom/viber/voip/ui/call/a/c;->c:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
