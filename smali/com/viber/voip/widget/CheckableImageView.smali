.class public Lcom/viber/voip/widget/CheckableImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/CheckableImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/widget/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/CheckableImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 43
    sget-object v0, Lcom/viber/voip/bb;->CheckableImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/widget/CheckableImageView;->c:Landroid/graphics/drawable/Drawable;

    .line 46
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/CheckableImageView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/viber/voip/widget/CheckableImageView;->a:Z

    .line 51
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/viber/voip/widget/CheckableImageView;->b:Z

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->e:Landroid/graphics/Rect;

    .line 56
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 166
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v1, p0, Lcom/viber/voip/widget/CheckableImageView;->e:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    iget-object v1, p0, Lcom/viber/voip/widget/CheckableImageView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/viber/voip/widget/CheckableImageView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->c:Landroid/graphics/drawable/Drawable;

    .line 179
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getPaddingLeft()I

    move-result v1

    .line 180
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getPaddingTop()I

    move-result v2

    .line 181
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 182
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 185
    iget-object v5, p0, Lcom/viber/voip/widget/CheckableImageView;->e:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    iget-object v1, p0, Lcom/viber/voip/widget/CheckableImageView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 142
    invoke-direct {p0}, Lcom/viber/voip/widget/CheckableImageView;->b()V

    .line 143
    return-void
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/viber/voip/widget/CheckableImageView;->a:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 153
    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 154
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 155
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/viber/voip/widget/CheckableImageView;->b:Z

    .line 62
    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/CheckableImageView;->a(Landroid/graphics/Canvas;)V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-boolean v1, p0, Lcom/viber/voip/widget/CheckableImageView;->a:Z

    if-eqz v1, :cond_1

    .line 69
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/CheckableImageView;->b(Landroid/graphics/Canvas;)V

    .line 72
    :cond_1
    if-eqz v0, :cond_2

    .line 73
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/CheckableImageView;->a(Landroid/graphics/Canvas;)V

    .line 75
    :cond_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/viber/voip/widget/CheckableImageView;->a:Z

    .line 80
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->invalidate()V

    .line 81
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0
.end method

.method public setSelector(I)V
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/CheckableImageView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 100
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/CheckableImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 104
    invoke-direct {p0}, Lcom/viber/voip/widget/CheckableImageView;->b()V

    .line 105
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/viber/voip/widget/CheckableImageView;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/CheckableImageView;->setChecked(Z)V

    .line 91
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableImageView;->d:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
