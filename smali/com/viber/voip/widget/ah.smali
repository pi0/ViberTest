.class public Lcom/viber/voip/widget/ah;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/widget/ah;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget-object v0, Lcom/viber/voip/bb;->TintableImageView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/widget/ah;->a:Landroid/content/res/ColorStateList;

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/widget/ah;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/viber/voip/widget/ah;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/ah;->setColorFilter(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/widget/ah;->a:Landroid/content/res/ColorStateList;

    .line 56
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 39
    iget-object v0, p0, Lcom/viber/voip/widget/ah;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/viber/voip/widget/ah;->b()V

    .line 42
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/viber/voip/widget/ah;->a:Landroid/content/res/ColorStateList;

    .line 51
    invoke-direct {p0}, Lcom/viber/voip/widget/ah;->b()V

    .line 52
    return-void
.end method
