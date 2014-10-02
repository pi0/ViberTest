.class public Lcom/viber/voip/widget/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private final b:Landroid/graphics/Rect;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->b:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->c:I

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/CheckableRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/widget/CheckableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->b:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->c:I

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/CheckableRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 60
    sget-object v0, Lcom/viber/voip/bb;->CheckableRelativeLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    const/4 v1, -0x1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 66
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 68
    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->c:I

    .line 69
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    .line 77
    if-lez v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/viber/voip/widget/CheckableRelativeLayout;->setCheckVisible(Z)V

    .line 85
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableRelativeLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/widget/CheckableRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method

.method private setupCheckMarkLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    iget v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    .line 171
    :goto_0
    if-nez v0, :cond_1

    iget v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 172
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    :goto_1
    iget v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    .line 178
    :goto_2
    iget v3, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->c:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    .line 182
    :goto_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    iget v2, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->c:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 183
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    :goto_4
    return-void

    :cond_0
    move v0, v2

    .line 168
    goto :goto_0

    .line 174
    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 177
    goto :goto_2

    :cond_3
    move v1, v2

    .line 178
    goto :goto_3

    .line 184
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 185
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    .line 187
    :cond_5
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 158
    iget-object v2, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 148
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->getHitRect(Landroid/graphics/Rect;)V

    .line 149
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/viber/voip/widget/CheckableRelativeLayout;->setupCheckMarkLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 141
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 142
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 123
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-void
.end method

.method public setCheckMarkGravity(I)V
    .locals 1
    .parameter

    .prologue
    .line 126
    if-lez p1, :cond_0

    iget v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->c:I

    if-eq p1, v0, :cond_0

    .line 127
    iput p1, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->c:I

    .line 128
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableRelativeLayout;->requestLayout()V

    .line 130
    :cond_0
    return-void
.end method

.method public setCheckVisible(Z)V
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v1, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 111
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/viber/voip/widget/CheckableRelativeLayout;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/viber/voip/widget/CheckableRelativeLayout;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
