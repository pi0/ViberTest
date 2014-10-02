.class public Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/dt;


# instance fields
.field private a:Lcom/viber/voip/messages/ui/dv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/ui/dv;->a(Landroid/view/View;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/ui/dv;->a(Landroid/view/View;ZIIII)V

    .line 42
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 43
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/ui/dv;->b(Landroid/view/View;ZIIII)V

    .line 46
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    invoke-interface {v0, p0, p1, p2}, Lcom/viber/voip/messages/ui/dv;->b(Landroid/view/View;II)V

    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    invoke-interface {v0, p0, p1, p2}, Lcom/viber/voip/messages/ui/dv;->a(Landroid/view/View;II)V

    .line 35
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/messages/ui/dv;->a(Landroid/view/View;IIII)V

    .line 54
    :cond_0
    return-void
.end method

.method public setPositioningListener(Lcom/viber/voip/messages/ui/dv;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/voip/messages/ui/PositioningAwareLinearLayout;->a:Lcom/viber/voip/messages/ui/dv;

    .line 22
    return-void
.end method
