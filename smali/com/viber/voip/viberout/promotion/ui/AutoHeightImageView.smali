.class public Lcom/viber/voip/viberout/promotion/ui/AutoHeightImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 22
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/AutoHeightImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/AutoHeightImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 23
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/AutoHeightImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    .line 24
    invoke-virtual {p0}, Lcom/viber/voip/viberout/promotion/ui/AutoHeightImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/viberout/promotion/ui/AutoHeightImageView;->setMeasuredDimension(II)V

    .line 25
    return-void
.end method
