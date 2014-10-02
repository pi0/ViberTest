.class public Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/call/sgs3/b;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Lcom/viber/voip/ui/call/d;

.field private c:Lcom/viber/voip/ui/call/d;

.field private d:Lcom/viber/voip/ui/call/sgs3/a;

.field private e:Lcom/viber/voip/ui/call/sgs3/a;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:F

.field private k:F

.field private l:I

.field private m:Lcom/viber/voip/ui/call/sgs3/c;

.field private n:Lcom/viber/voip/ui/call/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->l:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->a:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->setClickable(Z)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->setEnabled(Z)V

    .line 97
    new-instance v0, Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/ui/call/a/e;-><init>(J)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->n:Lcom/viber/voip/ui/call/a/e;

    .line 61
    sget-object v0, Lcom/viber/voip/bb;->WavesView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 65
    :try_start_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 67
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->f:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->g:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->h:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->i:Landroid/graphics/drawable/Drawable;

    .line 72
    const/high16 v0, 0x4180

    invoke-direct {p0, v0, v8}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->j:F

    .line 73
    new-instance v0, Lcom/viber/voip/ui/call/sgs3/a;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->h:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->j:F

    const v5, -0x44ff0100

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/call/sgs3/a;-><init>(Landroid/graphics/drawable/Drawable;FFFILcom/viber/voip/ui/call/sgs3/b;)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    .line 74
    new-instance v0, Lcom/viber/voip/ui/call/sgs3/a;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->i:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->j:F

    const/high16 v5, -0x4401

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/call/sgs3/a;-><init>(Landroid/graphics/drawable/Drawable;FFFILcom/viber/voip/ui/call/sgs3/b;)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    .line 76
    const/high16 v0, 0x4120

    invoke-direct {p0, v0, v8}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->k:F

    .line 77
    new-instance v0, Lcom/viber/voip/ui/call/d;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->f:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->l:I

    iget v5, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->k:F

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/call/d;-><init>(Landroid/graphics/drawable/Drawable;FFIFZ)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->b:Lcom/viber/voip/ui/call/d;

    .line 78
    new-instance v0, Lcom/viber/voip/ui/call/d;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->g:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->l:I

    iget v5, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->k:F

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/call/d;-><init>(Landroid/graphics/drawable/Drawable;FFIFZ)V

    iput-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->c:Lcom/viber/voip/ui/call/d;

    .line 79
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->n:Lcom/viber/voip/ui/call/a/e;

    sget v1, Lcom/viber/voip/ui/call/a/e;->a:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(I)V

    .line 80
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->n:Lcom/viber/voip/ui/call/a/e;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->b:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(Lcom/viber/voip/ui/call/a/d;)V

    .line 81
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->n:Lcom/viber/voip/ui/call/a/e;

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->c:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(Lcom/viber/voip/ui/call/a/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(FLandroid/util/DisplayMetrics;)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/ui/call/sgs3/a;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 182
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/sgs3/a;->a(Z)V

    .line 183
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->b:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/d;->a(Z)V

    .line 184
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/sgs3/a;->a(Z)V

    .line 185
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->c:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/d;->a(Z)V

    .line 186
    return-void
.end method

.method public a(Lcom/viber/voip/ui/call/sgs3/a;F)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v4, 0x3e99999a

    .line 190
    iget-object v3, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->b:Lcom/viber/voip/ui/call/d;

    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    if-ne p1, v0, :cond_0

    cmpg-float v0, p2, v4

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/viber/voip/ui/call/d;->a(Z)V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->c:Lcom/viber/voip/ui/call/d;

    iget-object v3, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    if-ne p1, v3, :cond_1

    cmpg-float v3, p2, v4

    if-gez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/d;->a(Z)V

    .line 192
    return-void

    :cond_0
    move v0, v2

    .line 190
    goto :goto_0

    :cond_1
    move v1, v2

    .line 191
    goto :goto_1
.end method

.method public b(Lcom/viber/voip/ui/call/sgs3/a;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    if-ne p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/call/sgs3/a;->a(Z)V

    .line 169
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->b:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/call/d;->a(Z)V

    .line 170
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/sgs3/a;->a(Z)V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->c:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/d;->a(Z)V

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/sgs3/a;->a(Z)V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->b:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/d;->a(Z)V

    .line 175
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/call/sgs3/a;->a(Z)V

    .line 176
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->c:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/call/d;->a(Z)V

    goto :goto_0
.end method

.method public c(Lcom/viber/voip/ui/call/sgs3/a;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->m:Lcom/viber/voip/ui/call/sgs3/c;

    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->m:Lcom/viber/voip/ui/call/sgs3/c;

    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/viber/voip/ui/call/sgs3/c;->a(I)V

    .line 199
    :cond_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 106
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->n:Lcom/viber/voip/ui/call/a/e;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ui/call/a/e;->a(J)V

    .line 108
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->b:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/d;->a(Landroid/graphics/Canvas;)V

    .line 109
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->c:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/d;->a(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/sgs3/a;->a(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/sgs3/a;->a(Landroid/graphics/Canvas;)V

    .line 135
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 115
    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->n:Lcom/viber/voip/ui/call/a/e;

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/ui/call/a/e;->a(J)V

    .line 116
    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/ui/call/sgs3/a;->a(J)V

    .line 117
    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/ui/call/sgs3/a;->a(J)V

    .line 119
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->c:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->c:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/d;->a(Landroid/graphics/Canvas;)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->b:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0}, Lcom/viber/voip/ui/call/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->b:Lcom/viber/voip/ui/call/d;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/d;->a(Landroid/graphics/Canvas;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/sgs3/a;->a(Landroid/graphics/Canvas;)V

    .line 128
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/call/sgs3/a;->a(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->invalidate()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v1}, Lcom/viber/voip/ui/call/sgs3/a;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 143
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v2}, Lcom/viber/voip/ui/call/sgs3/a;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 144
    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/ui/call/sgs3/a;->a(FF)V

    .line 145
    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->b:Lcom/viber/voip/ui/call/d;

    iget-object v3, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v3}, Lcom/viber/voip/ui/call/sgs3/a;->a()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->k:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->k:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/viber/voip/ui/call/d;->a(FFF)V

    .line 149
    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v2}, Lcom/viber/voip/ui/call/sgs3/a;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 150
    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/ui/call/sgs3/a;->a(FF)V

    .line 151
    iget-object v2, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->c:Lcom/viber/voip/ui/call/d;

    iget-object v3, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v3}, Lcom/viber/voip/ui/call/sgs3/a;->a()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->l:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->k:F

    iget v4, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->l:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->k:F

    invoke-virtual {v2, v1, v0, v3}, Lcom/viber/voip/ui/call/d;->a(FFF)V

    .line 154
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 155
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->d:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, p0, p1}, Lcom/viber/voip/ui/call/sgs3/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 160
    iget-object v0, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->e:Lcom/viber/voip/ui/call/sgs3/a;

    invoke-virtual {v0, p0, p1}, Lcom/viber/voip/ui/call/sgs3/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 162
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setTargetListener(Lcom/viber/voip/ui/call/sgs3/c;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->m:Lcom/viber/voip/ui/call/sgs3/c;

    .line 94
    return-void
.end method
