.class public Lcom/viber/voip/widget/RadioButton;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/viber/voip/widget/RadioButton;->a:Landroid/graphics/drawable/Drawable;

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/viber/voip/widget/RadioButton;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 46
    sparse-switch v1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    :goto_0
    return-void

    .line 48
    :sswitch_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/widget/RadioButton;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 50
    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 55
    :sswitch_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    invoke-virtual {p0}, Lcom/viber/voip/widget/RadioButton;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v0, v1, v0

    .line 57
    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iput-object p1, p0, Lcom/viber/voip/widget/RadioButton;->a:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method
