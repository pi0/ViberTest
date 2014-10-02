.class public Lcom/viber/voip/messages/conversation/a/a/b/a/c;
.super Lcom/viber/voip/messages/conversation/a/a/b/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/a/a/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const v2, 0x7f02040c

    const v3, 0x7f0900a2

    .line 14
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;-><init>(Landroid/content/Context;)V

    .line 16
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->h:I

    .line 18
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->i:Landroid/content/res/ColorStateList;

    .line 23
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->q:I

    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->e:I

    .line 25
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->f:I

    .line 26
    iput v2, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->g:I

    .line 27
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->j:Landroid/graphics/drawable/Drawable;

    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->k:I

    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->l:I

    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->m:I

    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->n:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->o:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->p:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->a:I

    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02033c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->r:Landroid/graphics/drawable/Drawable;

    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->s:I

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->t:I

    .line 45
    const v0, 0x7f02001d

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->y:I

    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->z:I

    .line 48
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->g()V

    .line 49
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->h:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f0201e0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f0201e3

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->n:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;->y:I

    return v0
.end method
