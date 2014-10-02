.class public Lcom/viber/voip/messages/conversation/a/a/b/a/d;
.super Lcom/viber/voip/messages/conversation/a/a/b/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/a/a/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;-><init>(Landroid/content/Context;)V

    .line 17
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->h:I

    .line 19
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->i:Landroid/content/res/ColorStateList;

    .line 24
    iput v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->e:I

    .line 25
    iput v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->f:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->j:Landroid/graphics/drawable/Drawable;

    .line 27
    iput v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->g:I

    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->k:I

    .line 29
    iput v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->l:I

    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->m:I

    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->n:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->o:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->p:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->a:I

    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->q:I

    .line 37
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02033b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->r:Landroid/graphics/drawable/Drawable;

    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->s:I

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a015b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "00:00"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 43
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->t:I

    .line 45
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 46
    add-int/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->u:I

    .line 47
    const v0, 0x7f020006

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->y:I

    .line 48
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->z:I

    .line 50
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->g()V

    .line 51
    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "00:00 AM"

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->h:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->n:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;->y:I

    return v0
.end method
