.class public Lcom/viber/voip/phone/VideoCallTitleName;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/phone/VideoCallTitleName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object v0, Lcom/viber/voip/bb;->VideoCall:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/phone/VideoCallTitleName;->a:I

    .line 26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x10e

    const/16 v3, 0x5a

    const/4 v2, 0x0

    .line 40
    iget v0, p0, Lcom/viber/voip/phone/VideoCallTitleName;->a:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/viber/voip/phone/VideoCallTitleName;->a:I

    if-ne v0, v4, :cond_4

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallTitleName;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallTitleName;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallTitleName;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    iget v0, p0, Lcom/viber/voip/phone/VideoCallTitleName;->a:I

    if-ne v0, v3, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallTitleName;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallTitleName;->getCompoundPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallTitleName;->getExtendedPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallTitleName;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 65
    :goto_1
    return-void

    .line 50
    :cond_3
    iget v0, p0, Lcom/viber/voip/phone/VideoCallTitleName;->a:I

    if-ne v0, v4, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallTitleName;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    const/high16 v0, 0x4387

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 63
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/viber/voip/phone/VideoCallTitleName;->a:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/viber/voip/phone/VideoCallTitleName;->a:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 31
    :cond_0
    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallTitleName;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallTitleName;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/phone/VideoCallTitleName;->setMeasuredDimension(II)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0
.end method
